//case for prompting questionfor execution
function exe_end_players_turn_by_click_ask_yn()
{
	if lclick_cooldown_counter < 1
		{
			display_terrain_menu = 0;
			restricted_x1 = -1;	restricted_x2 = -1;	restricted_y1 = -1;	restricted_y2 = -1;
			
			
			yes_no_pic = "";
			var _side_name = "";
			if game_struct.current_player > -1
				{
					_side_name = sides_array[game_struct.current_player][$ "side_name"];
					yes_no_pic = "_64x64_" + _side_name + "_ico";
				}
			yes_no_srceen = 1;
			yes_no_prompt = _side_name + "\n Are You sure to end Your turn? \n choose to continue \n or cancel";
			yes_no_exe = "exe_goto_end_players_turn";
			lclick_cooldown_counter = lclick_cooldown;
		}
}