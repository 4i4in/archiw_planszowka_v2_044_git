function exe_next_turn_autofunction()
{
	exe_clear_city_arrays();
					
	revoke_right_click_results();
	
	restricted_x1 = -1;	restricted_x2 = -1;	restricted_y1 = -1;	restricted_y2 = -1;
					
	display_terrain_menu = 0;
	
	
show_debug_message("nest turn summary starts");

	/*	need some more info kept
	//cities summary
	for(var _ii = 0; _ii < array_length(sides_array); _ii++)
		{
			exe_create_checklist_array_1pos(); //creating checklist 1 position	
		}
	*/	
	
	game_struct.current_turn ++;
}