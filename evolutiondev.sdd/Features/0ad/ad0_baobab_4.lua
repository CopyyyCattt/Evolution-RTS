local objectname= "ad0_baobab_4" 
local featureDef	=	{
	name			= "ad0_baobab_4",
	world				="All Worlds",
	description				="Baobab Tree",
	category				="Vegetation",
	object				="features/0ad/ad0_baobab_4.s3o",
	footprintx				=1,
	footprintz				=1,
	height				=30,
	blocking				=true,
	upright				=true,
	hitdensity				=0,
	energy				=1,

	damage				=100,
	flammable				=true,
	reclaimable				=true,
	autoreclaimable				=true,
	featurereclamate				="smudge01",
	seqnamereclamate				="tree1reclamate",
	customparams = { 
		randomrotate		= "true", 
	}, 
}
return lowerkeys({[objectname] = featureDef}) 
