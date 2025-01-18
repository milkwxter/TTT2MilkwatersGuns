if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= true
SWEP.AutoSpawnable			= true

if CLIENT then
   SWEP.PrintName			= "Franchi Spas-12"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 2
   SWEP.SlotPos				= 2
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "A shotgun."
   };
	SWEP.Icon                       = "materials/milkwaters_icons/vgui/ttt/spas.png"
end

SWEP.Kind					= WEAPON_HEAVY

SWEP.Primary.Damage         = 6
SWEP.HeadshotMultiplier     = 1.7
SWEP.Primary.Delay          = 0.25
SWEP.Primary.Recoil         = 5
SWEP.Primary.Cone           = 0.11
SWEP.Primary.Aimfocus      	= 0.5	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 500 	--50 units = ~1m
SWEP.Primary.MaxRange		= 2000 	--500 units = ~10m
SWEP.Primary.NumShots       = 10	--How many bullets do we shoot at once

SWEP.AmmoEnt 				= "item_box_buckshot_ttt"
SWEP.Primary.Ammo           = "Buckshot"
SWEP.Primary.ClipSize       = 8
SWEP.Primary.DefaultClip	= 8
SWEP.Primary.Automatic      = true

SWEP.SelectiveFire			= true

SWEP.Primary.Sound			= Sound("weapons/spas/xm1014-1.wav")	

SWEP.RoundAim				= true --Crosshair or Circle?
SWEP.ShotgunReload			= true --Use Shotguns Reload?

SWEP.UseHands				= true
SWEP.ViewModelFlip			= true
SWEP.ViewModelFOV			= 80
SWEP.ViewModel				= "models/weapons/spas/v_shot_xm1014.mdl"	
SWEP.WorldModel				= "models/weapons/spas/w_shot_xm1014.mdl"
SWEP.HoldType				= "shotgun"

SWEP.IronSightsPos          = Vector(2.7, 0, 1)
SWEP.IronSightsAng          = Vector(0, 0, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)