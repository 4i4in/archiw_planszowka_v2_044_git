function draw_highlite_to_surface()
{
	//prepare surface
	sss = 1/game_struct.zoom_scale;
	if !surface_exists(surface_highlite)	
		{surface_highlite = surface_create(	clamp((wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size),1,1920	),	wgh);};
	surface_set_target(surface_highlite);
	draw_clear_alpha(0,0);
	

	for(iii = 0; iii < ds_list_size(draw_highlite_map); iii+=dgm_wrap)
		{
			xxx = ds_list_find_value(draw_highlite_map,iii+0);
			yyy = ds_list_find_value(draw_highlite_map,iii+1);
			ppp = ds_list_find_value(draw_highlite_map,iii+2);
			if !point_in_rectangle(	mouse_x,mouse_y,game_struct.mimimap_xpos,game_struct.mimimap_ypos,
									game_struct.mimimap_xpos + game_struct.map_xsize *	game_struct.minimap_scale,
									game_struct.mimimap_ypos + game_struct.map_ysize *	game_struct.minimap_scale
									)
				{
					switch(ppp)
						{
							case "paint_cover_1": 
								draw_sprite_ext(paint_cover_1,0,xxx,yyy,sss,sss,0,-1,1);
								break;
							case "paint_cover_2": 
								draw_sprite_ext(paint_cover_2,0,xxx,yyy,sss,sss,0,-1,1);
								break;
							case "paint_cover_3": 
								draw_sprite_ext(paint_cover_3,0,xxx,yyy,sss,sss,0,-1,1);
								break;
							case "city_cover_highlite": 
								draw_sprite_ext(city_cover_highlite,0,xxx,yyy,sss,sss,0,-1,1);
								break;
						}
				}
		}	
	surface_reset_target();		
}