//case for prompting questionfor execution
function exe_new_player_turn_yn()
{
	if lclick_cooldown_counter < 1
		{
			yes_no_cover_background = old_paper_0_s1;
			yes_no_pic = "";
			var _side_name = "";
			if game_struct.current_player > -1
				{
					_side_name = sides_array[game_struct.current_player][$ "side_name"];
					yes_no_pic = "_64x64_" + _side_name + "_ico";
				}
			yes_no_srceen = 1;
			yes_no_prompt = _side_name + "\n New turn! \n click whatever;";
			yes_no_exe = "exe_yes_no_srceen_no";
			lclick_cooldown_counter = lclick_cooldown;
		}
}