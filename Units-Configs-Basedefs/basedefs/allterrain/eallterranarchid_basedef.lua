unitDef                    = {

	acceleration                 = 0.18,
	brakeRate                    = 1,
	buildCostEnergy              = 0,
	buildCostMetal               = 225,
	builder                      = false,
	buildTime                    = 5,
	buildpic					 = "eallterranarchid.png",
	canAttack                    = true,
	
	canGuard                     = true,
	canMove                      = true,
	canPatrol                    = true,
	canstop                      = "1",
	cantBeTransported            = true,
	category                     = "ARMORED NOTAIR SKIRMISHER",
	corpse                       = "ammobox",

	-- Cloaking

	cancloak		             = true,
	cloakCost		             = 0,
	cloakCostMoving	             = 1,
	minCloakDistance             = 150,
	decloakOnFire	             = true,
	decloakSpherical             = true,
	initCloaked		             = false,
	
	-- End Cloaking
	
	description                  = [[Endbringer Class Base Obliteration Strider • Uses +]] .. supply .. [[ Supply]],
	energyMake                   = 0,
	energyStorage                = 0,
	energyUse                    = 0,
	explodeAs                    = "krabblast",
	firestandorders              = "1",
	footprintX                   = 6,
	footprintZ                   = 6,
	iconType                     = "anarchid",
	idleAutoHeal                 = .5,
	idleTime                     = 2200,
	leaveTracks                  = false,
	maxDamage                    = 2750,
	maxVelocity                  = 2.5,
	maxReverseVelocity           = 1,
	maxWaterDepth                = 80,
	metalStorage                 = 0,
	movementClass                = "ALLTERRTANK6",
	name                         = humanName,
	noChaseCategory              = "VTOL",
	objectName                   = objectName,
	script	                     = script,
	pushResistant		         = true,
	radarDistance                = 0,
	repairable		             = false,
	selfDestructAs               = "krabblast",
	shootme                      = "1",
	sightDistance                = 1000,
	smoothAnim                   = true,
	stealth			             = true,
	seismicSignature             = 4,
	transportbyenemy             = false;
	turnInPlace                  = true,
	turnRate                     = 5000,
	unitname                     = unitName,
	unitnumber                   = "110",
	upright                      = false,
	--  usePieceCollisionVolumes = true,
	workerTime                   = 0,
	sfxtypes                     = { 
		pieceExplosionGenerators = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators      = {
			"custom:gdhcannon",
			"custom:dirtsmall",
			"custom:flamethrowerrange500",
			"custom:blacksmoke",
		},
	},
	sounds                       = {
		underattack              = "unitsunderattack1",
		ok                       = {
			"ack",
		},
		select                   = {
			"unitselect",
		},
	},
	weapons                      = {
		[1]                      = {
			def                  = "heavybeamweapon",
		},
		[2]                      = {
			def                  = "flamethrower",
		},
		[3]                      = {
			def                  = "flamethrower",
		},
	},
	customParams                 = {
		unittype				  = "mobile",
		isupgraded           	 = isUpgraded,
		death_sounds             = "nuke",
		RequireTech              = tech,
		armortype                = armortype,
		supply_cost              = supply,
		normaltex               = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                = "unittextures/lego2skin_explorerbucket.dds",
		factionname	             = "outer_colonies",  
	},
}

weaponDefs                 = {
	heavybeamweapon              = {
		AreaOfEffect             = 10,
		avoidFriendly            = false,
		avoidFeature             = false,
		collideFriendly          = false,
		collideFeature           = false,
		beamTime                 = 1,
		cameraShake		         = 1,
		coreThickness            = 0.2,
		--	cegTag               = "mediumcannonweapon3",
		--    duration           = 0.2,
		energypershot            = 0,
		explosionGenerator       = "custom:genericshellexplosion-large-sparks-burn",
		fallOffRate              = 1,
		fireStarter              = 50,
		impulseFactor            = 0,
		interceptedByShieldType  = 4,
		minintensity             = "1",
		name                     = "Laser",
		range                    = 1000,
		reloadtime               = 1,
		WeaponType               = "BeamLaser",
		rgbColor                 = "1 0 0",
		rgbColor2                = "1 1 1",
		soundTrigger             = true,
		soundstart               = "weapons/krabprimary.wav",
		--    soundHit           = "explosions/mediumcannonhit.wav",
		--	sweepfire		     = true,
		texture1                 = "shot",
		texture2                 = "empty",
		thickness                = 6,
		tolerance                = 1000,
		turret                   = true,
		weaponVelocity           = 800,
		customparams             = {
			isupgraded           	 = isUpgraded,
			damagetype		     = "eallterranarchid",  
		}, 
		damage                   = {
			default              = 300,
		},
	},
	
	flamethrower                 = {
		
		accuracy                 = 0,
		AreaOfEffect             = 1,
		avoidFeature             = false,
		avoidFriendly            = false,
		collideFeature           = false,
		collideFriendly          = false,
		explosionGenerator       = "custom:burnblack",
		coreThickness            = 0,
		duration                 = 1,
		energypershot            = 0,
		fallOffRate              = 1,
		fireStarter              = 50,
		interceptedByShieldType  = 4,
		soundstart               = "weapons/flamethrower1.wav",
		
		minintensity             = 1,
		impulseFactor            = 0,
		name                     = "Something with Flames",
		range                    = 500,
		reloadtime               = 0.1,
		WeaponType               = [[LaserCannon]],
		rgbColor                 = "0 0 0",
		rgbColor2                = "0 0 0",
		thickness                = 0,
		tolerance                = 1000,
		turret                   = true,
		weaponVelocity           = 400,
		customparams             = {
			isupgraded           	 = isUpgraded,
			damagetype		     = "eallterranarchidflame",  
		},      
		damage                   = {
			default              = 25,
		},
	},
}