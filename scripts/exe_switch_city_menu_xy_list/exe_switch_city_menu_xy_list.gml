function exe_switch_city_menu_xy_list(_ii)
{
	if lclick_cooldown_counter < 1
		{
			for(var _kk = 0; _kk < array_length(city_menu_xy_list); _kk++)
				{
					city_menu_xy_list[_kk][2] = 0;
					city_menu_xy_list[_kk][3] = "";
				}
			if _ii > -1	
				{	
					city_menu_xy_list[_ii][2] = !city_menu_xy_list[_ii][2];
					exe_switch_city_menu_option(-1);
				}
			lclick_cooldown_counter = lclick_cooldown;
		}
}