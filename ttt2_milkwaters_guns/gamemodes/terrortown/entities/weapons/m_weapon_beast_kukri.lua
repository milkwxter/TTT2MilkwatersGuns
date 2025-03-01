if( SERVER ) then
	AddCSLuaFile()
end

if( CLIENT ) then
	SWEP.PrintName = "Beast Kukri"
	SWEP.Slot = 0

	SWEP.DrawAmmo = false
	SWEP.Icon = "materials/milkwaters_icons/vgui/ttt/icon_beast_kukri.png"
end



SWEP.ViewModelFOV	= 80
SWEP.ViewModelFlip	= false

SWEP.Base				= "weapon_tttbase"

SWEP.Spawnable			= true

SWEP.Kind = WEAPON_MELEE
SWEP.WeaponID = AMMO_KNIFE

SWEP.ViewModel      = "models/weapons/beast_kukri/v_knife_t.mdl"
SWEP.WorldModel   	= "models/weapons/beast_kukri/w_knife_t.mdl"

SWEP.Primary.Sound				= Sound( "Weapon_Knife.Slash" )
SWEP.Primary.Delay				= 0.55
SWEP.Primary.Recoil				= 0
SWEP.Primary.Damage				= 28
SWEP.Primary.NumShots			= 1
SWEP.Primary.Cone				= 0
SWEP.Primary.ClipSize			= -1
SWEP.Primary.DefaultClip		= -1
SWEP.Primary.Automatic   		= true
SWEP.Primary.Ammo         		= "none"

SWEP.HeadshotMultiplier = 1.0
SWEP.AutoSpawnable = true

SWEP.NoSights                = true
SWEP.HoldType                = "knife"

function SWEP:Initialize()
	self.CanPrimary = true
	
	self.Hit = { 
	Sound( "weapons/rpg/shotdown.wav" )};
	self.FleshHit = {
  	Sound( "ambient/machines/slicer1.wav" ),
  	Sound( "ambient/machines/slicer2.wav" ),
	Sound( "ambient/machines/slicer3.wav" ),
  	Sound( "ambient/machines/slicer4.wav" ),	 } ;
end


function SWEP:Deploy()
	self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
	self:SetNextPrimaryFire(CurTime() + 0.7)
	self:SetNextSecondaryFire(CurTime() + 0.7)
	return true;
end

function SWEP:PrimaryAttack()
	self:MeleeAttacker()
end

function SWEP:MeleeAttacker()
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)

    local owner = self:GetOwner()
    if not IsValid(owner) then
        return
    end

    if isfunction(owner.LagCompensation) then -- for some reason not always true
        owner:LagCompensation(true)
    end

    local spos = owner:GetShootPos()
    local sdest = spos + owner:GetAimVector() * 100

    local tr_main = util.TraceLine({
        start = spos,
        endpos = sdest,
        filter = owner,
        mask = MASK_SHOT_HULL,
    })

    local hitEnt = tr_main.Entity


    if IsValid(hitEnt) or tr_main.HitWorld then
		if(hitEnt:IsPlayer() or hitEnt:IsNPC() or hitEnt:GetClass()=="prop_ragdoll") then
			self:EmitSound( self.FleshHit[math.random(1,#self.FleshHit)] )
			self:SendWeaponAnim(ACT_VM_HITCENTER)
		else			
			self:EmitSound( self.Hit[math.random(1,#self.Hit)] )
			self:SendWeaponAnim(ACT_VM_HITCENTER)
		end

        if SERVER or IsFirstTimePredicted() then
            local edata = EffectData()
            edata:SetStart(spos)
            edata:SetOrigin(tr_main.HitPos)
            edata:SetNormal(tr_main.Normal)
            edata:SetSurfaceProp(tr_main.SurfaceProps)
            edata:SetHitBox(tr_main.HitBox)
            --edata:SetDamageType(DMG_CLUB)
            edata:SetEntity(hitEnt)

            if hitEnt:IsPlayer() or hitEnt:GetClass() == "prop_ragdoll" then
                util.Effect("BloodImpact", edata)

                -- does not work on players rah
                --util.Decal("Blood", tr_main.HitPos + tr_main.HitNormal, tr_main.HitPos - tr_main.HitNormal)

                -- do a bullet just to make blood decals work sanely
                -- need to disable lagcomp because firebullets does its own
                owner:LagCompensation(false)
                owner:FireBullets({
                    Num = 1,
                    Src = spos,
                    Dir = owner:GetAimVector(),
                    Spread = Vector(0, 0, 0),
                    Tracer = 0,
                    Force = 1,
                    Damage = 0,
                })
            else
                util.Effect("Impact", edata)
            end
        end
    else
		self:EmitSound( "Weapon_Knife.Slash" )
        self:SendWeaponAnim(ACT_VM_HITCENTER)
    end

    if SERVER then
        owner:SetAnimation(PLAYER_ATTACK1)

        if IsValid(hitEnt) then
            local dmg = DamageInfo()
            dmg:SetDamage(self.Primary.Damage)
            dmg:SetAttacker(owner)
            dmg:SetInflictor(self)
            dmg:SetDamageForce(owner:GetAimVector() * 1500)
            dmg:SetDamagePosition(owner:GetPos())
            dmg:SetDamageType(DMG_CLUB)

            hitEnt:DispatchTraceAttack(dmg, spos + owner:GetAimVector() * 3, sdest)        
        end
    end

    if isfunction(owner.LagCompensation) then
        owner:LagCompensation(false)
    end
end