function exe_minimize_safety_switch()
{
	exe_terrain_paint_zero();
	display_terrain_menu = 0;
	
	exe_clear_city_arrays();
	
	
	restricted_x1 = -1;	restricted_x2 = -1;	restricted_y1 = -1;	restricted_y2 = -1;
}