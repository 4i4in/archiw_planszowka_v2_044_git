//exe_start_game
function exe_start_game()
{
	if lclick_cooldown_counter < 1
		{
			game_struct.current_menu = "game_play";
			if array_length(game_struct.turn_order) < array_length(sides_array)
				{
					exe_build_turn_order();
				}
			
			lclick_cooldown_counter = lclick_cooldown;
		}
}