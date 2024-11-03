function exe_compare_terrain_to_legals(_xx,_yy,_this_group_legal_terrains,_concealed,_curent_side)
{
	var _terrain_is_legal = 0;
	var _terrain_here = game_board_array[_xx][_yy][$ "tile_terrain"][0];
	
	var _same_tile = 0
	if _xx = display_terrain_menu_x && _yy = display_terrain_menu_y
		{
			_same_tile = 1
		}		
	//check for road
	var _road_is_continuos = 0;
	if _same_tile < 1	&& _concealed < 1
		{
			_road_is_continuos = exe_check_if_road_is_continuos_from_to(display_terrain_menu_x,display_terrain_menu_y,_xx,_yy);
		}
		
	//check for rivers
	var _river_is_continuos = 0;
	if _same_tile < 1	&& _concealed < 1
		{
			_river_is_continuos = exe_check_if_river_is_continuos_from_to(display_terrain_menu_x,display_terrain_menu_y,_xx,_yy);
		}
	var _river_delta_exist = 0
	if _same_tile < 1	&& _concealed < 1
		{
			_river_delta_exist = exe_check_if_river_delta_exist(_xx,_yy);
		}
	
	//legalising_terrain
	for(var _ii = 0; _ii < array_length(_this_group_legal_terrains); _ii++)
		{
			if string_starts_with(_terrain_here,_this_group_legal_terrains[_ii])
				{
					_terrain_is_legal = 1;
				}
			if _river_is_continuos > 0
				{
					if string_starts_with("river",_this_group_legal_terrains[_ii])
						{
							_terrain_is_legal = 1;
						}
				}
			if _river_delta_exist > 0
				{
					if string_starts_with("delta",_this_group_legal_terrains[_ii])
						{
							_terrain_is_legal = 1;
						}
				}
		}
	var _embarkable_ship_exist = exe_check_if_can_embark_on_ship(_xx,_yy,_curent_side);
		
	var _legal_array = [_terrain_is_legal,_terrain_here,1];//road, ship and so on	
	if _road_is_continuos > 0	{array_push(_legal_array,"road",1);};
	if _embarkable_ship_exist > -1	{array_push(_legal_array,"ship",1);};
	if _river_is_continuos > 0	{array_push(_legal_array,"river",1);};
	if _river_delta_exist > 0	{array_push(_legal_array,"delta",1);};
	
	//adding props on legal terrain
	if _terrain_is_legal > 0	&& _road_is_continuos < 1
		{
			var _props_here = game_board_array[_xx][_yy][$ "tile_props"];
			for(var _ii = 0; _ii < array_length(_props_here); _ii++)
				{
					if string_starts_with(_props_here[_ii],"wood")	
						{
							var _prop_value = string_delete(_props_here[_ii],1,string_length("wood_"));
							var _prop_value = real(_prop_value);
							array_push(_legal_array,"wood",_prop_value);
						};
					if string_starts_with(_props_here[_ii],"forest")	
						{
							var _prop_value = string_delete(_props_here[_ii],1,string_length("forest_"));
							var _prop_value = real(_prop_value);
							array_push(_legal_array,"forest",_prop_value);
						};
					if string_starts_with(_props_here[_ii],"shallow")	
						{
							var _prop_value = string_delete(_props_here[_ii],1,string_length("shallow_"));
							var _prop_value = real(_prop_value);
							array_push(_legal_array,"shallow",_prop_value);
						};
					if string_starts_with(_props_here[_ii],"swamps")	
						{
							var _prop_value = string_delete(_props_here[_ii],1,string_length("swamps_"));
							var _prop_value = real(_prop_value);
							array_push(_legal_array,"swamps",_prop_value);
						};
					if string_starts_with(_props_here[_ii],"reefs_rocks")	
						{
							var _prop_value = string_delete(_props_here[_ii],1,string_length("reefs_rocks_"));
							var _prop_value = real(_prop_value);
							array_push(_legal_array,"reefs_rocks",_prop_value);
						};
					if string_starts_with(_props_here[_ii],"rifts")	
						{
							var _prop_value = string_delete(_props_here[_ii],1,string_length("rifts_"));
							var _prop_value = real(_prop_value);
							array_push(_legal_array,"rifts",_prop_value);
						};
					if string_starts_with(_props_here[_ii],"craters")	
						{
							var _prop_value = string_delete(_props_here[_ii],1,string_length("craters_"));
							var _prop_value = real(_prop_value);
							array_push(_legal_array,"craters",_prop_value);
						};
				}
		}

	return(_legal_array);
}