function exe_embark_move_group(_pass_array)
{
	var _current_x = _pass_array[0];
	var _current_y = _pass_array[1];
	//var _str_chosen_group = _pass_array[2];
	//var _curent_side = _pass_array[3];
	var _source_x = _pass_array[4];
	var _source_y = _pass_array[5];
	//var _action = _pass_array[6];
	//var _legal_terrains_array = _pass_array[7];
	var _chosen_group = _pass_array[8];
	
	var _execution_AP_cost = exe_calculate_execution_cost(_pass_array);

	var _continue = exe_check_if_any_unit_call_negative_AP(_execution_AP_cost,_pass_array);
	if _continue > 0
		{
			exe_pay_AP_cost(_execution_AP_cost,_chosen_group,_source_x,_source_y);
	
			var _select_this_group = exe_embark_overwater_execution(_pass_array);
	
			//reset selection
			this_city_xy_reference = [[_select_this_group,-1]];
			display_terrain_menu_x = _current_x;
			display_terrain_menu_y = _current_y;
					
			exe_refresh_group_values(_current_x,_current_y,_select_this_group);
					
			exe_clear_empty_groups(_source_x,_source_y);
			exe_clear_empty_groups(_current_x,_current_y);
					
			exe_update_info_for_tile(_source_x,_source_y);
			exe_update_info_for_tile(_current_x,_current_y);
			force_redraw = 1;
		}
	
}