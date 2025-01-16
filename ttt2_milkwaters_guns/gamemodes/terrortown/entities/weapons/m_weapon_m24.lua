if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= true
SWEP.AutoSpawnable			= true

if CLIENT then
   SWEP.PrintName			= "Smith M24"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 1
   SWEP.SlotPos				= 1
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "A bolt-action rifle."
   };
	SWEP.Icon                       = "materials/milkwaters_icons/vgui/ttt/m24.png"
end

SWEP.Kind					= WEAPON_HEAVY

SWEP.Primary.Damage         = 44
SWEP.HeadshotMultiplier     = 2.5
SWEP.Primary.Delay          = 1.2
SWEP.Primary.Recoil         = 2.5
SWEP.Primary.Cone           = 0.3
SWEP.Primary.Aimfocus      	= 0.01	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 10000 	--50 units = ~1m
SWEP.Primary.MaxRange		= 25000 	--500 units = ~10m

SWEP.AmmoEnt 				= "item_ammo_357_ttt"
SWEP.Primary.Ammo           = "357"
SWEP.Primary.ClipSize       = 5
SWEP.Primary.DefaultClip	= 5
SWEP.Primary.Automatic      = false

SWEP.SelectiveFire			= true

SWEP.Primary.Sound			= Sound("weapons/m24/Scout_Fire-1.wav")	

SWEP.SelectiveZoom		= false
SWEP.Zoom				= 4
SWEP.ZoomMulti			= 2
SWEP.SniperScope		= true	//Use Sniper Scope?
SWEP.Tracer = "xmod_snipertracer"

SWEP.UseHands				= true
SWEP.ViewModelFlip			= true
SWEP.ViewModelFOV			= 80
SWEP.ViewModel				= "models/weapons/m24/v_snip_scout.mdl"	
SWEP.WorldModel				= "models/weapons/m24/w_snip_scout.mdl"
SWEP.HoldType				= "ar2"

SWEP.IronSightsPos          = Vector(3.5, -15, 2)
SWEP.IronSightsAng          = Vector(0, 0, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)