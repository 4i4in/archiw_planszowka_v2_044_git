function exe_try_to_embark_unit_to_vessel(_pass_array,_push_array)
{
	var _current_x = _pass_array[0];
	var _current_y = _pass_array[1];
	//var _str_chosen_group = _pass_array[2];
	var _curent_side = _pass_array[3];
	var _source_x = _pass_array[4];
	var _source_y = _pass_array[5];
	//var _action = _pass_array[6];
	//var _legal_terrains_array = _pass_array[7];
	var _chosen_group = _pass_array[8];
	
	var _target_group = _push_array[0];
	var _cargo_ability = _push_array[1];
	var _source_unit = _push_array[2];
	
	var _this_unit_place_taken = 0;
	var _keep_Abuf_ref = -1;
	var _keep_embark_ref = -1;
	var _number = 0
	var _unit_cargo = 0;
	var _embarked_unit_name = "";
	
	var _curent_side_num = exe_return_curent_side_by_name(_curent_side);
	var _max_unit_per_tile = sides_array[_curent_side_num][$ "max_units_on_tile"];
	
	var _placing_group = game_board_array[_current_x][_current_y][$ "units"][_target_group];
	if array_length(_placing_group) < _max_unit_per_tile +1
		{
			//calculate _this_unit_place_taken
			var _this_unit = game_board_array[_source_x][_source_y][$ "units"][_chosen_group][_source_unit];
			_embarked_unit_name = _this_unit[1];
			for(var _ii = 2; _ii < array_length(_this_unit); _ii +=2)
				{
					if _this_unit[_ii] == "active_buffs"
						{
							_keep_Abuf_ref = _ii+1;
							var _Abuffs_array = _this_unit[_keep_Abuf_ref];
							for(var _kk = 0; _kk < array_length(_Abuffs_array); _kk +=2)
								{
									if _Abuffs_array[_kk] == "embark_overwater"	{_keep_embark_ref=_kk;};
								}
						}
					if _this_unit[_ii] == "number"	{_number = _this_unit[_ii+1][1];};
					if _this_unit[_ii] == "base_values"
						{
							var _base_val_array = _this_unit[_ii+1];
							for(var _kk = 0; _kk < array_length(_base_val_array); _kk +=2)
								{
									if _base_val_array[_kk] == "place_taken"	{_this_unit_place_taken = _base_val_array[_kk+1]};
								}
						}
					//units cargo count
					if _this_unit[_ii] == "carry_transport"
						{
							var _carry_array = _this_unit[_ii+1];
							for(var _kk = 0; _kk < array_length(_carry_array); _kk +=2)
								{
									if _carry_array[_kk] != "carry_max"	{_unit_cargo += _carry_array[_kk+1]};
								}
						}
				}
			_this_unit_place_taken *= _number;
			_this_unit_place_taken += _unit_cargo;
			if _cargo_ability +1 > _this_unit_place_taken
				{
					if _keep_Abuf_ref > -1	&&	_keep_embark_ref > -1
						{
							//switch to embark
							array_set(game_board_array[_source_x][_source_y][$ "units"][_chosen_group][_source_unit][_keep_Abuf_ref],_keep_embark_ref,"embarked");
							array_set(game_board_array[_source_x][_source_y][$ "units"][_chosen_group][_source_unit][_keep_Abuf_ref],_keep_embark_ref+1,-2);
							
							//moving unit
							var _active_unit = variable_clone(game_board_array[_source_x][_source_y][$ "units"][_chosen_group][_source_unit]);
							array_delete(game_board_array[_source_x][_source_y][$ "units"][_chosen_group],_source_unit,1);
							array_push(game_board_array[_current_x][_current_y][$ "units"][_target_group],_active_unit);
							
							exe_mark_transported_unit_on_ship(_this_unit_place_taken,_embarked_unit_name,_current_x,_current_y,_target_group);
							_cargo_ability -= _this_unit_place_taken;
						}
				}
		}
	return(_cargo_ability);
}