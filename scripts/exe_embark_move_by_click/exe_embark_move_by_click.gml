function exe_embark_move_by_click(_pass_array)
{
	if lclick_cooldown_counter < 1
		{
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
			
			exe_embark_move_group(_pass_array);
		}
}