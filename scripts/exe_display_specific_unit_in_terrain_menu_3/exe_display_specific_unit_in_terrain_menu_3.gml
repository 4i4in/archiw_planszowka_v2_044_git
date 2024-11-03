function exe_display_specific_unit_in_terrain_menu_3(_array_group_unit)
{
	if lclick_cooldown_counter < 1
		{
			if array_length(_array_group_unit) > 0
				{
					this_city_xy_reference = [];
					array_push(this_city_xy_reference,_array_group_unit);
				}
			else
				{
					mouseover_info = 1	mo_xpos = mouse_x; mo_ypos = mouse_y; 
					mo_string = "Not Your unit! \n Filthy spy!";	
				}
			lclick_cooldown_counter = lclick_cooldown;	
		}
}