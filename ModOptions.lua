local options= {
	{
		key    = 'startingresources',
		name   = 'Starting Resources',
		desc   = 'Sets the storage and amount of resources with which each player will start',
		type   = 'section',
	},
	{
		key    = 'startmetal',
		name   = 'Starting Metal',
		desc   = 'Determines the amount of metal and metal storage with which each player will start',
		type   = 'number',
		section= 'startingresources',
		def    = 100,
		min    = 0,
		max    = 1000,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
	{
		key    = 'startenergy',
		name   = 'Starting Energy',
		desc   = 'Determines the amount of energy and energy storage with which each player will start',
		type   = 'number',
		section= 'startingresources',
		def    = 100,
		min    = 0,
		max    = 1000,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},

-- Shard AI Options
	{
		key    = 'aioptions',
		name   = 'DAI (AI Opponent) Options',
		desc   = 'Allows you to adjust ShardLua settings',
		type   = 'section',
	},
	{
		key    = 'aidebug',
		name   = 'AI is spamming chat with debug values',
		desc   = 'AI is spamming chat with debug values',
		type="list",
		def="disabled",
		section= "aioptions",
		items={
			{key="disabled", name="Disabled", desc="Clean Chat"},
			{key="enabled", name="Enabled", desc="Cries in Spam"},
		}
	},
	{
		key    = 'ai_incomemultiplier',
		name   = 'AI Income Percentage',
		desc   = 'Percentage of AI resource income compared to the default (100 = 100%, I.E. Normal. 200 = 200%, which would mean that the AI income would be double the player income)',
		type   = 'number',
		section= 'aioptions',
		def    = 100,
		min    = 1,
		max    = 1000,
		step   = 1,
	},
	
-- Resourcing
	{
		key    = 'resourcing',
		name   = 'Resourcing Options',
		desc   = 'Allows you to adjust how metal income is handled and how it is distributed',
		type   = 'section',
	},
	{
		key    = 'mexlayout',
		name   = 'Default Metal Spot Layout',
		desc   = 'If enabled, the default layout for metal spots will be used, if disabled, the metal spots defined by the map will be used.',
		type="list",
		def="enabled",
		section= "resourcing",
		items={
			{key="disabled", name="Disabled", desc="Use the Metal Map Layout defined in the map"},
			{key="enabled", name="Enabled", desc="Default Metal Map Layout"},
		}
	},
	{
		key    = 'mexrandomlayout',
		name   = 'Metal Spot Layout to use',
		desc   = 'This allows you to choose between the different metal spot layouts that are available.',
		type="list",
		def="standard",
		section= "resourcing",
		items={
			{key="standard", name="Standard", desc="Random placing that is mirrored. Has various methods for different map shapes and is more careful with metal spot placement."},
			{key="ffa", name="Free For All", desc=""},
			{key="legacy1", name="Legacy 1", desc="Most uniform layout. Max metal ~49.1, Max metal spots 56."},
			{key="legacy2", name="Legacy 2", desc="Less uniform, more clustered layout. Max metal ~50, Max metal spots 56."},
			{key="legacy3", name="Legacy 3", desc="The Pitchfork! Dense metal layout with lower output per metal spot. Max metal ~51.1, Max metal spots 94."},
			{key="legacy4", name="Legacy 4", desc=""},
		}
	},
	{
		key    = 'maximummexelevationdifference',
		name   = 'Standard Metal Spot Layout: Maximum elevation difference for Metal Spot locations',
		desc   = 'This is used as an attempt to avoid placement on cliffs (only works on Standard Metal Spot Layout)',
		type   = 'number',
		section= 'resourcing',
		def    = 50,
		min    = 0,
		max    = 200,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
	{
		key    = 'allowmexesinwater',
		name   = 'Standard Metal Spot Layout: Allow metal spots to be placed in water?',
		desc   = 'Should metal spots be placed in water? Sometimes turning this off can be beneficial if the water on a map does damage. (only works on Standard Metal Spot Layout)',
		type="list",
		def="enabled",
		section= "resourcing",
		items={
			{key="disabled", name="Disabled", desc="Disallow metal spots being placed in water."},
			{key="enabled", name="Enabled", desc="Allow metal spots to be placed in water."},
		}
	},
	{
		key    = 'dynamicmexoutput',
		name   = 'Should metal spot output values be dynamic?',
		desc   = 'Uses a sine to determine metal spot values based upon distance from the edge of the map and distance to the center.',
		type="list",
		def="disabled",
		section= "resourcing",
		items={
			{key="disabled", name="Disabled", desc="All metal spot output values will be set to 1.0"},
			{key="enabled", name="Enabled", desc="All metal spot output values will be automatically calculated"},
		}
	},
	{
		key    = 'mexspotspersidemultiplier',
		name   = 'Metal spot per side percentage modifier',
		desc   = 'This is a percentage modifier for the amount of metal spots on a map. A setting of 100 is literally 100%, so increasing to 200% will double the amount of metal spots that are placed on the map. Remember that the amount of metal spots is already scaled according to how many players are in the game.',
		type   = 'number',
		section= 'resourcing',
		def    = 100,
		min    = 1,
		max    = 200,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
	{
		key    = 'metalextractorcommunism',
		name   = 'Metal Extractor Communism',
		desc   = 'If enabled, then all metal income from Metal Extractors is split between allies. This means that it does not matter which ally owns the metal extractor, the entire team will benefit.',
		type="list",
		def="disabled",
		section= "resourcing",
		items={
			{key="disabled", name="Disabled", desc="Metal Extractor income will NOT be split between allies."},
			{key="enabled", name="Enabled", desc="Metal Extractor income will be split between allies."},
		}
	},
	{
		key    = 'mincome',
		name   = 'Automatic Metal Income',
		desc   = 'Determines the amount of metal income you start with per second. It increases every <Basic Metal Income Increase Interval> (2.5 minutes, is the default) by this amount until it hits <Maximum Basic Income> income.',
		type="list",
		def="enabled",
		section= "resourcing",
		items={
			{key="disabled", name="Disabled", desc="Turn off the automatic metal income"},
			{key="enabled", name="Enabled", desc="Metal income is automatic and graduates as the game goes along."},
		}
	},
	{
		key    = 'basicincome',
		name   = 'Basic Metal Income Amount',
		desc   = 'Determines the amount of metal income you start with per second. It increases every <Basic Metal Income Increase Interval> (2.5 minutes, is the default) by this amount until it hits <Maximum Basic Income> income.',
		type   = 'number',
		section= 'resourcing',
		def    = 1,
		min    = 0,
		max    = 5,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
	{
		key    = 'basicincomeinterval',
		name   = 'Basic Metal Income Increase Interval',
		desc   = 'Determines how often your basic metal income is increased.',
		type   = 'number',
		section= 'resourcing',
		def    = 2.5,
		min    = 0.5,
		max    = 5,
		step   = 0.5,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
	{
		key    = 'maxbasicincome',
		name   = 'Maximum Basic Metal Income',
		desc   = 'Determines the maximum amount that your basic metal income level can reach.',
		type   = 'number',
		section= 'resourcing',
		def    = 5,
		min    = 0,
		max    = 30,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},

	{
		key    = 'supplyoptions',
		name   = 'Supply Options',
		desc   = 'Allows you to set options that effect Supply',
		type   = 'section',
	},
	{
		key    = 'supplycap',
		name   = 'Maximum Army Supply',
		desc   = 'Determines the maximum army supply that is allowed.',
		type   = 'number',
		section= 'supplyoptions',
		def    = 400,
		min    = 0,
		max    = 400,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
	{
		key    = 'intrinsicsupply',
		name   = 'Intrinsic Army Supply',
		desc   = 'How much supply is available from the beginning of the game without needing supply depots?',
		type   = 'number',
		section= 'supplyoptions',
		def    = 0,
		min    = 0,
		max    = 400,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
	
-- Gameplay Options	
	{
		key    = 'gameplayoptions',
		name   = 'Gameplay Options',
		desc   = 'Various gameplay options that will change how the game is played.',
		type   = 'section',
	},
	{
		key="deathmode",
		name="Game End Mode",
		desc="What it takes to eliminate a team",
		type="list",
		def="com",
		section="gameplayoptions",
		items={
			{key="neverend", name="None", desc="Teams are never eliminated"},
			{key="com", name="Kill all enemy Overseers", desc="When a team has no Overseers left, it loses"},
			{key="killall", name="Kill everything", desc="Every last unit must be eliminated, no exceptions!"},
		}
	},
	{
		key    = "shareddynamicalliancevictory",
		name   = "Dynamic Alliance Victory?",
		desc   = "Should dynamic alliance teams share in a victory, or should they be forced to turn on one another?",
		type   = "bool",
		def    = true,
		section= "gameplayoptions",
    },
	{
		key    = 'unitheat',
		name   = 'Unit Heat Amount',
		desc   = 'How much heat does each unit generate when it moves through an area?',
		type   = 'number',
		section= 'gameplayoptions',
		def    = 42,
		min    = 0,
		max    = 100,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
	
-- Control Victory Options	
	{
		key    = 'controlvictoryoptions',
		name   = 'Control Victory Options',
		desc   = 'Allows you to control at a granular level the individual options for Control Point Victory',
		type   = 'section',
	},
	{
		key="scoremode",
		name="Scoring Mode (Control Victory Points)",
		desc="Defines how the game is played",
		type="list",
		def="disabled",
		section="controlvictoryoptions",
		items={
			{key="disabled", name="Disabled", desc="Disable Control Points as a victory condition."},
			{key="countdown", name="Countdown", desc="A Control Point decreases all opponents' scores, zero means defeat."},
			{key="tugofwar", name="Tug of War", desc="A Control Point steals enemy score, zero means defeat."},
			{key="domination", name="Domination", desc="Holding all Control Points will grant 1000 score, first to reach the score limit wins."},
		}
	},	
	{
		key    = 'limitscore',
		name   = 'Total Score',
		desc   = 'Total score amount available.',
		type   = 'number',
		section= 'controlvictoryoptions',
		def    = 3500,
		min    = 500,
		max    = 5000,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
	{
		key    = "numberofcontrolpoints",
		name   = "Set number of Control Points on the map",
		desc   = "Sets the number of control points on the map and scales the total score amount to match. Has no effect if Preset map configs are enabled.",		
		section= "controlvictoryoptions",
		type="list",
		def="7",
		section= "controlvictoryoptions",
		items={
			{key="7", name="7", desc=""},
			{key="13", name="13", desc=""},
			{key="19", name="19", desc=""},
			{key="25", name="25", desc=""},
		}
    },
	{
		key    = "usemapconfig",
		name   = "Use preset map-specific Control Point locations?",
		desc   = "Should the control point config for this map be used instead of autogenerated control points?",		
		type="list",
		def="disabled",
		section= "controlvictoryoptions",
		items={
			{key="disabled", name="Disabled", desc="This will tell the game to use autogenerated control points."},
			{key="enabled", name="Enabled", desc="This will tell the game to use preset map control points (Set via map config)."},
		}
    },
	{
		key    = 'captureradius',
		name   = 'Capture Radius',
		desc   = 'Radius around a point in which to capture it.',
		type   = 'number',
		section= 'controlvictoryoptions',
		def    = 500,
		min    = 100,
		max    = 1000,
		step   = 25,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
		{
		key    = 'capturetime',
		name   = 'Capture Time',
		desc   = 'Time to capture a point.',
		type   = 'number',
		section= 'controlvictoryoptions',
		def    = 30,
		min    = 1,
		max    = 60,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
		{
		key    = 'capturebonus',
		name   = 'Capture Bonus',
		desc   = 'Percentage of how much faster capture takes place by adding more units.',
		type   = 'number',
		section= 'controlvictoryoptions',
		def    = 5,
		min    = 1,
		max    = 100,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
		{
		key    = 'decapspeed',
		name   = 'De-Cap Speed',
		desc   = 'Speed multiplier for neutralizing an enemy point.',
		type   = 'number',
		section= 'controlvictoryoptions',
		def    = 2,
		min    = 1,
		max    = 3,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
		{
		key    = 'starttime',
		name   = 'Start Time',
		desc   = 'Number of seconds until control points can be captured.',
		type   = 'number',
		section= 'controlvictoryoptions',
		def    = 180,
		min    = 0,
		max    = 300,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
		{
		key    = 'metalperpoint',
		name   = 'Metal given to each player per captured point',
		desc   = 'Each player on an allyteam that has captured a point will receive this amount of resources per point captured per second',
		type   = 'number',
		section= 'controlvictoryoptions',
		def    = 0,
		min    = 0,
		max    = 20,
		step   = 0.1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
		{
		key    = 'energyperpoint',
		name   = 'Energy given to each player per captured point',
		desc   = 'Each player on an allyteam that has captured a point will receive this amount of resources per point captured per second',
		type   = 'number',
		section= 'controlvictoryoptions',
		def    = 0,
		min    = 0,
		max    = 20,
		step   = 0.1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
		{
		key    = 'dominationscoretime',
		name   = 'Domination Score Time',
		desc   = 'Time needed holding all points to score in multi domination.',
		type   = 'number',
		section= 'controlvictoryoptions',
		def    = 30,
		min    = 1,
		max    = 60,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
		{
		key    = 'tugofwarmodifier',
		name   = 'Tug of War Modifier',
		desc   = 'The amount of score transfered between opponents when points are captured is multiplied by this amount.',
		type   = 'number',
		section= 'controlvictoryoptions',
		def    = 2,
		min    = 0,
		max    = 6,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
		{
		key    = 'dominationscore',
		name   = 'Score awarded for Domination',
		desc   = 'The amount of score awarded when you have scored a domination.',
		type   = 'number',
		section= 'controlvictoryoptions',
		def    = 1000,
		min    = 500,
		max    = 1000,
		step   = 1,  -- quantization is aligned to the def value
		-- (step <= 0) means that there is no quantization
	},
-- End Control Victory Options
	
-- Chicken Defense Options
	{
		key    = 'chicken_defense_options',
		name   = 'Chicken Defense Options',
		desc   = 'Various gameplay options that will change how the Chicken Defense is played.',
		type   = 'section',
	},
	{
		key    = 'chickengloballos',
		name   = 'Global LOS for all players',
		desc   = 'If enabled, all players will have Global Line of Sight.',
		type="list",
		def="enabled",
		section= "chicken_defense_options",
		items={
			{key="disabled", name="Disabled", desc="Players do not get complete map vision"},
			{key="enabled", name="Enabled", desc="All players get total map vision"},
		}
	},
	{
		key="mo_chickenstart",
		name="Burrow Placement",
		desc="Control where burrows spawn",
		type="list",
		def="avoid",
		section="chicken_defense_options",
		items={
			{key="anywhere", name="Anywhere", desc="Burrows can spawn anywhere"},
			{key="avoid", name="Avoid Players", desc="Burrows do not spawn on player units"},
			{key="initialbox", name="Initial Start Box", desc="First wave spawns in chicken start box, following burrows avoid players"},
			{key="alwaysbox", name="Always Start Box", desc="Burrows always spawn in chicken start box"},
		}
	},
	{
		key="mo_queendifficulty",
		name="Queen Difficulty",
		desc="How hard is the Chicken Queen?",
		type="list",
		def="automatic",
		section="chicken_defense_options",
		items={
			{key="automatic", name="Automatic", desc="Automatically chooses queen difficulty based upon overall Chickens difficulty"},
			{key="ve_chickenq", name="Very Easy", desc="Cakewalk"},
			{key="e_chickenq", name="Easy", desc="Somewhat Challenging"},
			{key="n_chickenq", name="Normal", desc="A Good Challenge"},
			{key="h_chickenq", name="Hard", desc="Serious Business"},
			{key="vh_chickenq", name="Very Hard", desc="Extreme Challenge"},
			{key="epic_chickenq", name="Epic!", desc="Impossible!"},
			{key="asc", name="Ascending", desc="Each difficulty after the next"},
		}
	},
	{
		key    = "mo_queentime",
		name   = "Max Queen Arrival (Minutes)",
		desc   = "Queen will spawn after given time.",
		type   = "number",
		def    = 40,
		min    = 1,
		max    = 90,
		step   = 1,
		section= "chicken_defense_options",
	},
	{
		key    = "mo_maxchicken",
		name   = "Chicken Limit",
		desc   = "Maximum number of chickens on map.",
		type   = "number",
		def    = 300,
		min    = 50,
		max    = 5000,
		step   = 25,
		section= "chicken_defense_options",
	},
	{
		key    = "mo_graceperiod",
		name   = "Grace Period (Seconds)",
		desc   = "Time before chickens become active.",
		type   = "number",
		def    = 300,
		min    = 5,
		max    = 900,
		step   = 5,
		section= "chicken_defense_options",
	},
	{
		key    = "mo_queenanger",
		name   = "Add Queen Anger",
		desc   = "Killing burrows adds to queen anger.",
		type   = "bool",
		def    = true,
		section= "chicken_defense_options",
    },
	
-- Chicken Defense Custom Difficulty Settings
	{
		key    = 'chicken_defense_custom_difficulty_settings',
		name   = 'Chicken Defense Custom Difficulty Settings',
		desc   = 'Use these settings to adjust the difficulty of Chicken Defense',
		type   = 'section',
	},
	{
		key    = "mo_custom_burrowspawn",
		name   = "Burrow Spawn Rate (Seconds)",
		desc   = "Time between burrow spawns.",
		type   = "number",
		def    = 120,
		min    = 1,
		max    = 600,
		step   = 1,
		section= "chicken_defense_custom_difficulty_settings",
	},
	{
		key    = "mo_custom_chickenspawn",
		name   = "Wave Spawn Rate (Seconds)",
		desc   = "Time between chicken waves.",
		type   = "number",
		def    = 90,
		min    = 10,
		max    = 600,
		step   = 1,
		section= "chicken_defense_custom_difficulty_settings",
	},
	{
		key    = "mo_custom_minchicken",
		name   = "Min Chickens Per Player",
		desc   = "Minimum Number of chickens before spawn chance kicks in",
		type   = "number",
		def    = 8,
		min    = 1,
		max    = 250,
		step   = 1,
		section= "chicken_defense_custom_difficulty_settings",
	},
	{
		key    = "mo_custom_spawnchance",
		name   = "Spawn Chance (Percent)",
		desc   = "Percent chance of each chicken spawn once greater thwn the min chickens per player limit",
		type   = "number",
		def    = 33,
		min    = 0,
		max    = 100,
		step   = 1,
		section= "chicken_defense_custom_difficulty_settings",
	},
	{
		key    = "mo_custom_angerbonus",
		name   = "Burrow Kill Anger (Percent)",
		desc   = "Seconds added per burrow kill.",
		type   = "number",
		def    = 0.15,
		min    = 0,
		max    = 100,
		step   = 0.01,
		section= "chicken_defense_custom_difficulty_settings",
	},
	{
		key    = "mo_custom_queenspawnmult",
		name   = "Queen Wave Size Mod",
		desc   = "Number of squads spawned by the queen at once.",
		type   = "number",
		def    = 1,
		min    = 0,
		max    = 5,
		step   = 1,
		section= "chicken_defense_custom_difficulty_settings",
	},
	{
		key    = "mo_custom_expstep",
		name   = "Bonus Experience",
		desc   = "Exp each chicken will receive by the end of the game",
		type   = "number",
		def    = 1.5,
		min    = 0,
		max    = 2.5,
		step   = 0.1,
		section= "chicken_defense_custom_difficulty_settings",
	},
	{
		key    = "mo_custom_lobberemp",
		name   = "Lobber EMP Duration",
		desc   = "Max duration of Lobber EMP artillery",
		type   = "number",
		def    = 4,
		min    = 0,
		max    = 30,
		step   = 0.5,
		section= "chicken_defense_custom_difficulty_settings",
	},
	{
		key    = "mo_custom_damagemod",
		name   = "Damage Mod",
		desc   = "Percent modifier for chicken damage",
		type   = "number",
		def    = 100,
		min    = 5,
		max    = 250,
		step   = 1,
		section= "chicken_defense_custom_difficulty_settings",
	},
}

return options