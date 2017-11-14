unitDef                        = {

	buildAngle                       = 2048,
	buildCostEnergy                  = 0,
	buildCostMetal                   = 40,
	builder                          = false,
	buildTime                        = 5,
	buildpic					  	 = "euwturret.png",
	canAttack                        = true,
	canstop                          = "1",
	category                         = "BUILDING NOTAIR",
	collisionVolumeTest              = "1",
	description                      = [[Anti-Amphibious Defense Platform • Uses +]] .. supply .. [[ Supply]],
	energyStorage                    = 0,
	energyUse                        = 0,
	explodeAs                        = "mediumBuildingExplosionGenericGreen",
	floater			                 = true,
	footprintX                       = 4,
	footprintZ                       = 4,
	idleAutoHeal                     = .5,
	idleTime                         = 2200,
	iconType                         = "turret_lit",
	maxDamage                        = 500,
	maxSlope                         = 60,
	minWaterDepth                    = 20,
	metalStorage                     = 0,
	name                         	 = humanName,
	objectName                   	 = objectName,
	script						 	 = script,
	onlytargetcategory2              = "NOTAIR",
	onlytargetcategory3              = "NOTAIR",
	onlytargetcategory4              = "NOTAIR",
	onlytargetcategory5              = "NOTAIR",
	onlytargetcategory6              = "NOTAIR",
	radarDistance                    = 0,
	repairable		                 = false,
	selfDestructAs                   = "mediumBuildingExplosionGenericGreen",
	side                             = "CORE",
	sightDistance                    = 250,
--	SonarDistance                    = 600,
	smoothAnim                       = true,
	unitname                         = unitName,
	workerTime                       = 0,
	yardMap                          = "oooo oooo oooo oooo",

	sfxtypes                         = { 
		pieceExplosionGenerators     = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators          = {
			"custom:electricity",
			"custom:needspower",
			"custom:blacksmoke",
		},
	},
	sounds                           = {
		underattack                  = "other/unitsunderattack1",
		select                       = {
			"other/turretselect",
		},
	},
	weapons                          = {
		[1]                          = {
			def                      = "euwturretmissile",
			onlyTargetCategory       = "LIGHT ARMORED",
			--	  MainDir	 		 = [[0 -1 0]],
			--	  MaxAngleDif		 = 180,
		},
	},
	customParams                     = {
		isupgraded			  	     = isUpgraded,
		unittype				     = "turret",
		RequireTech				     = tech,
		needed_cover                 = 2,
		supply_cost                  = supply,
		death_sounds                 = "generic",
		-- twokhotkey                = 't',
		armortype                    = armortype,
		normaltex                    = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                    = "unittextures/lego2skin_explorerbucket.dds",
		factionname	                 = "outer_colonies",
		corpse                   = "energycore",
	},
}

weaponDefs                     = {
	euwturretmissile                 = {
		AreaOfEffect                 = 10,
		avoidFriendly                = false,
		avoidFeature                 = false,
		cegTag                       = "torpedotrailuwturret",
		collideFriendly              = false,
		collideFeature               = false,
		explosionGenerator           = "custom:torpedoexplosion",
		energypershot                = 0,
		fireStarter                  = 80,
		impulseFactor                = 0.1,
		interceptedByShieldType      = 4,
		model                        = "missilesmall.s3o",
		name                         = "Underwater Torpedo",
		range                        = 600,
		reloadtime                   = 1,
		weaponType		             = "TorpedoLauncher",
		soundHit                     = "weapons/torpedolaunch.wav",
		soundStart                   = "weapons/subhit.wav",
		tolerance                    = 3000,
		turret                       = true,
		startVelocity	             = 200,
		acceleration	             = 2000,
		weaponVelocity               = 10000,
		tracks				         = true,
		turnrate			         = 100000,
		flighttime			         = 8,
		sprayangle			         = 5000,
		waterweapon		             = true,
		
		customparams                 = {
			isupgraded		  	 	 = isUpgraded,
			damagetype		         = "euwturret",  
		},
		damage                       = {
			default                  = 120,
		},
	},
}