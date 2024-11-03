//sub script of draw_sorted_terrain
function draw_background_tilled()
{
	switch(game_struct.zoom_scale)
		{
			case 1: 
				draw_sprite_tiled_ext(old_paper_0_s1,0,
					-(game_struct.cam_xpos mod 1024),
					-(game_struct.cam_ypos mod 1024),
					1,1,-1,1);
				break;
			case 2: 
				draw_sprite_tiled_ext(old_paper_0_s2,0,
					-(game_struct.cam_xpos mod 512),
					-(game_struct.cam_ypos mod 512),
					1,1,-1,1);
				break;
			case 3: 
				draw_sprite_tiled_ext(old_paper_0_s3,0,
					-(game_struct.cam_xpos mod 256),
					-(game_struct.cam_ypos mod 256),
					1,1,-1,1);
				break;
			case 4: 
				draw_sprite_tiled_ext(old_paper_0_s4,0,
					-(game_struct.cam_xpos mod 128),
					-(game_struct.cam_ypos mod 128),
					1,1,-1,1);
				break;
		}
}