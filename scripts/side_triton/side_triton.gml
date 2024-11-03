function side_triton()
{
	var _side_struct =
		{
			side_name : "triton",
			max_units_on_tile : 8,
			max_AP_saving : 2,
			city_legal : ["d9","z9"],
			fortyfications_legal : ["d9","z9","s1"],
			utylity : [],
			buildings_detection_value : [0,1,1], //ground, overwater, underwater
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
			ruins : ["ruins_triton_city", "ruins_triton_sculpture","ruins_triton_fortyfication","ruins_triton_shrine",
					"ruins_triton_temple"],
			
			consumption : ["city_triton_eat_food",-1,"city_triton_eat_water",-2],
			stayhome_production : ["stayhome_triton_prop_forest_lumber",0.2,"stayhome_triton_prop_wood_lumber",0.3],
			
			
			mining : [],
			mining_mine_ability : ["coal","gems","granite","iron","marble","precious_metals","rare_metals","salt","stones"],
			mining_nomine_ability : ["marble","precious_metals","salt","stones"],
			lumberjack : ["utylity_triton_lumberjack",0],
			production_buffs : ["mining_prop_craters",0.1,"mining_terrain_mountains",0.2,
								"stayhome_terrain_mountains",1.2,"stayhome_terrain_hills",1.1],
			visibility_granted : [	"river","road","tile_props_forest","tile_props_wood","tile_props_swamps",
									"tile_props_vulcano","tile_props_craters","tile_props_reefs_rocks",
									"tile_props_rifts","tile_props_shallow"],
			visibility_multipler : ["zhallow_water",2,"deep_water",3],
			foregin_policy :	[	["always_attack",],["oportunity_attack",],
									["oportunity_support",],["always_support","triton",],
									["alllow_embarking","triton",],
								],
			avilable_units : [
								["ship","triton_ship1",				//recognition used only for painting on map, to generate name
								//those two above MUST exist on 0 an 1 position in array, rest must only have coherent lines "something", value
								"picture", "unit_triton_ship1",	//picture
								"control", ["triton",1],						//who control - by default own side
								"visibility", [-5,-5],					//negative is more visible | max, current
								"detection_value", [5,7,0],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"number", [1,1],						//number of them max, current 
								"hitpoints", [10,10],						//hit points max, current 
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
								["merchant",	"triton_merchant",	//recognition used only for painting on map, to generate name
								"picture", "population_triton_merchant",	//picture
								"control", ["triton",1],					//who control - by default own side
								"visibility", [-3,-3],						//negative is more visible
								"detection_value", [0,5,7],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [10,10],						//number of them max, current 
								"carry_transport", ["carry_max",100],		//transportation ability 
								"active_buffs", ["underwater",-1,"curious",-1,"move",-1],			//active buffs
								"buff_list", ["underwater",-1,"overwater",-1,"move",-1,"curious",-1],	
								"legal_terrains",["zhallow_water","deep_water"],	//legal_terrains to place units
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
								"move_cost",	[	"zhallow_water",2,"deep_water",1.5,
													"shallow",0.1,"reefs_rocks",0.1,
													"rifts",0.1,"craters",0.1],
								"base_values",	["place_taken",1,"hitpoints",1,"detection_value", [7,5,0],"visibility",-3,"carry_max",8,	
												],
							],
					//================
							["peasants",	"triton_peasants",	//recognition used only for painting on map, to generate name
								"picture", "population_triton_peasants",	//picture
								"control", ["triton",1],					//who control - by default own side
								"visibility", [-3,-3],						//negative is more visible
								"detection_value", [0,7,5],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [100,100],						//number of them max, current 
								"carry_transport", ["carry_max",100],		//transportation ability 
								"active_buffs", ["overwater",-1,"move",-1],			//active buffs
								"buff_list", ["underwater",-1,"overwater",-1,"move",-1],	
								"legal_terrains",["zhallow_water","deep_water"],	//legal_terrains to place units
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
								"move_cost",	[	"zhallow_water",2,"deep_water",1.5,
													"shallow",0.1,"reefs_rocks",0.1,
													"rifts",0.1,"craters",0.1],
								"base_values",	["place_taken",1,"hitpoints",1,"detection_value", [7,5,0],"visibility",-3,"carry_max",2,
												],
							],
					//================
							["miner",	"triton_miner",	//recognition used only for painting on map, to generate name
								"picture", "population_triton_miner",	//picture
								"control", ["triton",1],					//who control - by default own side
								"visibility", [-3,-3],						//negative is more visible
								"detection_value", [0,7,5],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [100,100],						//number of them max, current 
								"carry_transport", ["carry_max",100],		//transportation ability 
								"active_buffs", ["underwater",-1,"attack",-1,"move",-1,],			//active buffs
								"buff_list", ["underwater",-1,"overwater",-1,"attack",-1,"move",-1],	
								"legal_terrains",["zhallow_water","deep_water"],	//legal_terrains to place units
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
								"move_cost",	[	"zhallow_water",2,"deep_water",1.5,
													"shallow",0.1,"reefs_rocks",0.1,
													"rifts",0.1,"craters",0.1],
								"base_values",	["place_taken",1,"hitpoints",1,"detection_value", [7,5,0],"visibility",-3,"carry_max",2,	
												],
							],
					//================
							["sheppards",	"triton_sheppards",	//recognition used only for painting on map, to generate name
								"picture", "population_triton_sheppards",	//picture
								"control", ["triton",1],					//who control - by default own side
								"visibility", [-3,-3],						//negative is more visible
								"detection_value", [0,7,5],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [100,100],						//number of them max, current 
								"carry_transport", ["carry_max",100],		//transportation ability 
								"active_buffs", ["underwater",-1,"move",-1],			//active buffs
								"buff_list", ["underwater",-1,"overwater",-1,"move",-1],	
								"legal_terrains",["zhallow_water","deep_water"],	//legal_terrains to place units
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
								"move_cost",	[	"zhallow_water",2,"deep_water",1.5,
													"shallow",0.1,"reefs_rocks",0.1,
													"rifts",0.1,"craters",0.1],
								"base_values",	["place_taken",1,"hitpoints",1,"detection_value", [7,5,0],"visibility",-3,"carry_max",2,	
												],
							],
					//================
							["townsfolk",	"triton_townsfolk",	//recognition used only for painting on map, to generate name
								"picture", "population_triton_townsfolk",	//picture
								"control", ["triton",1],					//who control - by default own side
								"visibility", [-3,-3],						//negative is more visible
								"detection_value", [0,7,5],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [100,100],						//number of them max, current 
								"carry_transport", ["carry_max",100],		//transportation ability 
								"active_buffs", ["underwater",-1,"move",-1],			//active buffs
								"buff_list", ["underwater",-1,"overwater",-1,"move",-1],	
								"legal_terrains",["zhallow_water","deep_water"],	//legal_terrains to place units
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
								"move_cost",	[	"zhallow_water",2,"deep_water",1.5,
													"shallow",0.1,"reefs_rocks",0.1,
													"rifts",0.1,"craters",0.1],
								"base_values",	["place_taken",1,"hitpoints",1,"detection_value", [7,5,0],"visibility",-3,"carry_max",2,	
												],
							],
					//================
							["wild",	"triton_wild",	//recognition used only for painting on map, to generate name
								"picture", "population_triton_wild",	//picture
								"control", ["triton",1],					//who control - by default own side
								"visibility", [-3,-3],						//negative is more visible
								"detection_value", [0,7,5],					//how unit see terrain
								"action_points", [10,10],					//action points max, current 
								"hitpoints", [10,10],						//hit points max, current 
								"number", [100,100],						//number of them max, current 
								"carry_transport", ["carry_max",100],		//transportation ability 
								"active_buffs", ["underwater",-1,"curious",-1,"attack",-1,"move",-1,],			//active buffs
								"buff_list", ["underwater",-1,"overwater",-1,"attack",-1,"move",-1,"curious",-1],	
								"legal_terrains",["zhallow_water","deep_water"],	//legal_terrains to place units
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
								"move_cost",	[	"zhallow_water",2,"deep_water",1.5,
													"shallow",0.1,"reefs_rocks",0.1,
													"rifts",0.1,"craters",0.1],
								"base_values",	["place_taken",1,"hitpoints",1,"detection_value", [7,5,0],"visibility",-3,"carry_max",2,	
												],
							]
						],
			side_operational_map : array_create(0),
		}
		
	return(_side_struct);
}