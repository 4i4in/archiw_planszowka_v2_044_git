function exe_end_players_turn()
{
	if lclick_cooldown_counter < 1
		{
			yes_no_srceen = 0;
			
			restricted_x1 = -1;	restricted_x2 = -1;	restricted_y1 = -1;	restricted_y2 = -1;
			display_terrain_menu = 0;
			exe_clear_city_arrays();
			revoke_right_click_results();
			
			var _current_player_name = sides_array[game_struct.current_player][$ "side_name"];
			var _current_position_in_turn_order = undefined;
			for(var _ii = 0; _ii < array_length(game_struct.turn_order); _ii++)
				{
					if game_struct.turn_order[_ii] == _current_player_name	{_current_position_in_turn_order = _ii};
				}
				
	show_debug_message("_current_player_name : " + string(_current_player_name));
	show_debug_message("turn_order : " + string(game_struct.turn_order));
			if _current_position_in_turn_order != undefined
				{
					_current_position_in_turn_order++;
					if _current_position_in_turn_order > array_length(game_struct.turn_order)-1
						{
							//new turn	
							_current_position_in_turn_order = 0;
							exe_build_turn_order();
							game_struct.current_turn ++;
						}
					var _new_player_name = game_struct.turn_order[_current_position_in_turn_order];
					for(var _ii = 0; _ii < array_length(sides_array); _ii++)
						{
							if sides_array[_ii][$ "side_name"] == _new_player_name
								{
									game_struct.current_player = _ii;
								}
						}
					//seting up gameplay for new player
					exe_start_turn_for_player();
					var _pass_array = ["",0,0,-1,-1];
					exe_select_next_unit_with_AP(_pass_array);
					force_redraw = 1;
					
					//here would be exception if next player is human or not
					exe_new_player_turn_yn();
				}
			else
				{
					mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y;
					mo_string = "ALERT!!! \n !!! turn order fail !!!";
					exit;
				}
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}