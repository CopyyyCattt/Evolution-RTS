-- UNITDEF -- xnukesilo --
--------------------------------------------------------------------------------

local unitName                    = "xnukesilo"

--------------------------------------------------------------------------------

local armortype					 = [[building]]
--local supply					 = [[50]]
--local techprovided				 = [[-nukxnukesilo]]
local techrequired				 = [[tech3]]

local weapon1Damage               = 3000
local weapon1AOE				  = 1500
local energycosttofire			 = weapon1Damage / 10 * ((weapon1AOE / 1000) + 1)
--local stockpiletime				 = 60

local function roundToFirstDecimal(energycosttofire)
    return math.floor(energycosttofire*10 + 0.5)*0.1
end

local buildCostMetal 			  = 1750
local maxDamage					  = buildCostMetal * 12.5

local unitDef                     = {

	buildAngle                    = 8192,
	buildCostEnergy               = 0,
	buildCostMetal                = buildCostMetal,
	builder                       = false,
	buildTime                     = 5,
	canAttack                     = true,
	canstop                       = "1",
	category                      = "BUILDING NOTAIR",
	description                   = [[ ]],
	energyMake                    = 0,
	energyStorage                 = 0,
	energyUse                     = 0,
	explodeAs                     = "nukemissile",
	floater						  = true,
	fireState					  = 0,
	footprintX                    = 8,
	footprintZ                    = 8,
	iconType                      = "xnukesilo",
	idleAutoHeal                  = .5,
	idleTime                      = 2200,
	maxDamage                     = maxDamage,
	maxSlope                      = 30,
	maxWaterDepth                 = 5000,
	metalStorage                  = 0,
	name                          = [[Eradicator: Nuclear Strike Facility]],
	objectName                    = "faction/xnukesilo.s3o",
	radarDistance                 = 0,
	repairable		              = false,
	script			              = "faction/xnukesilo.cob",
	selfDestructAs                = "nukemissile",
	side                          = "ARM",
	sightDistance                 = 600,
	smoothAnim                    = true,
	unitlimit                     = "2",
	unitname                      = "xnukesilo",
	workerTime                    = 0,
	yardMap                       = "oooooooo oooooooo oooooooo oooooooo oooooooo oooooooo oooooooo oooooooo",

	sfxtypes                      = { 
		pieceExplosionGenerators  = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators       = {
			"custom:needspower",
			"custom:blacksmoke",
			"custom:steam",
		},
	},

	sounds                        = {
		underattack               = "other/unitsunderattack1",
		select                    = {
			"other/turretselect",
		},
	},
	weapons                       = {
		[1]                       = {
			def                   = "nukemissile",
			badTargetCategory    = "LIGHT ARMORED",
		},
	},
	customParams                  = {
		--ProvideTech              = techprovided,
		RequireTech				 = techrequired,
		unittype				  = "turret",
		needed_cover              = 8,
		--supply_cost               = supply,
		death_sounds              = "nuke",
		armortype                 = "building",
		normaltex                = "unittextures/bfaction_normals.dds", 
		--buckettex                 = "unittextures/lego2skin_explorerbucket.dds",
		corpse                   = "energycore",
		factionname	             = "ateran",
	},
	useGroundDecal                = true,
	BuildingGroundDecalType       = "factorygroundplate.dds",
	BuildingGroundDecalSizeX      = 10,
	BuildingGroundDecalSizeY      = 10,
	BuildingGroundDecalDecaySpeed = 0.9,
}


--------------------------------------------------------------------------------
-- Energy Per Shot Calculation is: dmg / 20 * ((aoe / 1000) + 1)

local weaponDefs                  = {
	nukemissile                   = {
		AreaOfEffect              = weapon1AOE,
		avoidFriendly             = false,
		avoidFeature              = false,
		cegTag                    = "NUKETRAIL",
		collideFriendly           = false,
		collideFeature            = false,
		commandFire				  = true,
		craterBoost               = 0,
		craterMult                = 0,
		edgeeffectiveness		  = 1,
		energypershot             = energycosttofire,
		explosionGenerator        = "custom:nukedatbewm",
		fireStarter               = 100,
		flightTime                = 400,
		
		id                        = 124,
		impulseBoost              = 0,
		impulseFactor             = 0,
		--interceptedByShieldType   = 4,
		
		metalpershot              = 0,
		model                     = "enuke.s3o",
		name                      = "Nuke",
		range                     = 32000,
		reloadtime                = 200,
		weaponType		          = "MissileLauncher",
		
		
		smokeTrail                = false,
		soundHit                  = "explosions/explosion_enormous.wav",
		soundStart                = "weapons/nukelaunch.wav",
		
--		stockpile                 = true,
--		stockpileTime             = stockpiletime,
		startVelocity             = 10,
		tracks                    = true,
		turnRate                  = 3000,
		targetable			      = 1,
		
		weaponAcceleration        = 60,
		weaponTimer               = 5,
		weaponType                = "StarburstLauncher",
		weaponVelocity            = 1000,
		customparams              = {
			damagetype		      = "light",  
			death_sounds 		  = "nuke",
			oldcosttofireforumula = true,
			effectedByunitHealthModifier = true,
			friendlyfireexception = true,
		},      
		damage                    = {
			default               = weapon1Damage,
		},
	},
}
unitDef.weaponDefs                = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName]     = unitDef })

--------------------------------------------------------------------------------
