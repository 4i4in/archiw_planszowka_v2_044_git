function exe_return_legal_terrains_for_this_group(_str_chosen_group)
{
	var _legal_terrains_for_every_unit_in_group = [];
	var _legal_terrains_temporary_array = [];
	for(var _ii = 1; _ii < array_length(_str_chosen_group); _ii ++)
		{
			var _unit_embarked = 0;
			var _this_unit_array = _str_chosen_group[_ii];
			for(var _kk = 2; _kk < array_length(_this_unit_array); _kk +=2)
				{
					if _this_unit_array[_kk] = "active_buffs"
						{
							for(var _nn = 0; _nn < array_length(_this_unit_array[_kk+1]);_nn++)
								{
									if _this_unit_array[_kk+1][_nn] == "embarked"
										{
											var _push_me = ["anyterrain"];
											array_push(_legal_terrains_temporary_array,_push_me);
											_unit_embarked = 1;
										}
								}
						}
				}
			if	_unit_embarked < 1
				{
					for(var _kk = 2; _kk < array_length(_this_unit_array); _kk +=2)
						{
							if _this_unit_array[_kk] = "legal_terrains"
								{
									array_push(_legal_terrains_temporary_array,_this_unit_array[_kk+1]);
									break;
								}
						}
				}
		}
	//comapring temporary arrays
	var _1st_list_in_array = _legal_terrains_temporary_array[0];
	for(var _ii = 0; _ii < array_length(_1st_list_in_array);_ii++)
		{
			var _current_1st_terrain = _1st_list_in_array[_ii];
			var _terrain_is_legal_for_everyone = 0;
			for(var _kk = 0; _kk < array_length(_legal_terrains_temporary_array); _kk++)
				{	
					var _2nd_list_in_array = _legal_terrains_temporary_array[_kk];
					var _terrain_is_legal_for_me = 0;
					for(var _nn = 0; _nn < array_length(_2nd_list_in_array);_nn++)
						{
							if _2nd_list_in_array[_nn] == _current_1st_terrain
								{
									_terrain_is_legal_for_me = 1; break;
								}
							if _2nd_list_in_array[_nn] == "anyterrain"
								{
									_terrain_is_legal_for_me = 1; break;
								}
						}
					if _terrain_is_legal_for_me = 1	{_terrain_is_legal_for_everyone = 1};
					if _terrain_is_legal_for_me = 0	{_terrain_is_legal_for_everyone = 0; break;}; 
				}
			if _terrain_is_legal_for_everyone = 1
				{
					array_push(_legal_terrains_for_every_unit_in_group,_current_1st_terrain);
				}
		}
	return(_legal_terrains_for_every_unit_in_group)
}