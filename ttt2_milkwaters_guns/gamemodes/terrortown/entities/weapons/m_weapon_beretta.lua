if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= true
SWEP.AutoSpawnable			= true

if CLIENT then
   SWEP.PrintName			= "Beretta M92"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 1
   SWEP.SlotPos				= 1
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "A pistol."
   };
	SWEP.Icon                       = "materials/milkwaters_icons/vgui/ttt/icon_beretta.png"
end

SWEP.Kind					= WEAPON_PISTOL

SWEP.Primary.Damage         = 25
SWEP.HeadshotMultiplier     = 2.0
SWEP.Primary.Delay          = 0.18
SWEP.Primary.Recoil         = 1.0
SWEP.Primary.Cone           = 0.1
SWEP.Primary.Aimfocus      	= 0.4	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 1000 	--50 units = ~1m
SWEP.Primary.MaxRange		= 2500 	--500 units = ~10m

SWEP.AmmoEnt 				= "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "pistol"
SWEP.Primary.ClipSize       = 15
SWEP.Primary.DefaultClip	= 15
SWEP.Primary.Automatic      = true

SWEP.SelectiveFire			= true

SWEP.Primary.Sound			= Sound("weapons/beretta_m9/fiveseven-1.wav")	

SWEP.UseHands				= true
SWEP.ViewModelFlip			= true
SWEP.ViewModelFOV			= 80
SWEP.ViewModel				= "models/weapons/beretta_m9/v_pist_fiveseven.mdl"	
SWEP.WorldModel				= "models/weapons/beretta_m9/w_pist_fiveseven.mdl"
SWEP.HoldType				= "pistol"

SWEP.IronSightsPos          = Vector(2.8, 0, 1.6)
SWEP.IronSightsAng          = Vector(0, 0, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)