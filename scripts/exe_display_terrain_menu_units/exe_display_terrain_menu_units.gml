function exe_display_terrain_menu_units()
{
	if lclick_cooldown_counter < 1
		{
			var _str_city_tiles = operational_array[display_terrain_menu_x][display_terrain_menu_y][$ "units"];
			var _conected_city = array_length(_str_city_tiles);
			if _conected_city > 0
				{
					ds_list_destroy(draw_highlite_map);
					draw_highlite_map = ds_list_create();
					display_terrain_menu = 3;
				}
			else
				{
					mouseover_info = 1	mo_xpos = mouse_x; mo_ypos = mouse_y; 
					mo_string = "no units here";
				}
			lclick_cooldown_counter = lclick_cooldown;	
		}
}