function exe_generator_side_operational_map()
{

	for(var _ii = 0; _ii < array_length(sides_array); _ii++)
		{
			var _current_side_operational_map = sides_array[_ii][$ "side_operational_map"];
			if array_length(_current_side_operational_map) < 1
				{
					//create side_operational_map	
					_current_side_operational_map = array_create(game_struct.map_xsize);
					for(var _kk = 0; _kk < array_length(_current_side_operational_map); _kk++)
						{
							_current_side_operational_map[_kk] = array_create(game_struct.map_ysize);
						}
					for (var _xx = 0; _xx < game_struct.map_xsize; _xx++) 
						{
							for (var _yy = 0; _yy < game_struct.map_ysize; _yy++) 
								{
									set_empty_template_array(_current_side_operational_map,_xx,_yy);
									var _choosen_terrain = "unknown_";
									_choosen_terrain += string(	irandom(mapeditor.max_random_terrain-1)+1	);
									_current_side_operational_map[_xx][_yy][$ "tile_terrain"] = [_choosen_terrain];
									_current_side_operational_map[_xx][_yy][$ "fog_of_war"] = [game_struct.current_turn,0,0,0];
								}
						}
					sides_array[_ii][$ "side_operational_map"] = _current_side_operational_map;
					delete(_current_side_operational_map);
				}
			exe_global_visibility_for_given_side(_ii); // preparing checklist_for_gameboard_eoturn to further use
			
			var _side_array_numlist = [_ii];
			exe_expand_and_uncover_map_by_list_v2(checklist_for_gameboard_eoturn,_side_array_numlist);
		}
}