return {
	chickenh5 = {
		acceleration = 0.8,
		autoheal = 8,
		bmcode = "1",
		brakerate = 0.8,
		buildcostenergy = 1,
		buildcostmetal = 251,
		builddistance = 425,
		builder = true,
		buildpic = "chicken_unitpics/chickenh5.png",
		buildtime = 1,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canreclaim = false,
		canrestore = false,
		canstop = "1",
		category = "BIO",
		collisionvolumeoffsets = "0 10 2",
		collisionvolumescales = "37 55 90",
		collisionvolumetype = "box",
		corpse = "chicken_egg",
		defaultmissiontype = "Standby",
		description = "Chicken Overseer",
		explodeas = "BIGBUG_DEATH",
		floater = false,
		footprintx = 3,
		footprintz = 3,
		hidedamage = 1,
		icontype = "chickencommander",
		leavetracks = true,
		maneuverleashlength = 640,
		mass = 3000,
		maxdamage = 8000,
		maxslope = 18,
		maxvelocity = 3.7,
		maxwaterdepth = 15,
		movementclass = "CHICKENHKBOT2",
		name = "Patriarch",
		nanocolor = "0.7 0.15 0.15",
		noautofire = false,
		nochasecategory = "VTOL",
		objectname = "ChickenDefenseModels/brain_bug.s3o",
		script = "ChickenDefenseScripts/chickenh5.cob",
		repairspeed = 450,
		selfdestructas = "BUG_DEATH",
		side = "THUNDERBIRDS",
		sightdistance = 760,
		smoothanim = true,
		steeringmode = "2",
		tedclass = "KBOT",
		trackoffset = 0,
		trackstrength = 8,
		trackstretch = 1,
		tracktype = "ChickenTrack",
		trackwidth = 18,
		turninplace = true,
		turnrate = 5000,
		unitname = "chickenh5",
		upright = false,
		waterline = 8,
		workertime = 450,
		featuredefs = {
			dead = {},
			heap = {},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:blood_spray",
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
				[4] = "custom:BRAIN_SPHERE_EMIT",
			},
		},
		weapondefs = {
			controlblob = {
				areaofeffect = 80,
				avoidfeature = 0,
				avoidfriendly = 0,
				camerashake = 0,
				cegtag = "blood_trail",
				collidefriendly = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.25,
				explosiongenerator = "custom:control_explode",
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 0.7,
				interceptedbyshieldtype = 4,
				name = "ControlBlob",
				noselfdamage = true,
				predictboost = 1,
				proximitypriority = -2,
				range = 590,
				reloadtime = 9.5,
				rgbcolor = "0.7 0.15 0.15",
				size = 18,
				sizedecay = -0.3,
				soundhit = "ChickenDefenseSounds/junohit2edit",
				tolerance = 5000,
				turret = true,
				weapontimer = 3,
				weaponvelocity = 420,
				damage = {
					default = 225,
				},
			},
			weapon = {
				interceptedByShieldType   = 4,
				areaofeffect = 72,
				avoidfeature = 0,
				avoidfriendly = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:chickenspike-large-sparks-burn",
				impulseboost = 2.2,
				impulsefactor = 1,
				interceptedbyshieldtype = 4,
				name = "Claws",
				noselfdamage = true,
				range = 200,
				reloadtime = 4,
				model = "ChickenDefenseModels/spike.s3o",
				soundstart = "ChickenDefenseSounds/smallchickenattack",
				targetborder = 1,
				tolerance = 5000,
				turret = true,
				waterweapon = true,
				weapontimer = 0.1,
				weapontype = "Cannon",
				weaponvelocity = 500,
				damage = {
					chicken = 200,
					default = 900,
				},
			},
		},
		weapons = {
			[1] = {
				def = "WEAPON",
				maindir = "0 0 1",
				maxangledif = 180,
				onlytargetcategory = "NOTAIR LIGHT ARMORED BUILDING",
			},
			[2] = {
				def = "CONTROLBLOB",
				maindir = "0 0 1",
				maxangledif = 180,
				onlytargetcategory = "NOTAIR LIGHT ARMORED BUILDING",
			},
		},
		customparams = {
			unittype = "mobile",
		},
	},
}
