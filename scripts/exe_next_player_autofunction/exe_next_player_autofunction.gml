function exe_next_player_autofunction(_var_player)
{
	if _var_player > 0
		{
			restricted_x1 = -1;	restricted_x2 = -1;	restricted_y1 = -1;	restricted_y2 = -1;
			display_terrain_menu = 0;
			exe_clear_city_arrays();
			revoke_right_click_results();
			
			game_struct.current_player++;
			if game_struct.current_player > array_length(sides_array) -1
				{
					game_struct.current_player = 0;
				}
		}
	else
		{
			game_struct.current_player = -1;
		}
	force_redraw = 1;
}