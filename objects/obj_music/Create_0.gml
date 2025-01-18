pausedmusic = 0
fadeoff = 0
global.music = 0
roomname = 523
arena = false
global.mu = -4
music = -4
secretmusic = -4
musicID = -4
secretmusicID = -4
pillarmusicID = -4
secret = false
secretend = false
pillar_on_camera = false
prevpillar_on_camera = false
room_arr = [
	[Realtitlescreen, mu_title, mu_medievalsecret, false],  //this room gets skipped though room goto
	[rm_levelselect, mu_title, mu_medievalsecret, false], // levelselect
	[entrance_1, mu_entrance, mu_medievalsecret, false], // entrance
	[dungeon_1, mu_dungeon, mu_dungeonsecret, false], //dungeo,
	[dungeon_8, mu_dungeon, mu_dungeonsecret, true], //dungeon
	[dungeon_9, mu_dungeondepth, mu_dungeonsecret, true], //dungeon
	[medieval_1, mu_medievalentrance, mu_medievalsecret, false], //pizzascape
	[medieval_2, mu_medievalentrance, mu_medievalsecret, true], //pizzascape
	[medieval_3, mu_medievalremix, mu_medievalsecret, true], //pizzascape
	[medieval_5, mu_medievalremix, mu_medievalsecret, true], //pizzascape
	[medieval_6, mu_medieval, mu_medievalsecret, true], //pizzascape
	[ruin_1, mu_ruin, mu_ruinsecret, false], //ruin
	[ruin_6, mu_ruin, mu_ruinsecret, true], //ruin
	[ruin_7, mu_ruinremix, mu_ruinsecret, true], //ruin
	[badland_1, mu_desert, mu_desertsecret, false], //badland
	[badland_8, mu_desert, mu_desertsecret, true], //badland
	[badland_9, mu_ufo, mu_desertsecret, true], // badland
	[badland_mart4, mu_ufo, mu_desertsecret, true], //BADLAND MART
	[badland_10, mu_desert, mu_desertsecret, true], //BADLAND
	[forest_1, mu_forest, mu_medievalsecret, false], //forst
	[forest_G1, mu_forest, mu_medievalsecret, true], // FORest
	[forest_G1b, mu_gustavo, mu_medievalsecret, false], // foreest
	[forest_5, mu_forest, mu_medievalsecret, true], // forest the 5th
	[chateau_1, mu_chateau, mu_medievalsecret, false], // pizzaSCARE
	[sewer_1, mu_sewer, mu_medievalsecret, false], // oh shit!
	[freezer_1, mu_freezer, mu_medievalsecret, false],
	[kidsparty_1, mu_kidsparty, mu_medievalsecret, false], // kids party
	[minigolf_1, mu_minigolf, mu_medievalsecret, false], // golf
	[industrial_1, mu_industrial, mu_medievalsecret, false], // factory
	[street_intro, mu_street, mu_medievalsecret, false], // streets (pig city) 
	[farm_2, mu_farm, mu_farmsecret, false], //fun farm
	[space_1, mu_pinball, mu_pinballsecret, false], //space
	[graveyard_1, mu_graveyard, mu_medievalsecret, false],  //wasteyard or graveyard
	[saloon_1, mu_saloon, mu_saloonsecret, false], //saloon
	[plage_entrance, mu_beach, mu_medievalsecret, false], // crust cove (beach)
	[war_1, mu_war, mu_medievalsecret, false], // war
]
