function exe_activate_avilable_buff_by_click(_carry_array)
{
	if lclick_cooldown_counter < 1
		{
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
			
			exe_activate_avilable_buff(_carry_array);
		}	
}