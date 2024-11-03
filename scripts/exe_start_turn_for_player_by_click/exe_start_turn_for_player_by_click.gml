function exe_start_turn_for_player_by_click()
{
	if lclick_cooldown_counter < 1
	{
		clickable_loaded = 0;
		lclick_cooldown_counter = lclick_cooldown;
			
		exe_start_turn_for_player();
		force_redraw = 1;
	}
}