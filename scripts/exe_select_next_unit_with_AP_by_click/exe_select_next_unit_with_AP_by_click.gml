function exe_select_next_unit_with_AP_by_click(_pass_array)
{
	if lclick_cooldown_counter < 1
	{
		clickable_loaded = 0;
		lclick_cooldown_counter = lclick_cooldown;
			
		exe_select_next_unit_with_AP(_pass_array);
		force_redraw = 1;
	}
}