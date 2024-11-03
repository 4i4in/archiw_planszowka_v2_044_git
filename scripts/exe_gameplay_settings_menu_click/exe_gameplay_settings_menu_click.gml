function exe_gameplay_settings_menu_click()
{
	if lclick_cooldown_counter < 1
		{
			ds_list_destroy(draw_highlite_map);
			draw_highlite_map = ds_list_create();
			display_terrain_menu = 11;
			
			lclick_cooldown_counter = lclick_cooldown;	
		}
}