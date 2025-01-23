if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= true
SWEP.AutoSpawnable			= true

if CLIENT then
   SWEP.PrintName			= "Beretta AR-70"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 2
   SWEP.SlotPos				= 2
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "A rifle."
   };
	SWEP.Icon                       = "materials/milkwaters_icons/vgui/ttt/icon_ar70.png"
end

SWEP.Kind					= WEAPON_HEAVY

SWEP.Primary.Damage         = 18
SWEP.HeadshotMultiplier     = 2
SWEP.Primary.Delay          = 0.1
SWEP.Primary.Recoil         = 2
SWEP.Primary.Cone           = 0.10
SWEP.Primary.Aimfocus      	= 0.2	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 2000 	--50 units = ~1m
SWEP.Primary.MaxRange		= 5000 	--500 units = ~10m

SWEP.AmmoEnt 				= "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.Primary.ClipSize       = 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic      = true

SWEP.SelectiveFire			= false

SWEP.Primary.Sound			= Sound("weapons/ar70/galil-1.wav")	

SWEP.UseHands				= true
SWEP.ViewModelFlip			= false
SWEP.ViewModelFOV			= 80
SWEP.ViewModel				= "models/weapons/ar70/v_rif_galil.mdl"	
SWEP.WorldModel				= "models/weapons/ar70/w_rif_galil.mdl"
SWEP.HoldType				= "ar2"

SWEP.IronSightsPos          = Vector(-2.615, -2, 1.75)
SWEP.IronSightsAng          = Vector(0, 0, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)