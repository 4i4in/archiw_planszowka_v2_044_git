function side_highelf()
{
	var _side_struct =
		{
			side_name : "highelf",
			max_units_on_tile : 8,
			max_AP_saving : 2,
			city_legal : ["m2","h3","p9","s3"],
			fortyfications_legal : ["m1","h3","p9","s3"],
			utylity : [ "utylity_highelf_agriculture","utylity_highelf_armory","utylity_highelf_artist","utylity_highelf_mage",
						"utylity_highelf_shipyard","utylity_highelf_shrine","utylity_highelf_smith","utylity_highelf_stables",
						"utylity_highelf_watchtower"],
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
			ruins : ["ruins_highelf_city", "ruins_highelf_sculpture","ruins_highelf_fortyfication","ruins_highelf_shrine",
					"ruins_highelf_watchtower"],		
			
			consumption : ["city_highelf_eat_food",-1,"city_highelf_eat_water",-1,"city_highelf_eat_highmagic",-1],
			stayhome_production : ["stayhome_highelf_prop_forest_lumber",0.2,"stayhome_highelf_prop_wood_lumber",0.3],
			
			
			mining : [],
			mining_mine_ability : ["coal","gems","granite","iron","marble","precious_metals","rare_metals","salt","stones"],
			mining_nomine_ability : ["marble","precious_metals","salt","stones"],
			lumberjack : ["city_highelf_lumberjack",0.2],
			production_buffs : ["mining_prop_craters",0.1,"mining_terrain_mountains",0.2,
								"stayhome_terrain_mountains",1.2,"stayhome_terrain_hills",1.1],
			visibility_granted : ["river","road","tile_props_forest","tile_props_wood","tile_props_swamps",
									"tile_props_vulcano"],
			visibility_multipler : ["mountains",3,"hills",2,"zhallow_water",1.4,"utylity_highelf_watchtower",2],
			foregin_policy :	[	["always_attack",],["oportunity_attack",],
									["oportunity_support",],["always_support","highelf",],
									["alllow_embarking","highelf",],
								],
			avilable_units : [
								["ship","highelf_ship1",				//recognition used only for painting on map, to generate name
								//those two above MUST exist on 0 an 1 position in array, rest must only have coherent lines "something", value
								"picture", "unit_highelf_ship1",	//picture
								"control", ["highelf",1],						//who control - by default own side
								"visibility", [-5,-5],					//negative is more visible | max, current
								"detection_value", [5,7,0],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [1,1],						//number of them max, current 
								"carry_transport", ["carry_max",1000,],		//transportation ability 
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
													"mountains",10,"hills",6,"plain",3,"sand",2
													],
								"base_values",	["place_taken",500,"hitpoints",200,"detection_value", [7,5,0],"visibility",-5,"carry_max",1000,	
												],
								],
						//================
								["militia",	"highelf_militia",	//recognition used only for painting on map, to generate name
								"picture", "population_highelf_militia",	//picture
								"control",  ["highelf",1],					//who control - by default own side
								"visibility", [-3,-3],						//negative is more visible
								"detection_value", [7,5,0],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [20,20],						//number of them max, current 
								"carry_transport", ["carry_max",100,],		//transportation ability 
								"active_buffs", ["attack",-1,"move",-1,"curious",-1,"embark_overwater",-1,],							//active buffs
								"buff_list", ["attack",-1,"move",-1,"curious",-1,"embark_overwater",-1,],							//buff list
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
								"base_values",	["place_taken",1,"hitpoints",1,"detection_value", [7,5,0],"visibility",-3,"carry_max",2,	
												],
							],
					//================
							["peasants",	"highelf_peasants",	//recognition used only for painting on map, to generate name
								"picture", "population_highelf_peasants",	//picture
								"control", ["highelf",1],					//who control - by default own side
								"visibility", [-3,-3],						//negative is more visible
								"detection_value", [7,5,0],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [50,50],						//number of them max, current 
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
								"base_values",	["place_taken",1,"hitpoints",1,"detection_value", [7,5,0],"visibility",-3,"carry_max",2,	
												],
							],
					//================
							["sheppards",	"highelf_sheppards",	//recognition used only for painting on map, to generate name
								"picture", "population_highelf_sheppards",	//picture
								"control", ["highelf",1],					//who control - by default own side
								"visibility", [-3,-3],						//negative is more visible
								"detection_value", [7,5,0],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [40,40],						//number of them max, current 
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
								"base_values",	["place_taken",1,"hitpoints",1,"detection_value", [7,5,0],"visibility",-3,"carry_max",2,	
												],
							],
					//================
							["townsfolk",	"highelf_townsfolk",	//recognition used only for painting on map, to generate name
								"picture", "population_highelf_townsfolk",	//picture
								"control", ["highelf",1],					//who control - by default own side
								"visibility", [-3,-3],						//negative is more visible
								"detection_value", [7,5,0],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [100,100],						//number of them max, current 
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
								"base_values",	["place_taken",1,"hitpoints",1,"detection_value", [7,5,0],"visibility",-3,"carry_max",2,	
												],
							],
					//================
							["seamen",	"highelf_seamen",	//recognition used only for painting on map, to generate name
								"picture", "population_highelf_seamen",	//picture
								"control", ["highelf",1],					//who control - by default own side
								"visibility", [-3,-3],						//negative is more visible
								"detection_value", [7,5,0],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [20,20],						//number of them max, current 
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
								"base_values",	["place_taken",1,"hitpoints",1,"detection_value", [7,5,0],"visibility",-3,"carry_max",2,	
												],
							]
						],
			side_operational_map : array_create(0),
		}
		
	return(_side_struct);
}