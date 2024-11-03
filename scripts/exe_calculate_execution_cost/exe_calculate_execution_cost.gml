function exe_calculate_execution_cost(_pass_array)
{
	var _current_x = _pass_array[0];
	var _current_y = _pass_array[1];
	var _str_chosen_group = _pass_array[2];
	//var _curent_side = _pass_array[3];
	var _source_x = _pass_array[4];
	var _source_y = _pass_array[5];
	var _action = _pass_array[6];
	var _legal_terrains_array = _pass_array[7];
	
	var _distance = point_distance(_current_x,_current_y,_source_x,_source_y);
	if _distance > 2
		{
			var _dir_x_reversed = 0;	var _dir_y_reversed = 0;
			if _source_x = 0 &&	_current_x = game_struct.map_xsize - 1	{_dir_x_reversed = - game_struct.map_xsize};
			if _source_x = game_struct.map_xsize - 1 &&	_current_x = 0	{_dir_x_reversed =	 game_struct.map_xsize};
			if _source_y = 0 &&	_current_y = game_struct.map_ysize - 1	{_dir_y_reversed = - game_struct.map_ysize};
			if _source_y = game_struct.map_ysize - 1 &&	_current_y = 0	{_dir_y_reversed =   game_struct.map_ysize};
			_distance = point_distance(_current_x +_dir_x_reversed,_current_y+_dir_y_reversed,_source_x,_source_y);
		}
	if _distance < 1	{_distance = 0.5;};
	
	var _AP_result_array = [];	array_push(_AP_result_array,[]);
	for(var _ii = 1; _ii < array_length(_str_chosen_group);_ii++)
		{
			var _current_unit = _str_chosen_group[_ii];
			var _current_unit_AP = 0;
			var _current_AP_cost = 0;
			var _embarked = 0;
			var _action_performing = -1;
			for(var _kk = 2; _kk < array_length(_current_unit); _kk+=2)
				{
					var _name_found = _current_unit[_kk];
					if _name_found = "action_points"	{	_current_unit_AP = _current_unit[_kk+1][1];	};
					if _name_found = "move_cost"
						{
							var _move_cost_array = _current_unit[_kk+1];			
							for(var _mca = 0; _mca < array_length(_move_cost_array); _mca+=2)
								{
									var _terrain_found = _move_cost_array[_mca];
									for(var _lta = 1; _lta< array_length(_legal_terrains_array); _lta+=2)
										{
											if string_starts_with(_legal_terrains_array[_lta],_terrain_found)
												{
													_current_AP_cost += _move_cost_array[_mca+1]*_legal_terrains_array[_lta+1];							
												}
										}
								}
						}
					if _name_found = "active_buffs"
						{
							var _active_buffs_array = _current_unit[_kk+1];
							for(var _nn = 0; _nn < array_length(_active_buffs_array);_nn+=2)
								{
									//performing action
									if _active_buffs_array[_nn] == _action
										{
											_action_performing = 1;
										}
									//carried
									if _active_buffs_array[_nn] == "embarked"	&&	_action != "disembark"
										{
											_embarked = 1;
											_action_performing = 1;
										}

									if _action == "inspect"
										{
											switch(_active_buffs_array[_nn])
												{
													case "inspector":
													case "curious":
													case "spy":	_action_performing = 1; break;
												}
										}
								}
						}
				}
			_current_AP_cost *= _distance;
			if _embarked	{_current_AP_cost = 0;};
			var _push_string = "";
			if _action_performing < 0
				{
					_push_string += "unit " + string(_ii) + " " + string(_action) + " not active!";
				}
			if _action_performing < 0	&& _action == "move"
				{
					_current_AP_cost = _current_unit_AP + 99;
					_push_string += "\n check unit " + string(_ii) + " if " + string(_action) + " is turned of on purpouse";
				}
			var _push_this = [_current_unit_AP-_current_AP_cost,_push_string];
			array_push(_AP_result_array,_push_this);
		}
	return(_AP_result_array);
}