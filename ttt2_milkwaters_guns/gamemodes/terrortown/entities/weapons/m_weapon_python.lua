if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= true
SWEP.AutoSpawnable			= true

if CLIENT then
   SWEP.PrintName			= "Colt Python"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 1
   SWEP.SlotPos				= 1
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "A revolver."
   };
	SWEP.Icon                       = "materials/milkwaters_icons/vgui/ttt/icon_python.png"
end

SWEP.Kind					= WEAPON_PISTOL

SWEP.Primary.Damage         = 42
SWEP.HeadshotMultiplier     = 2.5
SWEP.Primary.Delay          = 0.4
SWEP.Primary.Recoil         = 20
SWEP.Primary.Cone           = 0.15
SWEP.Primary.Aimfocus      	= 0.2	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 1000 	--50 units = ~1m
SWEP.Primary.MaxRange		= 3000 	--500 units = ~10m

SWEP.AmmoEnt 				= "item_ammo_revolver_ttt"
SWEP.Primary.Ammo           = "AlyxGun"
SWEP.Primary.ClipSize       = 6
SWEP.Primary.DefaultClip	= 6
SWEP.Primary.Automatic      = false

SWEP.SelectiveFire			= false

SWEP.Primary.Sound			= Sound("weapons/python/deagle-1.wav")	

SWEP.UseHands				= true
SWEP.ViewModelFlip			= false
SWEP.ViewModelFOV			= 70
SWEP.ViewModel				= "models/weapons/python/v_pist_deagle.mdl"	
SWEP.WorldModel				= "models/weapons/python/w_pist_deagle.mdl"
SWEP.HoldType				= "pistol"

SWEP.IronSightsPos          = Vector(-2.88, -3, 0.7)
SWEP.IronSightsAng          = Vector(0, 2.6, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)

SWEP.MovementPenalty		= 0.5