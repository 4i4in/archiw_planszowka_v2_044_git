function move_screen_by_mouse()
{
	game_struct.redraw_ground_layer = 0;
	game_struct.past_cam_xpos = game_struct.cam_xpos;
	game_struct.past_cam_ypos = game_struct.cam_ypos;
	game_struct.past_zoom	=	game_struct.zoom_scale;
	
	if mouse_x <		game_struct.screen_border_mouse		{game_struct.cam_xpos -= game_struct.screen_speed};
	if mouse_x > wgw -	game_struct.screen_border_mouse		{game_struct.cam_xpos += game_struct.screen_speed};
	if mouse_y <		game_struct.screen_border_mouse		{game_struct.cam_ypos -= game_struct.screen_speed};
	if mouse_y > wgh -	game_struct.screen_border_mouse		{game_struct.cam_ypos += game_struct.screen_speed};
	
	if writing_on = 0	&&	ascii_supress = 0
		{
			if	keyboard_check(ord("A")) ^^	keyboard_check(ord("W"))	^^
				keyboard_check(ord("S"))	^^	keyboard_check(ord("D"))
				{
					if keyboard_check(ord("A"))	{game_struct.cam_xpos -= game_struct.screen_speed};
					if keyboard_check(ord("D"))	{game_struct.cam_xpos += game_struct.screen_speed};
					if keyboard_check(ord("W"))	{game_struct.cam_ypos -= game_struct.screen_speed};
					if keyboard_check(ord("S"))	{game_struct.cam_ypos += game_struct.screen_speed};
				}
		}
	if mouse_wheel_up()	||	mouse_wheel_down()	//zooming by mous
		{
			game_struct.zoom_scale = clamp(game_struct.zoom_scale-mouse_wheel_up()+mouse_wheel_down(),1,game_struct.zoom_max);
			
			game_struct.cam_xpos = mouse_xcell * (game_struct.cell_size / game_struct.zoom_scale) - mouse_x;
			game_struct.cam_ypos = mouse_ycell * (game_struct.cell_size / game_struct.zoom_scale) - mouse_y;
		}
	//map wrap
	if game_struct.cam_xpos < 0 {game_struct.cam_xpos += game_struct.map_xsize*game_struct.cell_size/game_struct.zoom_scale};
	if game_struct.cam_xpos > game_struct.map_xsize*game_struct.cell_size/game_struct.zoom_scale
		{game_struct.cam_xpos -= game_struct.map_xsize*game_struct.cell_size/game_struct.zoom_scale};
	if game_struct.cam_ypos < 0 {game_struct.cam_ypos += game_struct.map_ysize*game_struct.cell_size/game_struct.zoom_scale};
	if game_struct.cam_ypos > game_struct.map_ysize*game_struct.cell_size/game_struct.zoom_scale
		{game_struct.cam_ypos -= game_struct.map_ysize*game_struct.cell_size/game_struct.zoom_scale};


	
	game_struct.cam_xpos = floor(game_struct.cam_xpos);
	game_struct.cam_ypos = floor(game_struct.cam_ypos);
	
	cam_xcell = floor(game_struct.cam_xpos / (game_struct.cell_size / game_struct.zoom_scale)	);
	cam_ycell = floor(game_struct.cam_ypos / (game_struct.cell_size / game_struct.zoom_scale)	);
	if cam_xcell < 0						{cam_xcell += game_struct.map_xsize};
	if cam_xcell > game_struct.map_xsize-1	{cam_xcell -= game_struct.map_xsize};
	if cam_ycell < 0						{cam_ycell += game_struct.map_ysize};
	if cam_ycell > game_struct.map_ysize-1	{cam_ycell -= game_struct.map_ysize};
	
	if  game_struct.cam_xpos == game_struct.past_cam_xpos && game_struct.cam_ypos == game_struct.past_cam_ypos	&&
		game_struct.past_zoom	==	game_struct.zoom_scale
			{	game_struct.redraw_ground_layer = 0;	}
	else	{	game_struct.redraw_ground_layer = 1;	}
}