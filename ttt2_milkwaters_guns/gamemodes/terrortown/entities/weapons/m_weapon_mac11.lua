if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= true
SWEP.AutoSpawnable			= true

if CLIENT then
   SWEP.PrintName			= "Ingram MAC-11"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 2
   SWEP.SlotPos				= 2
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "A machine pistol."
   };
	SWEP.Icon                       = "materials/milkwaters_icons/vgui/ttt/icon_mac11.png"
end

SWEP.Kind					= WEAPON_HEAVY

SWEP.Primary.Damage         = 13
SWEP.HeadshotMultiplier     = 2
SWEP.Primary.Delay          = 0.07
SWEP.Primary.Recoil         = 2.1
SWEP.Primary.Cone           = 0.11
SWEP.Primary.Aimfocus      	= 0.5	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 1000 	--50 units = ~1m
SWEP.Primary.MaxRange		= 5000 	--500 units = ~10m

SWEP.AmmoEnt 				= "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.Primary.ClipSize       = 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic      = true

SWEP.SelectiveFire			= true

SWEP.Primary.Sound			= Sound("weapons/mac11/mac10-1.wav")	

SWEP.UseHands				= true
SWEP.ViewModelFlip			= true
SWEP.ViewModelFOV			= 80
SWEP.ViewModel				= "models/weapons/mac11/v_smg_mac10.mdl"	
SWEP.WorldModel				= "models/weapons/mac11/w_smg_mac10.mdl"
SWEP.HoldType				= "ar2"

SWEP.IronSightsPos          = Vector(6, -2, 1.5)
SWEP.IronSightsAng          = Vector(0, 0, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)