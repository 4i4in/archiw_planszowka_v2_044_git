function exe_inspection_action_group(_pass_array)
{
	var _execution_AP_cost = exe_calculate_execution_cost(_pass_array);

	var _continue = exe_check_if_any_unit_call_negative_AP(_execution_AP_cost,_pass_array);

	if _continue > 0
		{
			var _current_x = _pass_array[0];
			var _current_y = _pass_array[1];
			var _str_chosen_group = _pass_array[2];
			var _curent_side = _pass_array[3];
			var _source_x = _pass_array[4];
			var _source_y = _pass_array[5];
			//var _action = _pass_array[6];
			//var _legal_terrains_array = _pass_array[7];
			var _chosen_group = _pass_array[8];
			if _str_chosen_group == game_board_array[_source_x][_source_y][$ "units"][_chosen_group]
				{
					_continue = 1;
				}
			else	
				{
					_continue = 0;
					mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; mo_string = "ALERT!!! ERROR!!! \n choosen group on player map \n do not refer corectly to gameboard";	
				}
		}
	if _continue > 0
		{
			var _curent_side_num = exe_return_curent_side_by_name(_curent_side);
			if _curent_side_num > -1	{_continue = 1;}
			else						{_continue = 0;}
		}
			
	
	if _continue > 0
		{	
			exe_pay_AP_cost(_execution_AP_cost,_chosen_group,_source_x,_source_y);
			
			//check if not provoking attack tbd
			//tbd we can use buffs sum to detection value against unit for now we just read in everything
			sides_array[_curent_side_num][$ "side_operational_map"][_current_x][_current_y][$ "units"] = game_board_array[_current_x][_current_y][$ "units"];
			force_redraw = 1;
		}
}