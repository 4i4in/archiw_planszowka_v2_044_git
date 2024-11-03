//exe_transfer_raw_to_array_and_go_to_editor_step1
function exe_transfer_raw_to_array_and_go_to_editor_step1()
{
	
	if lclick_cooldown_counter < 1
	{
		//recreating game_board_array
		game_board_array = [];
		array_resize(game_board_array,game_struct.map_xsize);
		create_game_board_array_new();
		
		//transfer raw grid to terrain
		for (xxx = 0; xxx < game_struct.map_xsize; xxx++) 
			{
				for (yyy = 0; yyy < game_struct.map_ysize; yyy++) 
					{
						var _id_terrain = game_board_array[xxx][yyy][$ "tile_terrain"]
						var _id_props = game_board_array[xxx][yyy][$ "tile_props"]
						if array_length(_id_terrain) < 1
							{
								//terrain selection
								var _choosen_terrain = "blank";
								aaa = ds_grid_get(raw_editor_minimap, xxx, yyy);
								if aaa > mapeditor.hills_level	{_choosen_terrain = "mountains_"	};
								if aaa <= mapeditor.hills_level	{_choosen_terrain = "hills_"	};
								if aaa <= mapeditor.plain_level	{_choosen_terrain = "plain_"	};
								if aaa <= mapeditor.sand_level	{_choosen_terrain = "sand_"	};
								if aaa <= mapeditor.water_level	{_choosen_terrain = "zhallow_water_"	};
								if aaa <= mapeditor.deep_water_level	{_choosen_terrain = "deep_water_"	};

								_choosen_terrain += string(	irandom(mapeditor.max_random_terrain-1)+1	);
								array_push(_id_terrain,_choosen_terrain);
							
								//props selection
								//shallows
								var _choosen_props = "no_props";
								if string_char_at(string(_choosen_terrain), 1) = "z"	
									{
										if abs(mapeditor.water_level) - abs(aaa) < mapeditor.terrain_raw_to_array_treshold
											{	
												_choosen_props = "shallow_" + string(	irandom(mapeditor.max_random_terrain-1)+1	);
												array_push(_id_props,_choosen_props);
											}
										if abs(mapeditor.water_level) - abs(aaa) < mapeditor.terrain_raw_to_array_treshold *2
											{	
												if random(mapeditor.chance) <	mapeditor.terrain_raw_to_array_treshold *2
													{
														_choosen_props = "reefs_rocks_" + string(	irandom(mapeditor.max_random_terrain-1)+1	);
														array_push(_id_props,_choosen_props);
													}
											}
									}
							}
					}
			}
		//manipulating singular terrains / monolitics
		var _rnd_sqr = sqr(mapeditor.terrain_raw_to_array_treshold);
		var _rnd_asis = mapeditor.terrain_raw_to_array_treshold;
		for (xxx = 0; xxx < game_struct.map_xsize; xxx++) 
			{
				for (yyy = 0; yyy < game_struct.map_ysize; yyy++) 
					{
						//center
						var _id_terrain_xy = game_board_array[xxx][yyy][$ "tile_terrain"][@ 0];
						var _terrain_around_string = return_string_terrain_around();
						var _d_water_count = string_count("d", _terrain_around_string);
						var _z_water_count = string_count("z", _terrain_around_string);
						var _s_sands_count = string_count("s", _terrain_around_string);
						var _p_plains_count = string_count("p", _terrain_around_string);
						var _h_hills_count = string_count("h", _terrain_around_string);
						var _m_mountains_count = string_count("m", _terrain_around_string);
						
						var _terrain_1char = string_char_at(string(_id_terrain_xy), 1);
						
						var _id_props_xy = game_board_array[xxx][yyy][$ "tile_props"]
						
						//change singular islands to shallows
						if	_terrain_1char = "s" && _d_water_count + _z_water_count > 6	&&
							random(mapeditor.chance) < _rnd_asis * (_d_water_count + _z_water_count)
							{
								game_board_array[xxx][yyy][$ "tile_terrain"][@ 0] = "zhallow_water_" + string(	irandom(mapeditor.max_random_terrain)	);
								array_push(_id_props_xy,"shallow_9");
								//add reef rocks
								if random(mapeditor.chance) < _rnd_asis
									{	array_push(_id_props_xy,"reefs_rocks_" + string(	irandom(mapeditor.max_random_terrain-1)+1	)	);	};
								
							}
						//break monolitic mountains
						if	_terrain_1char = "m" && _m_mountains_count > 6	&&
							random(mapeditor.chance) < _rnd_sqr * _m_mountains_count
							{
								var _choice2 = irandom(1);
								if _choice2 = 0
									{	game_board_array[xxx][yyy][$ "tile_terrain"][@ 0] = "hills_" + string(	irandom(mapeditor.max_random_terrain)	);	}
								if _choice2 = 1
									{	game_board_array[xxx][yyy][$ "tile_terrain"][@ 0] = "plain_" + string(	irandom(mapeditor.max_random_terrain)	);	}
							}
						//break monolitic hills
						if	_terrain_1char = "h" && _h_hills_count > 6	&&
							random(mapeditor.chance) < _rnd_sqr * _h_hills_count
							{
								var _choice2 = irandom(1);
								if _choice2 = 0
									{	game_board_array[xxx][yyy][$ "tile_terrain"][@ 0] = "mountains_" + string(	irandom(mapeditor.max_random_terrain)	);	}
								if _choice2 = 1
									{	game_board_array[xxx][yyy][$ "tile_terrain"][@ 0] = "plain_" + string(	irandom(mapeditor.max_random_terrain)	);	}
							}
						//break monolitic plains
						if	_terrain_1char = "p" && _p_plains_count > 6	&&
							random(mapeditor.chance) < _rnd_sqr * _p_plains_count
							{
								var _choice2 = irandom(1);
								if _choice2 = 0
									{	game_board_array[xxx][yyy][$ "tile_terrain"][@ 0] = "mountains_" + string(	irandom(mapeditor.max_random_terrain)	);	}
								if _choice2 = 1
									{	game_board_array[xxx][yyy][$ "tile_terrain"][@ 0] = "hills_" + string(	irandom(mapeditor.max_random_terrain)	);	}
							}
					}
			}
		//adding some props
		for (xxx = 0; xxx < game_struct.map_xsize; xxx++) 
		{
			for (yyy = 0; yyy < game_struct.map_ysize; yyy++) 
				{
					//center
					var _id_terrain_xy = game_board_array[xxx][yyy][$ "tile_terrain"][@ 0]
					var _terrain_around_string = return_string_terrain_around();//works on xxx, yyy
					var _d_water_count = string_count("d", _terrain_around_string);
					var _z_water_count = string_count("z", _terrain_around_string);
					var _s_sands_count = string_count("s", _terrain_around_string);
					var _p_plains_count = string_count("p", _terrain_around_string);
					var _h_hills_count = string_count("h", _terrain_around_string);
					var _m_mountains_count = string_count("m", _terrain_around_string);
					
					var _id_props_xy = game_board_array[xxx][yyy][$ "tile_props"]

					//props for terrain cases
					var _choosen_props = "";
					switch(string_char_at(string(_id_terrain_xy), 1))
							{
								case "d":	
										//add volcano
										if random(mapeditor.chance) < _rnd_sqr
											{
												_choosen_props = "vulcano_" + string(	irandom(mapeditor.max_random_terrain)	);
												array_push(_id_props_xy,_choosen_props);
											}
									break;
								case "z":
									//placing salt lake
									if _d_water_count + _z_water_count = 0	&& random(mapeditor.chance) < _s_sands_count/10
										{	place_salt_lake(_id_props_xy,_choosen_props)	};
									break;
								case "s":	
									if _d_water_count + _z_water_count + _p_plains_count = 0	&&
											random(mapeditor.chance) < _rnd_asis * _s_sands_count/10
										{	place_oasis(_id_props_xy,_choosen_props)	};
									break;
								case "p":	
									var _choice2 = irandom(1);
									if	random(mapeditor.chance) < _rnd_asis * _p_plains_count/2	&& _choice2 = 0
										{	place_forest(_id_props_xy,_choosen_props)	};
									if	random(mapeditor.chance) < _rnd_asis * _p_plains_count/2	&& _choice2 = 1
										{	place_wood(_id_props_xy,_choosen_props)	};
									break;
								case "h":	
									var _choice2 = irandom(1);
									if	random(mapeditor.chance) < _rnd_asis * _p_plains_count/2	&& _choice2 = 0
										{	place_forest(_id_props_xy,_choosen_props)	};
									if	random(mapeditor.chance) < _rnd_asis * _p_plains_count/2	&& _choice2 = 1
										{	place_wood(_id_props_xy,_choosen_props)	};
									break;
								case "m":	
									var _choice3 = irandom(2);
									if	random(mapeditor.chance) < _rnd_asis * _p_plains_count/2	&& _choice3 = 0
										{	place_forest(_id_props_xy,_choosen_props)	};
									if	random(mapeditor.chance) < _rnd_asis * _p_plains_count/2	&& _choice3 = 1
										{	place_wood(_id_props_xy,_choosen_props)	};
									if	random(mapeditor.chance) < _rnd_sqr * _m_mountains_count	&& _choice3 = 2
										{	place_vulcano(_id_props_xy,_choosen_props)	};
									break;
							}				
					//props unrelated to terrain just random spawning
					if	random(mapeditor.chance) < _rnd_sqr
						{	place_rifts(_id_props_xy,_choosen_props)	};
					if	random(mapeditor.chance) < _rnd_sqr
						{	place_craters(_id_props_xy,_choosen_props)	};
					if	random(mapeditor.chance) < _rnd_sqr
						{	place_pollution(_id_props_xy,_choosen_props)	};
					if	random(mapeditor.chance) < _rnd_sqr
						{	place_deasise(_id_props_xy,_choosen_props)	};
					
				}
		}
		
		//adding conections between props and terrain around
		for (xxx = 0; xxx < game_struct.map_xsize; xxx++) 
			{
				for (yyy = 0; yyy < game_struct.map_ysize; yyy++) 
					{
						var _id_terrain_xy = game_board_array[xxx][yyy][$ "tile_terrain"][@ 0];
						var _terrain_1char = string_char_at(string(_id_terrain_xy), 1);
						
						//mountains and hills on rocky shores
						if _terrain_1char = "s" || _terrain_1char = "p"
							{
								var _reef_rock_sum = sum_given_props_around(xxx,yyy,"reefs_rocks_");
								if _reef_rock_sum > 0
									{
										if random(1) < _rnd_sqr*_reef_rock_sum
											{
												_choosen_terrain = "mountains_";
												_choosen_terrain += string(	irandom(mapeditor.max_random_terrain-1)+1	);
												game_board_array[xxx][yyy][$ "tile_terrain"][@ 0] = _choosen_terrain;
											}
									}
							}
						//adding resource salt to salt lakes
						if _terrain_1char = "s"
							{
								var _salt_lake_sum = sum_given_props_around(xxx,yyy,"salt_lake_");
								if _salt_lake_sum > 0
									{
										if random(1) < _rnd_sqr*_salt_lake_sum
											{
												var _random_resource = irandom( 2 )+1;
												add_resources(xxx,yyy,"salt_",_random_resource);
											}
									}
							}
						if _terrain_1char = "z"
							{
								var _salt_lake_sum = sum_given_props_around(xxx,yyy,"salt_lake_");
								if _salt_lake_sum > 0
									{
										var _random_resource = irandom( mapeditor.max_random_terrain -1)+1;
										add_resources(xxx,yyy,"salt_",_random_resource);
									}
							}
						//adding resource animals and crops to terrain
						if	_terrain_1char = "s" || _terrain_1char = "p"	||
							_terrain_1char = "h" || _terrain_1char = "m"
							{
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( 2 )+1;
										add_resources(xxx,yyy,"animals_",_random_resource);
									}
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( 2 )+1;
										add_resources(xxx,yyy,"crops_",_random_resource);
									}
							}
						//more crops and animals for plains
						if	_terrain_1char = "p"
							{
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( mapeditor.max_random_terrain -1)+1;
										add_resources(xxx,yyy,"animals_",_random_resource);
									}
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( mapeditor.max_random_terrain -1)+1;
										add_resources(xxx,yyy,"crops_",_random_resource);
									}
							}
						//on hills
						if	_terrain_1char = "h"
							{
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( mapeditor.max_random_terrain -1)+1;
										add_resources(xxx,yyy,"coal_",_random_resource);
									}
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( 3)+1;
										add_resources(xxx,yyy,"iron_",_random_resource);
									}
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( mapeditor.max_random_terrain -1)+1;
										add_resources(xxx,yyy,"granite_",_random_resource);
									}
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( 2)+1;
										add_resources(xxx,yyy,"stones_",_random_resource);
									}
							}
						//on mountains
						if	_terrain_1char = "m"
							{
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( 3)+1;
										add_resources(xxx,yyy,"coal_",_random_resource);
									}
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( 3)+1;
										add_resources(xxx,yyy,"iron_",_random_resource);
									}
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( mapeditor.max_random_terrain -1)+1;
										add_resources(xxx,yyy,"granite_",_random_resource);
									}
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( mapeditor.max_random_terrain -1)+1;
										add_resources(xxx,yyy,"stones_",_random_resource);
									}
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( mapeditor.max_random_terrain -1)+1;
										add_resources(xxx,yyy,"gems_",_random_resource);
									}
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( 3)+1;
										add_resources(xxx,yyy,"precious_metals_",_random_resource);
									}
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( 3)+1;
										add_resources(xxx,yyy,"gems_",_random_resource);
									}
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( 3)+1;
										add_resources(xxx,yyy,"precious_metals_",_random_resource);
									}
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( 3)+1;
										add_resources(xxx,yyy,"rare_metals_",_random_resource);
									}
							}
						//on sands
						if	_terrain_1char = "s"
							{
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( 1)+1;
										add_resources(xxx,yyy,"coal_",_random_resource);
									}
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( mapeditor.max_random_terrain -1)+1;
										add_resources(xxx,yyy,"marble_",_random_resource);
									}
								if random(1) < _rnd_sqr
									{
										var _random_resource = irandom( mapeditor.max_random_terrain -1)+1;
										add_resources(xxx,yyy,"stones_",_random_resource);
									}
							}
						//around craters
						var _check_sum = sum_given_props_around(xxx,yyy,"craters_");
						if _check_sum > 0
							{
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( _check_sum)+1;
										add_resources(xxx,yyy,"stones_",_random_resource);
									}
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( _check_sum)+1;
										add_resources(xxx,yyy,"rare_metals_",_random_resource);
									}
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( _check_sum)+1;
										add_resources(xxx,yyy,"precious_metals_",_random_resource);
									}
							}
						//around rifts
						var _check_sum = sum_given_props_around(xxx,yyy,"rifts_");
						if _check_sum > 0
							{
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( _check_sum)+1;
										add_resources(xxx,yyy,"rare_metals_",_random_resource);
									}
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( _check_sum)+1;
										add_resources(xxx,yyy,"precious_metals_",_random_resource);
									}
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( _check_sum)+1;
										add_resources(xxx,yyy,"gems_",_random_resource);
									}
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( _check_sum)+1;
										add_resources(xxx,yyy,"coal_",_random_resource);
									}
							}
						//around vulcano
						var _check_sum = sum_given_props_around(xxx,yyy,"vulcano_");
						if _check_sum > 0
							{
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( _check_sum)+1;
										add_resources(xxx,yyy,"rare_metals_",_random_resource);
									}
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( _check_sum)+1;
										add_resources(xxx,yyy,"granite_",_random_resource);
									}
							}
						//around oasis
						var _check_sum = sum_given_props_around(xxx,yyy,"oasis_");
						if _check_sum > 0
							{
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( _check_sum)+1;
										add_resources(xxx,yyy,"animals_",_random_resource);
									}
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( _check_sum)+1;
										add_resources(xxx,yyy,"crops_",_random_resource);
									}
								if random(1) < _rnd_asis
									{
										var _random_resource = irandom( _check_sum)+1;
										add_resources(xxx,yyy,"water_",_random_resource);
									}
							}
							
					}
			}

		ds_grid_destroy(raw_editor_minimap);
		surface_free(raw_minimap_surface);
		
		game_struct.minimap_scale = floor(	(game_struct.right_side_menu_cell_size * game_struct.cell_size)/game_struct.map_xsize	);
		game_struct.mimimap_xpos = wgw - game_struct.map_xsize *	game_struct.minimap_scale;
		game_struct.mimimap_ypos = 0;

		clickable_loaded = 0;
		lclick_cooldown_counter = -1;//exception for automatic start next step
		exe_start_editor_step1();
	}
	
}