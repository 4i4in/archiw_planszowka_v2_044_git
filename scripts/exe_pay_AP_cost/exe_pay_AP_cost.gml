function exe_pay_AP_cost(_execution_AP_cost,_chosen_group,_source_x,_source_y)
{
	var _str_chosen_group = game_board_array[_source_x][_source_y][$ "units"][_chosen_group];
	
	for(var _ii = 1; _ii < array_length(_execution_AP_cost);_ii++)
		{
			var _value_found = _execution_AP_cost[_ii][0];
			var _this_unit_array = _str_chosen_group[_ii];
			for(var _kk = 2; _kk < array_length(_this_unit_array);_kk+=2)
				{
					if _this_unit_array[_kk] == "action_points"
						{
							game_board_array[_source_x][_source_y][$ "units"][_chosen_group][_ii][_kk+1][1] = _value_found;
						}
				}
		}
	exe_update_info_for_tile(_source_x,_source_y);
}