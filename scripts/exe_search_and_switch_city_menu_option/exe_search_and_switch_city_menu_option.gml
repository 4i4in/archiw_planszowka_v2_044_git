function exe_search_and_switch_city_menu_option(txt1)
{
	if lclick_cooldown_counter < 1
	exe_switch_city_menu_xy_list(-1);//clean selection
		{
			var _any_tile_marked_found = 0;
			for(var _ii = 0; _ii < array_length(this_city_xy_reference); _ii++)
				{
					var _array_here = this_city_xy_reference[_ii];
					if array_length(_array_here) > 4
						{
							for(var _kk = 4; _kk < array_length(_array_here); _kk++)
								{
									var _resource_here = _array_here[_kk];
									if is_string(_resource_here)
										{
											if 	string(_resource_here) = string(txt1)
												{
													var _string_to_set = string(_resource_here) + " " + string(_array_here[_kk+1]);
													city_menu_xy_list[_ii][2] = 2;
													city_menu_xy_list[_ii][3] = _string_to_set;
													_any_tile_marked_found++;
												}
										}
								}
						}
					
				}
			if _any_tile_marked_found = 0//clearly it is not any map resurce it would be in consumption/production
				{
					for(var _ii = 0; _ii < array_length(this_city_consumption_production); _ii++)
						{
							var _array_here = this_city_consumption_production[_ii];
							if array_length(_array_here) > 4
								{
									for(var _kk = 4; _kk < array_length(_array_here); _kk++)
										{
											var _resource_here = _array_here[_kk];
											if is_string(_resource_here)
												{
													if 	string(_resource_here) = string(txt1)
														{
															var _string_to_set = string(_resource_here) + " " + string(_array_here[_kk+1]);
															city_menu_xy_list[_ii][2] = 2;
															city_menu_xy_list[_ii][3] = _string_to_set;
															_any_tile_marked_found++;
														}
												}
										}
								}
					
						}
				}
			lclick_cooldown_counter = lclick_cooldown;
		}
}