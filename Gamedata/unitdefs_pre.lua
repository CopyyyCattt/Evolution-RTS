Shared.buildList = {
	[[ehbotfac]],
	[[eminifac]],
	[[ebasefactory]],
	[[eamphibfac]],
	[[eairplant]],
	[[etech1]],
	[[emetalextractor]],
	[[esolar2]],
	[[egeothermal]],
	[[efusion2]],
	[[estorage]],
	[[eradar2]],
	[[ejammer2]],
	[[ekmar]],
	[[emine]],
	[[elightturret2]],
	[[eheavyturret2]],
	[[elaserbattery]],
	[[eartyturret]],
	-- [[euwturret]],
	[[eshieldgen]],
	[[esilo]],
	[[escoutdrone]],
	[[ebox]],
	[[ehbotengineer]],
	[[eorb]],
	-- [[ecommander]],
}

Shared.buildListChicken = {
	[[croost]]
}
	
local turrets = {
	[[ehbotpeewee_turret]],
	[[ehbotthud_turret]],
	[[ehbotsniper_turret]],
	[[ehbotrocko_turret]],
}

Shared.buildListTurret = {}
for i = 1, #Shared.buildList do
	Shared.buildListTurret[i] = Shared.buildList[i]
end
for i = 1, #turrets do
	Shared.buildListTurret[#Shared.buildListTurret + 1] = turrets[i]
end

local factory = {
	[[ehbotfac]],
	[[eminifac]],
	[[ebasefactory]],
	[[eamphibfac]],
	[[eairplant]],
	[[ehbotpeewee]],
	[[ehbotthud]],
	[[ehbotsniper]],
	[[eallterrlight]],
	[[eallterrriot]],
	[[eallterrheavy]],
	[[elighttank3]],
	[[eriottank2]],
	[[eheavytank3]],
	[[eamphibbuggy]],
	[[eamphibriot]],
	[[eamphibmedtank]],
	[[efighter]],
	[[egunship2]],
	[[ebomber]],
}

Shared.buildListFactory = {}
for i = 1, #Shared.buildList do
	Shared.buildListFactory[i] = Shared.buildList[i]
end
for i = 1, #factory do
	Shared.buildListFactory[#Shared.buildListFactory + 1] = factory[i]
end

Shared.buildListAIOverseer = {
	------------- Basic
	[[elaserbattery]],
	[[escoutdrone]],
	[[eartyturret_up3]],
	[[ejammerai]],
	[[eorb_up1]],
	[[eorb_up2]],
	[[eorb_up3]],
	[[etech1ai]],
	[[etech2ai]],
	[[etech3ai]],
	[[emetalextractor_up1]],
	[[emetalextractor_up2]],
	[[emetalextractor_up3]],
	[[eunitfactoryai]],
	[[eantinukeai]],
	[[elobberai]],
	[[esiloai]],
	[[eturretheavyai]],
	[[eturretheavyai_up3]],
	[[eturretlightai]],
	[[eturretlightai_up3]],
	[[emetalextractor]],
	[[elifterai]],
	[[eaiturret]],
	[[ehbotfac]],
	[[eminifac]],
	[[ebasefactory]],
	[[eamphibfac]],
	[[eairplant]],
	[[etech1]],
	[[esolar2]],
	[[egeothermal]],
	[[efusion2]],
	[[estorage]],
	[[eradar2]],
	[[ejammer2]],
	[[ekmar]],
	[[elightturret2]],
	[[eheavyturret2]],
	[[eartyturret]],
	[[euwturret]],
	[[eshieldgen]],
	[[esilo]],
	[[emine]],
	[[ehbotengineer]],
	[[eorb]],
	[[ebox]],
	[[ehbotfac]],
	[[eminifac]],
	[[ebasefactory]],
	[[eamphibfac]],
	[[eairplant]],
	----------------- Upgrade 0
	[[eairemp]],
	[[edrone]],
	[[elighttank3]],
	[[eriottank2]],
	[[eheavytank3]],
	[[emissiletank]],
	[[eartytank]],
	[[elacerator]],
	[[eamphibbuggy]],
	[[eamphibriot]],
	[[eamphibneedle]],
	[[eamphibmedtank]],
	[[eamphibrock]],
	[[eamphibarty]],
	[[eamphibleveler]],
	[[eallterrlight]],
	[[eallterrriot]],
	[[eallterrmed]],
	[[eallterrheavy]],
	[[eallterrassault]],
	[[eallterranarchid]],
	[[eallterrshield]],
	[[escout]],
	[[efighter]],
	[[egunship2]],
	[[ebomber]],
	[[etransport]],
	[[ehbotpeewee]],
	[[ehbotthud]],
	[[ehbotsniper]],
	[[ehbotrocko]],
	[[eorbai]],
	[[ekrow]],
	[[edrone]],
	[[ehbotkarganneth]],
	----------------- Upgrade 1
	[[eairemp_up1]],
	[[edrone_up1]],
	[[elighttank3_up1]],
	[[eriottank2_up1]],
	[[eheavytank3_up1]],
	[[emissiletank_up1]],
	[[eartytank_up1]],
	[[elacerator_up1]],
	[[eamphibbuggy_up1]],
	[[eamphibriot_up1]],
	[[eamphibneedle_up1]],
	[[eamphibmedtank_up1]],
	[[eamphibrock_up1]],
	[[eamphibarty_up1]],
	[[eamphibleveler_up1]],
	[[eallterrlight_up1]],
	[[eallterrriot_up1]],
	[[eallterrmed_up1]],
	[[eallterrheavy_up1]],
	[[eallterrassault_up1]],
	[[eallterranarchid_up1]],
	[[eallterrshield_up1]],
	[[escout_up1]],
	[[efighter_up1]],
	[[egunship2_up1]],
	[[ebomber_up1]],
	[[etransport_up1]],
	[[ehbotpeewee_up1]],
	[[ehbotthud_up1]],
	[[ehbotsniper_up1]],
	[[ehbotrocko_up1]],
	[[ekrow_up1]],
	[[ehbotkarganneth_up1]],
	----------------- Upgrade 2
	[[eairemp_up2]],
	[[edrone_up2]],
	[[elighttank3_up2]],
	[[eriottank2_up2]],
	[[eheavytank3_up2]],
	[[emissiletank_up2]],
	[[eartytank_up2]],
	[[elacerator_up2]],
	[[eamphibbuggy_up2]],
	[[eamphibriot_up2]],
	[[eamphibneedle_up2]],
	[[eamphibmedtank_up2]],
	[[eamphibrock_up2]],
	[[eamphibarty_up2]],
	[[eamphibleveler_up2]],
	[[eallterrlight_up2]],
	[[eallterrriot_up2]],
	[[eallterrmed_up2]],
	[[eallterrheavy_up2]],
	[[eallterrassault_up2]],
	[[eallterranarchid_up2]],
	[[eallterrshield_up2]],
	[[escout_up2]],
	[[efighter_up2]],
	[[egunship2_up2]],
	[[ebomber_up2]],
	[[etransport_up2]],
	[[ehbotpeewee_up2]],
	[[ehbotthud_up2]],
	[[ehbotsniper_up2]],
	[[ehbotrocko_up2]],
	[[ekrow_up2]],
	[[ehbotkarganneth_up2]],
	----------------- Upgrade 3
	[[eairemp_up3]],
	[[edrone_up3]],
	[[elighttank3_up3]],
	[[eriottank2_up3]],
	[[eheavytank3_up3]],
	[[emissiletank_up3]],
	[[eartytank_up3]],
	[[elacerator_up3]],
	[[eamphibbuggy_up3]],
	[[eamphibriot_up3]],
	[[eamphibneedle_up3]],
	[[eamphibmedtank_up3]],
	[[eamphibrock_up3]],
	[[eamphibarty_up3]],
	[[eamphibleveler_up3]],
	[[eallterrlight_up3]],
	[[eallterrriot_up3]],
	[[eallterrmed_up3]],
	[[eallterrheavy_up3]],
	[[eallterrassault_up3]],
	[[eallterranarchid_up3]],
	[[eallterrshield_up3]],
	[[escout_up3]],
	[[efighter_up3]],
	[[egunship2_up3]],
	[[ebomber_up3]],
	[[etransport_up3]],
	[[ehbotpeewee_up3]],
	[[ehbotthud_up3]],
	[[ehbotsniper_up3]],
	[[ehbotrocko_up3]],
	[[ekrow_up3]],
	[[ehbotkarganneth_up3]],
	----------------- Chickens
	[[chickeneco]],
	[[chicken_dodo1]],
	[[chicken_dodo2]],
	[[chicken1]],
	[[chicken1b]],
	[[chicken1c]],
	[[chicken1d]],
	[[chicken1x]],
	[[chicken1y]],
	[[chicken1z]],
	[[chicken2]],
	[[chicken2b]],
	[[chickena1]],
	[[chickena1b]],
	[[chickena1c]],
	[[chickena2]],
	[[chickena2b]],
	[[chickenc1]],
	[[chickenc2]],
	[[chickenc3]],
	[[chickenc3b]],
	[[chickenc3c]],
	[[chickend1]],
	[[chickenf1]],
	[[chickenf1b]],
	[[chickenf2]],
	[[chickenh1]],
	[[chickenh1b]],
	[[chickenh2]],
	[[chickenh3]],
	[[chickenh4]],
	[[chickenh5]],
	[[chickenp1]],
	[[chickenr1]],
	[[chickenr2]],
	[[chickenr3]],
	[[chickens1]],
	[[chickens2]],
	[[chickens3]],
	[[chickenw1]],
	[[chickenw1b]],
	[[chickenw1c]],
	[[chickenw1d]],
	[[chickenw2]],
	[[e_chickenq]],
	[[epic_chickenq]],
	[[h_chickenq]],
	[[n_chickenq]],
	[[ve_chickenq]],
	[[vh_chickenq]],
	[[roost]],
}

-----------------------------
-----------------------------
--Buildlists for factories

Shared.buildListHoverFactory = {
		[[elighttank3]],
		[[eriottank2]],
		[[eheavytank3]],
		[[emissiletank]],
		[[eartytank]],
		[[elacerator]],
}

Shared.buildListHoverFactory_up1 = {
		[[elighttank3_up1]],
		[[eriottank2_up1]],
		[[eheavytank3_up1]],
		[[emissiletank_up1]],
		[[eartytank_up1]],
		[[elacerator_up1]],
}

Shared.buildListHoverFactory_up2 = {
		[[elighttank3_up2]],
		[[eriottank2_up2]],
		[[eheavytank3_up2]],
		[[emissiletank_up2]],
		[[eartytank_up2]],
		[[elacerator_up2]],
}

Shared.buildListHoverFactory_up3 = {
		[[elighttank3_up3]],
		[[eriottank2_up3]],
		[[eheavytank3_up3]],
		[[emissiletank_up3]],
		[[eartytank_up3]],
		[[elacerator_up3]],
}

--
--

Shared.buildListAmphibFactory = {
		[[eamphibbuggy]],
		[[eamphibriot]],
		[[eamphibneedle]],
		[[eamphibmedtank]],
		[[eamphibrock]],
		[[eamphibarty]],
		[[eamphibleveler]],
}

Shared.buildListAmphibFactory_up1 = {
		[[eamphibbuggy_up1]],
		[[eamphibriot_up1]],
		[[eamphibneedle_up1]],
		[[eamphibmedtank_up1]],
		[[eamphibrock_up1]],
		[[eamphibarty_up1]],
		[[eamphibleveler_up1]],
}

Shared.buildListAmphibFactory_up2 = {
		[[eamphibbuggy_up2]],
		[[eamphibriot_up2]],
		[[eamphibneedle_up2]],
		[[eamphibmedtank_up2]],
		[[eamphibrock_up2]],
		[[eamphibarty_up2]],
		[[eamphibleveler_up2]],
}

Shared.buildListAmphibFactory_up3 = {
		[[eamphibbuggy_up3]],
		[[eamphibriot_up3]],
		[[eamphibneedle_up3]],
		[[eamphibmedtank_up3]],
		[[eamphibrock_up3]],
		[[eamphibarty_up3]],
		[[eamphibleveler_up3]],
}

--
--

Shared.buildListAllTerrainFactory = {
		[[eallterrlight]],
		[[eallterrriot]],
		[[eallterrmed]],
		[[eallterrheavy]],
		[[eallterrassault]],
		[[eallterrshield]],
		[[eallterranarchid]],
}

Shared.buildListAllTerrainFactory_up1 = {
		[[eallterrlight_up1]],
		[[eallterrriot_up1]],
		[[eallterrmed_up1]],
		[[eallterrheavy_up1]],
		[[eallterrassault_up1]],
		[[eallterrshield_up1]],
		[[eallterranarchid_up1]],
}

Shared.buildListAllTerrainFactory_up2 = {
		[[eallterrlight_up2]],
		[[eallterrriot_up2]],
		[[eallterrmed_up2]],
		[[eallterrheavy_up2]],
		[[eallterrassault_up2]],
		[[eallterrshield_up2]],
		[[eallterranarchid_up2]],
}

Shared.buildListAllTerrainFactory_up3 = {
		[[eallterrlight_up3]],
		[[eallterrriot_up3]],
		[[eallterrmed_up3]],
		[[eallterrheavy_up3]],
		[[eallterrassault_up3]],
		[[eallterrshield_up3]],
		[[eallterranarchid_up3]],
}
--
--
Shared.buildListAirPlant = {
		-- [[edrone]],
		[[efighter]],
		[[egunship2]],
		[[ebomber]],
		[[eairemp]],
		[[etransport]],
		[[ekrow]],		
}
Shared.buildListAirPlant_up1 = {
		-- [[edrone_up1]],
		[[efighter_up1]],
		[[egunship2_up1]],
		[[ebomber_up1]],
		[[eairemp_up1]],
		[[etransport_up1]],
		[[ekrow_up1]],		
}
Shared.buildListAirPlant_up2 = {
		-- [[edrone_up2]],
		[[efighter_up2]],
		[[egunship2_up2]],
		[[ebomber_up2]],
		[[eairemp_up2]],
		[[etransport_up2]],
		[[ekrow_up2]],		
}
Shared.buildListAirPlant_up3 = {
		-- [[edrone_up3]],
		[[efighter_up3]],
		[[egunship2_up3]],
		[[ebomber_up3]],
		[[eairemp_up3]],
		[[etransport_up3]],
		[[ekrow_up3]],		
}
--
--
Shared.buildListHbotFactory = {
		[[ehbotpeewee]],
		[[ehbotthud]],
		[[ehbotsniper]],
		[[ehbotrocko]],
		[[ehbotkarganneth]],
}
Shared.buildListHbotFactory_up1 = {
		[[ehbotpeewee_up1]],
		[[ehbotthud_up1]],
		[[ehbotsniper_up1]],
		[[ehbotrocko_up1]],
		[[ehbotkarganneth_up1]],
}
Shared.buildListHbotFactory_up2 = {
		[[ehbotpeewee_up2]],
		[[ehbotthud_up2]],
		[[ehbotsniper_up2]],
		[[ehbotrocko_up2]],
		[[ehbotkarganneth_up2]],
}
Shared.buildListHbotFactory_up3 = {
		[[ehbotpeewee_up3]],
		[[ehbotthud_up3]],
		[[ehbotsniper_up3]],
		[[ehbotrocko_up3]],
		[[ehbotkarganneth_up3]],
}
