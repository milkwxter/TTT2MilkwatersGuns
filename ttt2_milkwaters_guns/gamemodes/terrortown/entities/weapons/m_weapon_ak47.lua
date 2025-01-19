if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= true
SWEP.AutoSpawnable			= true

if CLIENT then
   SWEP.PrintName			= "AK-47"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 2
   SWEP.SlotPos				= 2
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "A rifle."
   };
	SWEP.Icon                       = "materials/milkwaters_icons/vgui/ttt/ak47.png"
end

SWEP.Kind					= WEAPON_HEAVY

SWEP.Primary.Damage         = 23
SWEP.HeadshotMultiplier     = 2.5
SWEP.Primary.Delay          = 0.13
SWEP.Primary.Recoil         = 4
SWEP.Primary.Cone           = 0.12
SWEP.Primary.Aimfocus      	= 0.1	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 2000 	--50 units = ~1m
SWEP.Primary.MaxRange		= 5000 	--500 units = ~10m

SWEP.AmmoEnt 				= "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.Primary.ClipSize       = 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic      = true

SWEP.SelectiveFire			= true

SWEP.Primary.Sound			= Sound("weapons/ak47/ak47-1.wav")	

SWEP.UseHands				= true
SWEP.ViewModelFlip			= true
SWEP.ViewModelFOV			= 80
SWEP.ViewModel				= "models/weapons/ak47/v_rif_ak47.mdl"	
SWEP.WorldModel				= "models/weapons/ak47/w_rif_ak47.mdl"
SWEP.HoldType				= "ar2"

SWEP.IronSightsPos          = Vector(5.3, -2, 3)
SWEP.IronSightsAng          = Vector(0, 0, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)