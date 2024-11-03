//exe_re_random_seed
function exe_re_random_seed()
{
	randomise();
	clickable_loaded = 0;
	game_struct.rnd_seed = random_get_seed();
	
	if game_struct.current_menu = "editor_step0"	
		{	
			surface_free(raw_minimap_surface);
			ds_grid_destroy(raw_editor_minimap);
			exe_start_editor_step0();	
		};
}