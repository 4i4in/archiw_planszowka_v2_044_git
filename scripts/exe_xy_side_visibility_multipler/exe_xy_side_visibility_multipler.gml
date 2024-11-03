function exe_xy_side_visibility_multipler(_side_num,_xx,_yy)
{
	var _checklist_value = game_struct.base_visibility_value;
	var _side_visibility_multiplers = sides_array[_side_num][$ "visibility_multipler"];
	var _local_xy_array = game_board_array[_xx][_yy];
	var _gameboard_check_array = [];
	//add_terrain
	array_push(_gameboard_check_array,_local_xy_array[$ "tile_terrain"][0]);
	//add props
	var _gameboard_props_array =  _local_xy_array[$ "tile_props"];
	for(var _ii = 0; _ii < array_length(_gameboard_props_array); _ii++)
		{
			array_push(_gameboard_check_array,_gameboard_props_array[_ii]);
		}
	//add facilities
	var _gameboard_props_array =  _local_xy_array[$ "facility"];
	for(var _ii = 0; _ii < array_length(_gameboard_props_array); _ii++)
		{
			array_push(_gameboard_check_array,_gameboard_props_array[_ii]);
		}
	
	//checking
	for(var _ii = 0; _ii < array_length(_gameboard_check_array); _ii++)
		{
			var _gameboard_stuff_here = _gameboard_check_array[_ii];
			for(var _kk = 0; _kk < array_length(_side_visibility_multiplers); _kk +=2)
				{
					var _multipler_name_here = _side_visibility_multiplers[_kk];
					if string_starts_with(_gameboard_stuff_here,_multipler_name_here)
						{
							_checklist_value *= _side_visibility_multiplers[_kk+1];
						}
				}
		}
	return(_checklist_value);
}