function exe_goto_editor_step0()
{
	if lclick_cooldown_counter < 1
		{
			//recreating game_board_array
			game_board_array = [];
			
			if ds_exists(raw_editor_minimap, ds_type_grid)	{ds_grid_destroy(raw_editor_minimap);};
			
			game_struct.minimap_scale = 4;
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
			exe_start_editor_step0();
		}
}