function exe_compare_terrain_to_legal_disembark(_current_x,_current_y,_chosen_group)
{
	var _terrain_here = game_board_array[_current_x][_current_y][$ "tile_terrain"][0];
	var _string_choosen_group = operational_array[display_terrain_menu_x][display_terrain_menu_y][$ "units"][_chosen_group];
	
	var _legal_terrains_for_embarked_units = 0;
	for(var _ii = 1; _ii < array_length(_string_choosen_group); _ii++)
		{
			if _legal_terrains_for_embarked_units > 0	{break;};
			var _this_unit = _string_choosen_group[_ii];
			var _this_unit_embarked = 0;
			var _this_unit_legal_terrains = [];
			for(var _kk = 2; _kk < array_length(_this_unit); _kk+=2)
				{
					if _this_unit[_kk] == "active_buffs"
						{
							for(var _nn = 0; _nn < array_length(_this_unit[_kk+1]);_nn+=2)
								{
									if _this_unit[_kk+1][_nn] == "embarked"	{_this_unit_embarked = 1;};
								}
						}
					if _this_unit[_kk] == "legal_terrains"
						{
							array_push(_this_unit_legal_terrains,_this_unit[_kk+1]);
						}
				}
			if _this_unit_embarked > 0
				{
					var _search_for_terrain = _this_unit_legal_terrains[0];
					for(var _kk = 0; _kk < array_length(_search_for_terrain);_kk++)
						{
							if string_starts_with(_terrain_here,_search_for_terrain[_kk])
								{
									_legal_terrains_for_embarked_units = 1;
									break;
								}
						}
				}
		}
	return(_legal_terrains_for_embarked_units);
}