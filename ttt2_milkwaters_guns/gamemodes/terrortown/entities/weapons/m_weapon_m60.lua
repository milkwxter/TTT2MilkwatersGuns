if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= true
SWEP.AutoSpawnable			= true

if CLIENT then
   SWEP.PrintName			= "M60 MG"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 2
   SWEP.SlotPos				= 2
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "A big ass gun."
   };
	SWEP.Icon               = "materials/milkwaters_icons/vgui/ttt/icon_m60.png"
end

SWEP.Kind					= WEAPON_HEAVY

SWEP.Primary.Damage         = 23
SWEP.HeadshotMultiplier     = 2.0
SWEP.Primary.Delay          = 0.12
SWEP.Primary.Recoil         = 6
SWEP.Primary.Cone           = 0.3
SWEP.Primary.Aimfocus      	= 0.2	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 2000 	--50 units = ~1m
SWEP.Primary.MaxRange		= 5000 	--500 units = ~10m

SWEP.AmmoEnt 				= "None"
SWEP.Primary.Ammo           = "AirboatGun"
SWEP.Primary.ClipSize       = 200
SWEP.Primary.DefaultClip	= 200
SWEP.Primary.Automatic      = true

SWEP.SelectiveFire			= true

SWEP.Primary.Sound			= Sound("weapons/m60/m249-1.wav")	

SWEP.UseHands				= true
SWEP.ViewModelFlip			= false
SWEP.ViewModelFOV			= 80
SWEP.ViewModel				= "models/weapons/m60/v_mach_m249para.mdl"	
SWEP.WorldModel				= "models/weapons/m60/w_mach_m249para.mdl"
SWEP.HoldType				= "ar2"

SWEP.IronSightsPos          = Vector(-5.4, -5, 2)
SWEP.IronSightsAng          = Vector(0, 0, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)