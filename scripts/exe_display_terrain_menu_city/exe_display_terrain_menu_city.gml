function exe_display_terrain_menu_city()
{
	if lclick_cooldown_counter < 1
		{
			var _str_city_tiles = operational_array[display_terrain_menu_x][display_terrain_menu_y][$ "conected_cities"];
			var _conected_city = array_length(_str_city_tiles);
			if _conected_city > 0
				{
					exe_clear_city_arrays();
					ds_list_destroy(draw_highlite_map);
					draw_highlite_map = ds_list_create();
					display_terrain_menu = 2;
				}
			else
				{
					mouseover_info = 1	mo_xpos = mouse_x; mo_ypos = mouse_y; 
					mo_string = "conected_cities not generated \n go to editor \n select terrain \n select generator \n use \n Conect cities \n to metropoly";
				}
			lclick_cooldown_counter = lclick_cooldown;	
		}
}