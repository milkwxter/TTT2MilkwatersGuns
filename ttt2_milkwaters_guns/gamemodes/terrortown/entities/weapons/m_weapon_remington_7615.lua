if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_xmodtttbase"
SWEP.Spawnable				= true
SWEP.AutoSpawnable			= true

if CLIENT then
   SWEP.PrintName			= "Remington 7615"
   SWEP.Author				= "Milkwater"
   SWEP.Slot				= 2
   SWEP.SlotPos				= 2
   SWEP.EquipMenuData = {
	  type					= "item_weapon",
	  desc					= "A pump-action shotgun that fires slugs OR buckshot."
   };
	SWEP.Icon               = "materials/milkwaters_icons/vgui/ttt/remington_7615.png"
end

SWEP.Kind					= WEAPON_HEAVY

SWEP.Primary.Damage         = 56
SWEP.HeadshotMultiplier     = 2.5
SWEP.Primary.Delay          = 1.1
SWEP.Primary.Recoil         = 8
SWEP.Primary.Cone           = 0.3
SWEP.Primary.Aimfocus      	= 0.06	--How much better is the Aim while aiming down sights?
SWEP.Primary.MinRange		= 10000 	--50 units = ~1m
SWEP.Primary.MaxRange		= 25000 	--500 units = ~10m

SWEP.AmmoEnt 				= "item_box_buckshot_ttt"
SWEP.Primary.Ammo           = "Buckshot"
SWEP.Primary.ClipSize       = 6
SWEP.Primary.DefaultClip	= 6
SWEP.Primary.Automatic      = false

SWEP.SelectiveFire			= false

SWEP.RoundAim				= true --Crosshair or Circle?

--SWITCH BULLET TYPE -- SWEP:AdjustStats(dmg, headshot, numshots, recoil, delay, cone, aim, pen, switch, switchstring)
SWEP.SelectiveSBT			= true	--Switch Ammo Types?
SWEP.SBTNextSelect			= 0		--Dont touch
SWEP.SBTDamage				= 8
SWEP.SBTHeadshot			= 2
SWEP.SBTNumShots			= 8
SWEP.SBTRecoil				= 2
SWEP.SBTDelay				= 1.1
SWEP.SBTCone				= 0.6
SWEP.SBTAim					= 0.9
SWEP.SBTActive				= false
SWEP.SBTEnabledString		= "[SBT] Buckshot Ammo selected."
SWEP.SBTDisabledString		= "[SBT] Slugs selected."

SWEP.Primary.Sound			= Sound("weapons/remington_7615/scout_fire-1.wav")	

SWEP.SelectiveZoom		= false
SWEP.Zoom				= 3
SWEP.ZoomMulti			= 2
SWEP.SniperScope		= true	-- Use Sniper Scope?
SWEP.Tracer				= "xmod_snipertracer"

SWEP.UseHands				= true
SWEP.ViewModelFlip			= true
SWEP.ViewModelFOV			= 80
SWEP.ViewModel				= "models/weapons/remington_7615/v_snip_scout.mdl"	
SWEP.WorldModel				= "models/weapons/remington_7615/w_snip_scout.mdl"
SWEP.HoldType				= "ar2"

SWEP.IronSightsPos          = Vector(3.5, -15, 2)
SWEP.IronSightsAng          = Vector(0, 0, 0)
SWEP.RunSightsPos           = Vector(0, 0, 0)
SWEP.RunSightsAng           = Vector(0, 0, 0)

-- tell user how to activate SBT
function SWEP:Initialize()
	self:ShowSBTHelp()
		
	return self.BaseClass.Initialize(self)
end

function SWEP:SwitchBulletType()
	self.BaseClass.SwitchBulletType(self)

	self:ShowSBTHelp()
	
	return
end

-- custom helper function
function SWEP:ShowSBTHelp()
	-- no server allowed
	if SERVER then return end
	
	-- make some strings
	local sbtString = "Hold E + Right Click"
	local mainBulletString = "Slugs"
	local secondaryBulletString = "Buckshot"
	
	-- clear old help lines
	self:ClearHUDHelp()
	
	-- add blank helper to screen
	self:AddTTT2HUDHelp()
	
	-- check current bullet type and add a line to the helper
	if self.SBTActive then
		self:AddHUDHelpLine("Current bullet type: " .. secondaryBulletString, sbtString)
	else
		self:AddHUDHelpLine("Current bullet type: " .. mainBulletString, sbtString)
	end
end