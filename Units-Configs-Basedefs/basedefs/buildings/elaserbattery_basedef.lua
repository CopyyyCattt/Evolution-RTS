unitDef                     = {
	buildAngle                    = 2048,
	buildCostEnergy               = 0,
	buildCostMetal                = 150,
	builder                       = false,
	buildTime                     = 5,
	buildpic					  = "elaserbattery.png",
	canAttack                     = true,
	canstop                       = "1",
	category                      = "BUILDING NOTAIR",
	collisionVolumeTest           = "1",
	description                   = [[Anti-AIR Defense Platform]],
	energyStorage                 = 0,
	energyUse                     = 0,
	explodeAs                     = "mediumBuildingExplosionGeneric",
	footprintX                    = 6,
	footprintZ                    = 6,
	floater			              = true,
	idleAutoHeal                  = .5,
	idleTime                      = 2200,
	iconType                      = "turret_lit",
	maxDamage                     = 625,
	maxSlope                      = 60,
	maxWaterDepth                 = 999999,
	metalStorage                  = 0,
	name                          = humanName,
	objectName                    = objectName,
	script						  = script,
	onlytargetcategory2           = "NOTAIR",
	onlytargetcategory3           = "NOTAIR",
	onlytargetcategory4           = "NOTAIR",
	onlytargetcategory5           = "NOTAIR",
	onlytargetcategory6           = "NOTAIR",
	radarDistance                 = 0,
	repairable		              = false,
	selfDestructAs                = "mediumBuildingExplosionGeneric",
	side                          = "CORE",
	sightDistance                 = 100,
	airsightdistance			  = 2000,
	smoothAnim                    = true,
	unitname                      = unitName,
	workerTime                    = 0,
	yardMap                       = "oooo oooo oooo oooo",

	sfxtypes                      = { 
		pieceExplosionGenerators  = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators       = {
			"custom:electricity",
			"custom:needspower",
			"custom:blacksmoke",
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
			def                   = "lighteweapon",
			onlyTargetCategory    = "VTOL",
		},
	},
	customParams                  = {
		isupgraded			  	  = isUpgraded,
		unittype				  = "turret",
		RequireTech				  = tech,
		needed_cover              = 2,
		--supply_cost               = supply,
		death_sounds              = "generic",
		armortype                 = armortype,
		normaltex                 = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                 = "unittextures/lego2skin_explorerbucket.dds",
		factionname	              = "outer_colonies",
		corpse                   = "energycore",
	},
	useGroundDecal                = true,
	BuildingGroundDecalType       = "factorygroundplate.dds",
	BuildingGroundDecalSizeX      = 8,
	BuildingGroundDecalSizeY      = 8,
	BuildingGroundDecalDecaySpeed = 0.9,
}

weaponDefs                  = {
	lighteweapon                  = {
		AreaOfEffect             = 25,
		avoidFeature             = false,
		avoidFriendly            = false,
		collideFeature           = false,
		collideFriendly          = false,
		--cegTag                   = "railgun",
		coreThickness            = 0.5,
		duration                 = 0.9,
		energypershot            = 0,
		explosionGenerator       = "custom:genericshellexplosion-small-purple",
		fallOffRate              = 0.1,
		fireStarter              = 50,
		impulseFactor            = 0,
		interceptedByShieldType  = 4,
		name                     = "Laser",
		range                    = 2000,
		reloadtime               = 0.1,
		WeaponType               = "LaserCannon",
		rgbColor               = "1 0.75 0",
		rgbColor2              = "1 1 1",
		soundTrigger             = true,
		soundstart               = "weapons/efighterlaser.wav",
		texture1                 = "shot",
		texture2                 = "empty",
		thickness                = 8,
		tolerance                = 1000,
		turret                   = true,
		sprayangle				 = 1000,
		weaponVelocity           = 3000,
		waterweapon				 = true,
		customparams              = {
			isupgraded		  	 = isUpgraded,
			damagetype		      = "elaserbattery",
			effectedByunitHealthModifier = true,
		},      
		damage                    = {
			default               = 30,
		},
	},
}