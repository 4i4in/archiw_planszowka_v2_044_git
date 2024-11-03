//subscript of draw_sorted_terrain
function draw_grid_tilled()
{
	xxx = cam_xcell*(game_struct.cell_size/game_struct.zoom_scale) - game_struct.cam_xpos;
	yyy = cam_ycell*(game_struct.cell_size/game_struct.zoom_scale) - game_struct.cam_ypos;
	switch(game_struct.zoom_scale)
		{
			case 1: 
				draw_sprite_tiled_ext(grid_0_s1,0,
					xxx,
					yyy,
					1,1,-1,1);
				break;
			case 2: 
				draw_sprite_tiled_ext(grid_0_s2,0,
					xxx,
					yyy,
					1,1,-1,1);
				break;
		}
}