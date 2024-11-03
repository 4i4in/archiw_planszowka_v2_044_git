function side_dwarf()
{
	var _side_struct =
		{
			side_name : "dwarf",
			max_units_on_tile : 8,
			max_AP_saving : 2,
			city_legal : ["m9","h7","p4","s2"],
			fortyfications_legal : ["m9","h9","p9","s9"],
			utylity : [ "utylity_dwarf_armory","utylity_dwarf_artist","utylity_dwarf_bank","utylity_dwarf_deepmine",
						"utylity_dwarf_forge","utylity_dwarf_halloffame","utylity_dwarf_market","utylity_dwarf_mine",
						"utylity_dwarf_runesmith","utylity_dwarf_smith","utylity_dwarf_tronroom","utylity_dwarf_watchtower",
						"utylity_dwarf_lumberjack"],
			buildings_detection_value : [1,1,0], //ground, overwater, underwater
			buildings_detection_terrain_modyfier : 
													[
														[	"mountains",-3,"hills",-2,"plain",-1,"sand",-1,
															"zhallow_water",-0.5,"deep_water",-1,
															"wood",-0.4,"forest",-0.5
														],
														[	"mountains",-5,"hills",-4,"plain",-3,"sand",-2,
															"zhallow_water",-1,"deep_water",-2
														],
														[	"mountains",-25,"hills",-20,"plain",-8,"sand",-5,
															"zhallow_water",-2,"deep_water",-1,
															"craters",-0.4,"reefs_rocks",-0.6,"rifts",-0.1,
															"shallow",-0.6,"vulcano",-1
														]
													],
			ruins : ["ruins_dwarf_city", "ruins_dwarf_sculpture","ruins_dwarf_fortyfication","ruins_dwarf_mine",
					"ruins_dwarf_watchtower",],
			consumption : ["city_dwarf_eat_food",-1,"city_dwarf_eat_beer",-1],
			stayhome_production : [	"stayhome_dwarf_prop_forest_lumber",0.1,"stayhome_dwarf_prop_wood_lumber",0.1,
									"stayhome_dwarf_river_water",0.5,"stayhome_dwarf_prop_oasis_water",0.5,
									"stayhome_dwarf_prop_crops_food",0.3,"stayhome_dwarf_prop_animals_food",0.6,
									"stayhome_dwarf_resource_gems",0.2,"stayhome_dwarf_resource_precious_metals",0.2,
									"stayhome_dwarf_resource_salt",0.2,"stayhome_dwarf_resource_stones",0.5,],
			
			mining : ["utylity_dwarf_mine",2.5,"utylity_dwarf_deepmine",3],
			
			mining_mine_ability : ["coal","gems","granite","iron","marble","precious_metals","rare_metals","salt","stones"],
			mining_nomine_ability : ["marble","precious_metals","salt","stones"],
			lumberjack : ["utylity_dwarf_lumberjack",2,"city_dwarf_lumberjack",0.1],
			
			production_buffs : ["mining_prop_craters",1.1,"mining_terrain_mountains",1.2,
								"stayhome_terrain_mountains",1.2,"stayhome_terrain_hills",1.1],
			visibility_granted : ["river","road","tile_props_forest","tile_props_wood","tile_props_swamps",
									"tile_props_vulcano"],
			visibility_multipler : ["mountains",3,"hills",2,"zhallow_water",1.3,"utylity_dwarf_watchtower",2],
			foregin_policy :	[	["always_attack",],["oportunity_attack",],
									["oportunity_support",],["always_support","dwarf",],
									["alllow_embarking","dwarf",],
								],
			avilable_units : [
								["ship","dwarf_ship1",				//recognition used only for painting on map, to generate name
								//those two above MUST exist on 0 an 1 position in array, rest must only have coherent lines "something", value
								"picture", "unit_dwarf_ship1",	//picture
								"control", ["dwarf",1],						//who control - by default own side
								"visibility", [-5,-5],					//negative is more visible | max, current
								"detection_value", [5,7,0],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [1,1],							//number of them max, current 
								"carry_transport", ["carry_max",1000],		//transportation ability 
								"active_buffs", ["move",-1,"overwater",-1,],			//active buffs
								"buff_list", ["move",-1,"overwater",-1,],							//buff list
								"legal_terrains",["zhallow_water","deep_water","river","delta"],	//legal_terrains to place units
								"detection_modyfier",	[
															[	"mountains",-6,"hills",-4,"plain",-2,"sand",-2,
																"zhallow_water",-1,"deep_water",-2,
																"wood",-0.8,"forest",-1
															],
															[	"mountains",-5,"hills",-4,"plain",-3,"sand",-2,
																"zhallow_water",-1,"deep_water",-2
															],
															[	"mountains",-25,"hills",-20,"plain",-8,"sand",-5,
																"zhallow_water",-2,"deep_water",-1,
																"craters",-0.4,"reefs_rocks",-0.6,"rifts",-0.1,
																"shallow",-0.6,"vulcano",-1
															]
														],
								"move_cost",	[	"zhallow_water",1,"deep_water",1.5,
													"shallow",0.8,"reefs_rocks",1,
													"mountains",10,"hills",6,"plain",3,"sand",2,
													],
								"base_values",	["place_taken",500,"hitpoints",200,"detection_value", [7,5,0],"visibility",-5,"carry_max",1000,	
												],
								],
						//================
								["merchant","dwarf_merchant",				//recognition used only for painting on map, to generate name
								//those two above MUST exist on 0 an 1 position in array, rest must only have coherent lines "something", value
								"picture", "population_dwarf_merchant",	//picture
								"control", ["dwarf",1],						//who control - by default own side
								"visibility", [6,-10],					//negative is more visible | max, current
								"detection_value", [7,5,0],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current
								"number", [10,10],							//number of them max, current 
								"carry_transport", ["carry_max",100,],		//transportation ability 
								"active_buffs", ["move",-1,"curious",-1,"embark_overwater",-1,],			//active buffs
								"buff_list", ["move",-1,"curious",-1,"embark_overwater",-1,"spell1",3],							//buff list
								"legal_terrains",["mountains","hills","plain","sand","ship","road"],	//legal_terrains to place units
								"hiding_bonus",["mountains",5,"hills",3,"rifts",0.5,"craters",0.3,],	//hiding bonus on terrain
								"detection_modyfier",	[
															[	"mountains",-3,"hills",-2,"plain",-1,"sand",-1,
																"zhallow_water",-0.5,"deep_water",-1,
																"wood",-0.4,"forest",-0.5
															],
															[	"mountains",-5,"hills",-4,"plain",-3,"sand",-2,
																"zhallow_water",-1,"deep_water",-2
															],
															[	"mountains",-25,"hills",-20,"plain",-8,"sand",-5,
																"zhallow_water",-2,"deep_water",-1,
																"craters",-0.4,"reefs_rocks",-0.6,"rifts",-0.1,
																"shallow",-0.6,"vulcano",-1
															]
														],
								"move_cost",	[	"mountains",3,"hills",2,"plain",1,"sand",1,"ship",1,"road",-0.5,
													"wood",0.2,"forest",0.3,"shallow",0,"swamps",0.3,"reefs_rocks",0,
													"rifts",0.1,"craters",0.1],
								"base_values",	["place_taken",1,"hitpoints",2,"detection_value", [7,5,0],"visibility",-10,"carry_max",10,	
												],
								],
						//================
								["militia",	"dwarf_militia",				//recognition used only for painting on map, to generate name
								"picture", "population_dwarf_militia",		//picture
								"control", ["dwarf",1],						//who control - by default own side
								"visibility", [6,-3],						//negative is more visible
								"detection_value", [7,5,0],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [200,200],							//number of them max, current 
								"carry_transport", ["carry_max",100],		//transportation ability 
								"active_buffs", ["attack",-1,"move",-1,"inspector",-1,"embark_overwater",-1,],			//active buffs
								"buff_list", ["attack",-1,"move",-1,"inspector",-1,"embark_overwater",-1,],			//buff list
								"legal_terrains",["mountains","hills","plain","sand","ship"],	//legal_terrains to place units
								"hiding_bonus",["mountains",5,"hills",3,"rifts",0.5,"craters",0.3,],	//hiding bonus on terrain
								"detection_modyfier",	[
															[	"mountains",-3,"hills",-2,"plain",-1,"sand",-1,
																"zhallow_water",-0.5,"deep_water",-1,
																"wood",-0.4,"forest",-0.5
															],
															[	"mountains",-5,"hills",-4,"plain",-3,"sand",-2,
																"zhallow_water",-1,"deep_water",-2
															],
															[	"mountains",-25,"hills",-20,"plain",-8,"sand",-5,
																"zhallow_water",-2,"deep_water",-1,
																"craters",-0.4,"reefs_rocks",-0.6,"rifts",-0.1,
																"shallow",-0.6,"vulcano",-1
															]
														],
								"move_cost",	[	"mountains",3,"hills",2,"plain",1,"sand",1,"ship",1,"road",-0.5,
													"wood",0.2,"forest",0.3,"shallow",0,"swamps",0.3,"reefs_rocks",0,
													"rifts",0.1,"craters",0.1],
								"base_values",	["place_taken",1,"hitpoints",2,"detection_value", [7,5,0],"visibility",-3,"carry_max",4,	
												],
								],
						//================
								["miner",	"dwarf_miner",					//recognition used only for painting on map, to generate name
								"picture", "population_dwarf_miner",	//picture
								"control", ["dwarf",1],						//who control - by default own side
								"visibility", [12,-3],						//negative is more visible
								"detection_value", [7,5,0],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [10,10],							//number of them max, current 
								"carry_transport", ["carry_max",100],		//transportation ability 
								"active_buffs", ["move",-1,"curious",-1,"embark_overwater",-1,],							//active buffs
								"buff_list", ["move",-1,"curious",-1,"embark_overwater",-1,],							//buff list
								"legal_terrains",["mountains","hills","plain","sand","ship"],	//legal_terrains to place units
								"hiding_bonus",["mountains",5,"hills",3,"rifts",0.8,"craters",0.6,],	//hiding bonus on terrain
								"detection_modyfier",	[
															[	"mountains",-3,"hills",-2,"plain",-1,"sand",-1,
																"zhallow_water",-0.5,"deep_water",-1,
																"wood",-0.4,"forest",-0.5
															],
															[	"mountains",-5,"hills",-4,"plain",-3,"sand",-2,
																"zhallow_water",-1,"deep_water",-2
															],
															[	"mountains",-25,"hills",-20,"plain",-8,"sand",-5,
																"zhallow_water",-2,"deep_water",-1,
																"craters",-0.4,"reefs_rocks",-0.6,"rifts",-0.1,
																"shallow",-0.6,"vulcano",-1
															]
														],
								"move_cost",	[	"mountains",3,"hills",2,"plain",1,"sand",1,"ship",1,"road",-0.5,
													"wood",0.2,"forest",0.3,"shallow",0,"swamps",0.3,"reefs_rocks",0,
													"rifts",0.1,"craters",0.1],
								"base_values",	["place_taken",1,"hitpoints",2,"detection_value", [7,5,0],"visibility",-3,"carry_max",4,	
												],
								],
						//================
								["sheppards",	"dwarf_sheppards",				//recognition used only for painting on map, to generate name
								"picture", "population_dwarf_sheppards",	//picture
								"control", ["dwarf",1],						//who control - by default own side
								"visibility", [12,-3],						//negative is more visible
								"detection_value", [7,5,0],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [10,10],							//number of them max, current 
								"carry_transport", ["carry_max",100],		//transportation ability 
								"active_buffs", ["move",-1,"curious",-1,"embark_overwater",-1,],							//active buffs
								"buff_list", ["move",-1,"curious",-1,"embark_overwater",-1,],							//buff list
								"legal_terrains",["mountains","hills","plain","sand","ship"],	//legal_terrains to place units
								"hiding_bonus",["mountains",5,"hills",3,"rifts",0.5,"craters",0.3,],	//hiding bonus on terrain
								"detection_modyfier",	[
															[	"mountains",-3,"hills",-2,"plain",-1,"sand",-1,
																"zhallow_water",-0.5,"deep_water",-1,
																"wood",-0.4,"forest",-0.5
															],
															[	"mountains",-5,"hills",-4,"plain",-3,"sand",-2,
																"zhallow_water",-1,"deep_water",-2
															],
															[	"mountains",-25,"hills",-20,"plain",-8,"sand",-5,
																"zhallow_water",-2,"deep_water",-1,
																"craters",-0.4,"reefs_rocks",-0.6,"rifts",-0.1,
																"shallow",-0.6,"vulcano",-1
															]
														],
								"move_cost",	[	"mountains",3,"hills",2,"plain",1,"sand",1,"ship",1,"road",-0.5,
													"wood",0.2,"forest",0.3,"shallow",0,"swamps",0.3,"reefs_rocks",0,
													"rifts",0.1,"craters",0.1],
								"base_values",	["place_taken",1,"hitpoints",2,"detection_value", [7,5,0],"visibility",-3,"carry_max",4,
												],
								],
						//================
								["townsfolk",	"dwarf_townsfolk",			//recognition used only for painting on map, to generate name
								"picture", "population_dwarf_townsfolk",	//picture
								"control", ["dwarf",1],						//who control - by default own side
								"visibility", [-3,-3],						//negative is more visible
								"detection_value", [7,5,0],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current
								"number", [100,100],							//number of them max, current 
								"carry_transport", ["carry_max",100],		//transportation ability 
								"active_buffs", ["move",-1,"embark_overwater",-1,],							//active buffs
								"buff_list", ["move",-1,"embark_overwater",-1,],							//buff list
								"legal_terrains",["mountains","hills","plain","sand","ship"],	//legal_terrains to place units
								"detection_modyfier",	[
															[	"mountains",-3,"hills",-2,"plain",-1,"sand",-1,
																"zhallow_water",-0.5,"deep_water",-1,
																"wood",-0.4,"forest",-0.5
															],
															[	"mountains",-5,"hills",-4,"plain",-3,"sand",-2,
																"zhallow_water",-1,"deep_water",-2
															],
															[	"mountains",-25,"hills",-20,"plain",-8,"sand",-5,
																"zhallow_water",-2,"deep_water",-1,
																"craters",-0.4,"reefs_rocks",-0.6,"rifts",-0.1,
																"shallow",-0.6,"vulcano",-1
															]
														],
								"move_cost",	[	"mountains",3,"hills",2,"plain",1,"sand",1,"ship",1,"road",-0.5,
													"wood",0.2,"forest",0.3,"shallow",0,"swamps",0.3,"reefs_rocks",0,
													"rifts",0.1,"craters",0.1],
								"base_values",	["place_taken",1,"hitpoints",2,"detection_value", [7,5,0],"visibility",-3,"carry_max",4,		
												],
								]
						//================
							],
			side_operational_map : array_create(0),
			
		}
		
	return(_side_struct);
}