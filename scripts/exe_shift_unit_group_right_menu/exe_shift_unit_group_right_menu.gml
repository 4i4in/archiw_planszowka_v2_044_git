function exe_shift_unit_group_right_menu(_array_group_unit)
{
	if lclick_cooldown_counter < 1
		{
			_array_group_unit = _array_group_unit[1];
			if array_length(_array_group_unit) > 0
				{
					exe_shift_unit_group_v2(_array_group_unit);
					//[display_terrain_menu_x,display_terrain_menu_y,_group,unit,"direction"];
					this_city_xy_reference = [[0,-1]];
				}
			else
				{
					mouseover_info = 1	mo_xpos = mouse_x; mo_ypos = mouse_y; 
					mo_string = "Not Your unit!";
				}
			lclick_cooldown_counter = lclick_cooldown;	
		}
}