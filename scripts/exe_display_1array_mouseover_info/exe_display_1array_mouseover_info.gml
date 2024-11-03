function exe_display_1array_mouseover_info(_pass_array)
{
	txt1 = _pass_array[0];
	rclick_cooldown_counter = rclick_cooldown;
	mouseover_info = 1;
	mo_xpos = mouse_x;
	mo_ypos = mouse_y;
	mo_string = txt1;
}