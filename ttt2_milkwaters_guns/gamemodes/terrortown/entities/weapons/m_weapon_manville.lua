if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= true
SWEP.AutoSpawnable			= true

if CLIENT then
   SWEP.PrintName			= "Akimbo Manville"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 2
   SWEP.SlotPos				= 2
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "Two shotguns at the same time. Are you perhaps compensating for something?"
   };
	SWEP.Icon               = "materials/milkwaters_icons/vgui/ttt/icon_manville.png"
end

SWEP.Kind					= WEAPON_HEAVY

SWEP.Primary.Damage         = 8
SWEP.HeadshotMultiplier     = 2
SWEP.Primary.Delay          = 0.2
SWEP.Primary.Recoil         = 12
SWEP.Primary.Cone           = 0.2
SWEP.Primary.Aimfocus      	= 0.50	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 500 	--50 units = ~1m
SWEP.Primary.MaxRange		= 1000 	--500 units = ~10m
SWEP.Primary.NumShots       = 12	--How many bullets do we shoot at once

SWEP.AmmoEnt 				= "item_box_buckshot_ttt"
SWEP.Primary.Ammo           = "Buckshot"
SWEP.Primary.ClipSize       = 20
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Automatic      = true

SWEP.SelectiveFire			= true

SWEP.Primary.Sound			= Sound("weapons/manville/elite-1.wav")

SWEP.RoundAim				= true --Crosshair or Circle?

SWEP.UseHands				= true
SWEP.ViewModelFlip			= false
SWEP.ViewModelFOV			= 80
SWEP.ViewModel				= "models/weapons/manville/v_pist_elite.mdl"	
SWEP.WorldModel				= "models/weapons/manville/w_pist_elite.mdl"
SWEP.HoldType				= "duel"

SWEP.IronSightsPos          = Vector(0, -2, 2)
SWEP.IronSightsAng          = Vector(0, 0, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)

SWEP.leftGunFiring = false

function SWEP:ShootBullet( penleft, dmg, recoil, numbul, cone, minrange, maxrange )
	if not IsFirstTimePredicted() then return end

	owner = self:GetOwner()
	numbul = numbul or 1
	cone   = cone   or 0.01
	dmg	  = dmg	   or 10
	
	-- code for shooting right gun then left gun, and so on
	if self.leftGunFiring then
		self:SendWeaponAnim(ACT_VM_SECONDARYATTACK)
	else
		self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	end
	
	-- toggle which gun is firing
	self.leftGunFiring = not self.leftGunFiring

	self.Owner:SetAnimation( PLAYER_ATTACK1 )

	local bullet = {}
	bullet.Num    = numbul
	bullet.Src    = self.Owner:GetShootPos()
	bullet.Dir    = self.Owner:GetAimVector()
	bullet.Spread = Vector( cone, cone, 0 )
	bullet.Tracer = (self.IsSilent and 0) or 1
	bullet.TracerName = "xmod_guntracer_dual"
	bullet.Force  = penleft / 5
	bullet.Damage = dmg
	bullet.Callback	= function(attacker, tracedata, dmginfo)
		dmginfo:SetDamage( self:RangeCallback( dmginfo:GetDamage(), tracedata, minrange, maxrange, 0 )  )
		return self:RicochetCallback(0, penleft, minrange, maxrange, 0, attacker, tracedata, dmginfo)
	end
	
	self.Owner:MuzzleFlash()
	owner:FireBullets( bullet )

	-- Owner can die after firebullets
	if not IsValid(owner) or owner:IsNPC() or not owner:Alive() then return end

	-- Recoil
	if SERVER and game.SinglePlayer()
	or CLIENT and not game.SinglePlayer() and IsFirstTimePredicted() 
	then
		self:ApplyRecoil(recoil)
	end
end