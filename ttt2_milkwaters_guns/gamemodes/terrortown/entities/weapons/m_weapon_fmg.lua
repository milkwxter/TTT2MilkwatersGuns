if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= true
SWEP.AutoSpawnable			= true

if CLIENT then
   SWEP.PrintName			= "Ares FMG"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 2
   SWEP.SlotPos				= 2
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "A machine gun that looks like a briefcase. Interesting."
   };
	SWEP.Icon                       = "materials/milkwaters_icons/vgui/ttt/fmg.png"
end

SWEP.Kind					= WEAPON_HEAVY

SWEP.Primary.Damage         = 18
SWEP.HeadshotMultiplier     = 1.75
SWEP.Primary.Delay          = 0.25
SWEP.Primary.Recoil         = 1.1
SWEP.Primary.Cone           = 0.08
SWEP.Primary.Aimfocus      	= 0.3	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 1000 	--50 units = ~1m
SWEP.Primary.MaxRange		= 400 	--500 units = ~10m

SWEP.BurstSelected			= true  --X Round Burst?
SWEP.BurstBulletsPerBurst	= 4		--Rounds in a Burst?
SWEP.BurstDelayWithinBurst	= 0.03	--Delay between Bullets in Burst

SWEP.AmmoEnt 				= "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.Primary.ClipSize       = 24
SWEP.Primary.DefaultClip	= 24
SWEP.Primary.Automatic      = true

SWEP.SelectiveFire			= true

SWEP.Primary.Sound			= Sound("weapons/fmg/mac10-1.wav")	

SWEP.UseHands				= true
SWEP.ViewModelFlip			= true
SWEP.ViewModelFOV			= 80
SWEP.ViewModel				= "models/weapons/fmg/v_smg_mac10.mdl"	
SWEP.WorldModel				= "models/weapons/fmg/w_smg_mac10.mdl"
SWEP.HoldType				= "ar2"

SWEP.IronSightsPos          = Vector(3, -2, 0.7)
SWEP.IronSightsAng          = Vector(0, 0, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)