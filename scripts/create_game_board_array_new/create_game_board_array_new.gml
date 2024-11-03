function create_game_board_array_new()
{
	for (var _ii = game_struct.map_xsize-1; _ii >= 0; _ii--) 
		{
		    game_board_array[_ii] = array_create(game_struct.map_ysize);
		}
	for (var _xx = 0; _xx < game_struct.map_xsize; _xx++) 
		{
			for (var _yy = 0; _yy < game_struct.map_ysize; _yy++) 
				{
					set_empty_template_array(game_board_array,_xx,_yy);
				}
		}
}