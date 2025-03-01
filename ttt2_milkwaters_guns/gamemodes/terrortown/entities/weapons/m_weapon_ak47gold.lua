if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= false
SWEP.AutoSpawnable			= false

if CLIENT then
   SWEP.PrintName			= "Golden AK-47"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 6
   SWEP.SlotPos				= 6
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "A golden rifle. Better than the normal variant."
   };
	SWEP.Icon               = "materials/milkwaters_icons/vgui/ttt/icon_ak47gold.png"
end

SWEP.Kind					= WEAPON_HEAVY

SWEP.Primary.Damage         = 28
SWEP.HeadshotMultiplier     = 2.5
SWEP.Primary.Delay          = 0.13
SWEP.Primary.Recoil         = 5
SWEP.Primary.Cone           = 0.11
SWEP.Primary.Aimfocus      	= 0.1	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 2000 	--50 units = ~1m
SWEP.Primary.MaxRange		= 5000 	--500 units = ~10m

SWEP.AmmoEnt 				= "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.Primary.ClipSize       = 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic      = true

SWEP.SelectiveFire			= false

SWEP.Primary.Sound			= Sound("weapons/ak47gold/ak47-1.wav")	

SWEP.UseHands				= true
SWEP.ViewModelFlip			= true
SWEP.ViewModelFOV			= 80
SWEP.ViewModel				= "models/weapons/ak47gold/v_rif_ak47.mdl"	
SWEP.WorldModel				= "models/weapons/ak47gold/w_rif_ak47.mdl"
SWEP.HoldType				= "ar2"

SWEP.IronSightsPos          = Vector(3.35, -2, 1.6)
SWEP.IronSightsAng          = Vector(0, 0, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)

SWEP.MovementPenalty		= 0.5

SWEP.CanBuy = { ROLE_DETECTIVE } -- only traitors can buy