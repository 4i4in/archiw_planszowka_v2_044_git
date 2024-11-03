function exe_next_turn_by_click()
{
	if lclick_cooldown_counter < 1
		{
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
			
			exe_next_turn_autofunction();
		}
}