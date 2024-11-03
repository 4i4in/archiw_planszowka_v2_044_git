function exe_switch_city_menu_option(_txt1)
{
	if lclick_cooldown_counter < 1
		{
			for(var _ii = 0; _ii < array_length(city_menu_option); _ii++)
				{
					var _this_name = city_menu_option[_ii][0];
					if string(_this_name) = string(_txt1)
						{
							city_menu_option[_ii][1] = !city_menu_option[_ii][1];
						}
				}
			if _txt1 = -1
				{
					for(var _ii = 0; _ii < array_length(city_menu_option); _ii++)
						{
							city_menu_option[_ii][1] = 0;
						}
				}
			lclick_cooldown_counter = lclick_cooldown;
		}

}