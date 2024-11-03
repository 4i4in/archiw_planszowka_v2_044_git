
if !surface_exists(surface_ground_map)	
{surface_ground_map = surface_create(	clamp((wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size),1,1920	),	wgh);};
draw_surface(surface_ground_map,0,0);

if yes_no_srceen > 0	&&	yes_no_cover_background != ""
	{
		draw_sprite_tiled(yes_no_cover_background, 0, 0, 0);
	}

#region//clicable for drawing
if clickable_loaded = 1
	{
		if !surface_exists(clickable_surface)	{clickable_surface = surface_create(wgw,wgh)};
		draw_surface(clickable_surface,0,0);
	}
#endregion

#region//highlite surface
if !surface_exists(surface_highlite)	{surface_highlite = surface_create(wgw,wgh)};
draw_surface(surface_highlite,0,0);
#endregion

if mouseover_info = 1	{show_mouseover_info();};

#region//menu 1
if array_get(ascii_call,49) = 1
	{
		xxx = wgw-340;	yyy = 5;	xxx1 = wgw;	yyy1 = 400;	nxtline = 0;	nxtclmn = 0;
		draw_set_alpha(txt_background_darken);	draw_set_color(c_dkgrey);
		draw_rectangle(xxx-5,yyy-5,xxx1,yyy1,0);		
		draw_set_alpha(1);	draw_set_color(c_white);
		draw_text(xxx + nxtclmn * newclmn, yyy + nxtline * newline,
		"fps real : "  + string(round(fps_real))		);nxtline++;
		draw_text(xxx + nxtclmn * newclmn, yyy + nxtline * newline,
		"fps proceded : "  + string(fps)		);nxtline++;nxtline++;
		//mapinfo
		draw_text(xxx + nxtclmn * newclmn, yyy + nxtline * newline,
		"mouse_x : "  + string(game_struct.cam_xpos)		);nxtline++;
		draw_text(xxx + nxtclmn * newclmn, yyy + nxtline * newline,
		"mouse_y : "  + string(game_struct.cam_ypos)		);nxtline++;
		draw_text(xxx + nxtclmn * newclmn, yyy + nxtline * newline,
		"zoom : "  + string(game_struct.zoom_scale)		);nxtline++;
		draw_text(xxx + nxtclmn * newclmn, yyy + nxtline * newline,
		"cam_xcell : "  + string(cam_xcell)		);nxtline++;
		draw_text(xxx + nxtclmn * newclmn, yyy + nxtline * newline,
		"cam_ycell : "  + string(cam_ycell)		);nxtline++;	nxtline++;
		draw_text(xxx + nxtclmn * newclmn, yyy + nxtline * newline,
		"mouse_xcell : "  + string(mouse_xcell)		);nxtline++;
		draw_text(xxx + nxtclmn * newclmn, yyy + nxtline * newline,
		"mouse_ycell : "  + string(mouse_ycell)		);nxtline++;nxtline++;
		//test
		draw_text(xxx + nxtclmn * newclmn, yyy + nxtline * newline,
		"current_menu : \n"  + string(game_struct.current_menu)		);nxtline++;nxtline++;

		draw_text(xxx + nxtclmn * newclmn, yyy + nxtline * newline,
		"display_terrain_menu : "  + string(display_terrain_menu)		);nxtline++;nxtline++;

		draw_text(xxx + nxtclmn * newclmn, yyy + nxtline * newline,
		"lclick_cooldown_counter : "  + string(lclick_cooldown_counter)		);nxtline++;nxtline++;

		
	}
#endregion

#region//writng
if writing_on = 1	{show_writing();};
#endregion