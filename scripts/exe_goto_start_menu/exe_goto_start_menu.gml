function exe_goto_start_menu()
{
	if lclick_cooldown_counter < 1
		{
			//recreating game_board_array
			game_board_array = [];
			array_resize(game_board_array,game_struct.map_xsize);
			create_game_board_array_new();
		
			ds_grid_destroy(raw_editor_minimap);
			surface_free(raw_minimap_surface);
		
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
			game_struct.current_menu = "start_menu";
		}
}