function exe_disembark_move_group(_pass_array)
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
	
	var _groups_on_target_tile = game_board_array[_current_x][_current_y][$ "units"];
	var _number_of_groups_on_target_tile = array_length(_groups_on_target_tile);
	var _we_must_attack = 0;
	var _we_can_land = 0;
	if _number_of_groups_on_target_tile > game_struct.max_units_groups_per_tile -1
		{
			_we_must_attack = exe_return_if_enemy_on_tille(_current_x,_current_y,_curent_side);
		}
	else	{	_we_can_land = 1;	};
	if _we_can_land > 0
		{
			var _execution_AP_cost = exe_calculate_execution_cost(_pass_array);

			var _continue = exe_check_if_any_unit_call_negative_AP(_execution_AP_cost,_pass_array);
			
			if _continue > 0
				{
					exe_pay_AP_cost(_execution_AP_cost,_chosen_group,_source_x,_source_y);
					
					
					var _add_to_group = [];
					var _push_this = ["group_control",_curent_side];
					array_push(_add_to_group,_push_this);
			
					var _try_disembark = array_length(_str_chosen_group)-1;
					while(_try_disembark > 0)
						{
							var _disembark_result = exe_disembark_unit_try(_source_x,_source_y,_chosen_group,_try_disembark);
							if _disembark_result != undefined
								{
									array_push(_add_to_group,_disembark_result);
								}
							_try_disembark--;
						}
					var _clear_buff = "embarked";
					_add_to_group = exe_clear_this_buff_for_whole_group(_add_to_group,_clear_buff);
				
					array_push(game_board_array[_current_x][_current_y][$ "units"],_add_to_group);
					
					var _select_group = array_length(game_board_array[_current_x][_current_y][$ "units"])-1;
					this_city_xy_reference = [[_select_group,-1]];
					display_terrain_menu_x = _current_x;
					display_terrain_menu_y = _current_y;
					
					exe_refresh_unsplitable_on_tile(_source_x,_source_y,_chosen_group);
					
					exe_refresh_group_values(_current_x,_current_y,_chosen_group);
					
					exe_clear_empty_groups(_source_x,_source_y);
					exe_clear_empty_groups(_current_x,_current_y);
					
					exe_update_info_for_tile(_source_x,_source_y);
					exe_update_info_for_tile(_current_x,_current_y);
					force_redraw = 1;
				}
		}
	if _we_can_land < 1	&&	_we_must_attack < 1
		{
			//political reason that we cannot land	
		}
	if _we_must_attack > 0
		{
			//we attack sea-land battle
		}
}