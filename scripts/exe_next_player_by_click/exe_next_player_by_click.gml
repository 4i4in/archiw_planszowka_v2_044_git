function exe_next_player_by_click(_var_player)
{
	if lclick_cooldown_counter < 1
		{
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
			
			exe_next_player_autofunction(_var_player);
		}
}