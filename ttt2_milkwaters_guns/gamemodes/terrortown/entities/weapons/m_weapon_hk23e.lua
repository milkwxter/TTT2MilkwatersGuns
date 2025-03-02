if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= true
SWEP.AutoSpawnable			= true

if CLIENT then
   SWEP.PrintName			= "H&K 23e"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 2
   SWEP.SlotPos				= 2
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "A highly accurate machine gun with a ton of bullets."
   };
	SWEP.Icon               = "materials/milkwaters_icons/vgui/ttt/icon_hk23e.png"
end

SWEP.Kind					= WEAPON_HEAVY

SWEP.Primary.Damage         = 16
SWEP.HeadshotMultiplier     = 1.6
SWEP.Primary.Delay          = 0.09
SWEP.Primary.Recoil         = 4
SWEP.Primary.Cone           = 0.2
SWEP.Primary.Aimfocus      	= 0.1	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 2000 	--50 units = ~1m
SWEP.Primary.MaxRange		= 5000 	--500 units = ~10m

SWEP.AmmoEnt 				= "None"
SWEP.Primary.Ammo           = "AirboatGun"
SWEP.Primary.ClipSize       = 100
SWEP.Primary.DefaultClip	= 100
SWEP.Primary.Automatic      = true

SWEP.SelectiveFire			= true

SWEP.Primary.Sound			= Sound("weapons/hk23e/m249-1.wav")	

SWEP.UseHands				= true
SWEP.ViewModelFlip			= false
SWEP.ViewModelFOV			= 80
SWEP.ViewModel				= "models/weapons/hk23e/v_mach_m249para.mdl"	
SWEP.WorldModel				= "models/weapons/hk23e/w_mach_m249para.mdl"
SWEP.HoldType				= "ar2"

SWEP.IronSightsPos          = Vector(-3.4, -4, 2)
SWEP.IronSightsAng          = Vector(0, 0, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)

SWEP.MovementPenalty		= 0.5