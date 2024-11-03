//exe_map_x_size_minus
function exe_map_x_size_minus()
{
	if lclick_cooldown_counter < 1
		{
			game_struct.map_xsize -= mapeditor.map_size_step;
			if game_struct.map_xsize < mapeditor.map_x_min_size	{	game_struct.map_xsize = mapeditor.map_x_min_size	};
			
			game_board_array = [];
			array_resize(game_board_array,game_struct.map_xsize);
			create_game_board_array_new();
			for (var _xx = 0; _xx < game_struct.map_xsize; _xx++) 
				{
					for (var _yy = 0; _yy < game_struct.map_ysize; _yy++) 
						{
							set_random_terrain(game_board_array,_xx,_yy,"tile_terrain");
						}
				}	
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;

		}
}