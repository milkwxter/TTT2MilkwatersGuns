if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= true
SWEP.AutoSpawnable			= true

if CLIENT then
   SWEP.PrintName			= "M29 Satan Deux"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 1
   SWEP.SlotPos				= 1
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "A massive fucking revolver. Careful now..."
   };
	SWEP.Icon               = "materials/milkwaters_icons/vgui/ttt/icon_m29_satan.png"
end

SWEP.Kind					= WEAPON_PISTOL

SWEP.Primary.Damage         = 64
SWEP.HeadshotMultiplier     = 2.5
SWEP.Primary.Delay          = 0.9
SWEP.Primary.Recoil         = 50
SWEP.Primary.Cone           = 0.2
SWEP.Primary.Aimfocus      	= 0.2	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 1000 	--50 units = ~1m
SWEP.Primary.MaxRange		= 4000 	--500 units = ~10m

SWEP.AmmoEnt 				= "item_ammo_revolver_ttt"
SWEP.Primary.Ammo           = "AlyxGun"
SWEP.Primary.ClipSize       = 6
SWEP.Primary.DefaultClip	= 6
SWEP.Primary.Automatic      = false

SWEP.SelectiveFire			= false

SWEP.Primary.Sound			= Sound("weapons/m29_satan/deagle-1.wav")	

SWEP.UseHands				= true
SWEP.ViewModelFlip			= true
SWEP.ViewModelFOV			= 70
SWEP.ViewModel				= "models/weapons/m29_satan/v_pist_deagle.mdl"	
SWEP.WorldModel				= "models/weapons/m29_satan/w_pist_deagle.mdl"
SWEP.HoldType				= "pistol"

SWEP.IronSightsPos          = Vector(2.29, 2, 1.2)
SWEP.IronSightsAng          = Vector(0, 0, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)

SWEP.MovementPenalty		= 1

function SWEP:PrimaryAttack(worldsnd)
	local owner = self:GetOwner()

    if not IsValid(owner) then return end

    -- jump backwards
	if owner:GetActiveWeapon():Clip1() > 0 then
		local force = 500
		local backward = -owner:GetAimVector() * force
		owner:SetVelocity(owner:GetVelocity() + backward)
	end
	
	-- primary attack
	self:PrimAttacker()
end