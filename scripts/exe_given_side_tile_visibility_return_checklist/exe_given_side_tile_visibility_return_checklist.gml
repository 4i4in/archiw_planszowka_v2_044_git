//subscript of exe_global_visibility_for_given_side
function exe_given_side_tile_visibility_return_checklist(_visibility_detectors,_this_side_name,_side_num,_xx,_yy)
{
	var _create_string = array_last(_visibility_detectors);
	var _local_highest_value = 0;
	var _visibility_terrain_modyfier = [[],[],[]];
	var _local_xy_array = game_board_array[_xx][_yy];
	//facilites vis
	var _local_utylities_gameboard = _local_xy_array[$ "facility"];
	for(var _ii = 0; _ii < array_length(_local_utylities_gameboard); _ii++)
		{
			var _utylity_found_gameboard = _local_utylities_gameboard[_ii];
			for(var _kk = 0; _kk < array_length(_visibility_detectors); _kk++)
				{
					var _detector_found = _visibility_detectors[_kk];
					if string_starts_with(_utylity_found_gameboard,_detector_found)
						{
							if string_starts_with(_utylity_found_gameboard,_create_string)
								{
									var  _city_value_str = string_delete(_utylity_found_gameboard,1,string_length(_create_string)+1);
									_city_value_str = real(_city_value_str);
									_local_highest_value += _city_value_str;
								}
							else
								{
									_local_highest_value ++;	
								}
						}
				}
		}
	//adapting to	array ground, overwater, underwater
	var _detecting_array = variable_clone(sides_array[_side_num][$ "buildings_detection_value"]);
	if _local_highest_value > 0
		{
			for(var _ii = 0; _ii < array_length(_detecting_array); _ii++)
				{
					_detecting_array[_ii] *= _local_highest_value;
					_visibility_terrain_modyfier[_ii] = variable_clone(sides_array[_side_num][$ "buildings_detection_terrain_modyfier"][_ii]);
				}
		}
	else
		{
			_detecting_array = [0,0,0];
		}
	//units vis
	var _str_units_groups = _local_xy_array[$ "units"];
	for(var _ii = 0; _ii < array_length(_str_units_groups); _ii++)
		{
			var _this_group_array = _str_units_groups[_ii];
			for(var _kk = 1; _kk < array_length(_this_group_array);_kk++)
				{
					var _this_unit_array = _this_group_array[_kk];
					var _temporary_detection_value = [];
					var _unit_detection_modyfier = [[],[],[]];
					var _temporary_detection_multipler = 0;
					for(var _tt = 2; _tt < array_length(_this_unit_array); _tt +=2)
						{
							var _info_string = _this_unit_array[_tt];
							if string_starts_with(_info_string,"detection_value")
								{
									_temporary_detection_value = _this_unit_array[_tt+1];
								}
							if string_starts_with(_info_string,"control")
								{
									var _check_control_array = _this_unit_array[_tt+1];
									for(var _pp = 0; _pp < array_length(_check_control_array);_pp+=2)
										{
											var _control_found = _check_control_array[_pp];
											if _control_found = _this_side_name
												{
													_temporary_detection_multipler = _check_control_array[_pp+1];
												}
										}
								}
							if string_starts_with(_info_string,"detection_modyfier")
								{
									_unit_detection_modyfier = variable_clone(_this_unit_array[_tt+1]);
								}
						}
					if _temporary_detection_multipler > 0
						{
							for(var _tt = 0; _tt < array_length(_detecting_array); _tt++)
								{
									if _temporary_detection_value[_tt]*_temporary_detection_multipler > _detecting_array[_tt]
										{
											_detecting_array[_tt] = 	_temporary_detection_value[_tt]*_temporary_detection_multipler;
											_visibility_terrain_modyfier[_tt] = _unit_detection_modyfier[_tt];
										};
								}
						}
				}
		}
	//check array
	_local_highest_value = 0;
	for(var _ii = 0; _ii < array_length(_detecting_array); _ii++)
		{
			if _detecting_array[_ii] > _local_highest_value	{	_local_highest_value = _detecting_array[_ii];	};
		}
	if _local_highest_value > 0
		{
			var _checklist_value = exe_xy_side_visibility_multipler(_side_num,_xx,_yy);
			for(var _ii = 0; _ii < array_length(_detecting_array); _ii++)
				{
					_detecting_array[_ii] *= _checklist_value;
				}
			var _push_this = [_xx,_yy,_detecting_array,_visibility_terrain_modyfier];
			array_push(checklist_for_gameboard_eoturn,_push_this);	
		}
}