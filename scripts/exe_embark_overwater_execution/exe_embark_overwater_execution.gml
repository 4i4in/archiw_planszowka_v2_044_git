function exe_embark_overwater_execution(_pass_array)
{
	var _current_x = _pass_array[0];
	var _current_y = _pass_array[1];
	var _str_chosen_group = _pass_array[2];
	//var _curent_side = _pass_array[3];
	//var _source_x = _pass_array[4];
	//var _source_y = _pass_array[5];
	//var _action = _pass_array[6];
	//var _legal_terrains_array = _pass_array[7];
	//var _chosen_group = _pass_array[8];
	
	var _group_control = _str_chosen_group[0][1];
	
	//var _groups_on_target_tile = game_board_array[_current_x][_current_y][$ "units"];
	var _groups_avalibale_for_embarking = exe_calculate_overwater_embarking_ability(_current_x,_current_y,_group_control);
	
	var _continue = 0;
	for(var _ii = 0; _ii < array_length(_groups_avalibale_for_embarking); _ii ++)
		{
			if _groups_avalibale_for_embarking[_ii][0] > 0	
				{
					_continue = 1; break;
				}
		}
	var _select_this_group = -1;
	if _continue > 0
		{
			for(var _ii = 0; _ii < array_length(_groups_avalibale_for_embarking);_ii++)
				{
					var _cargo_ability = _groups_avalibale_for_embarking[_ii][0];
					var _units_left_for_embarking = array_length(_str_chosen_group)-1;
					while(_cargo_ability > 0	&&	_units_left_for_embarking > 0)
						{
							var _push_array = [_ii,_cargo_ability,_units_left_for_embarking];
							_cargo_ability = exe_try_to_embark_unit_to_vessel(_pass_array,_push_array);
							_select_this_group = _ii;
							_units_left_for_embarking--;
						}
				}
		}
	return(_select_this_group)
}