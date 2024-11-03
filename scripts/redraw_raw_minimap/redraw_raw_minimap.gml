function redraw_raw_minimap()
{
	if !surface_exists(raw_minimap_surface)
			{	raw_minimap_surface = surface_create(game_struct.map_xsize,game_struct.map_ysize);	};
		surface_set_target(raw_minimap_surface);
		draw_clear(c_orange);
		for(xxx = 0; xxx < game_struct.map_xsize; xxx ++)
			{
				for(yyy = 0; yyy < game_struct.map_ysize; yyy ++)
					{
						aaa = ds_grid_get(raw_editor_minimap, xxx, yyy);
						if aaa > mapeditor.hills_level	{ppp = #A0A7B2};
						if aaa <= mapeditor.hills_level	{ppp = #7F420C};
						if aaa <= mapeditor.plain_level	{ppp = #558720};
						if aaa <= mapeditor.sand_level	{ppp = #CABD96};
						if aaa <= mapeditor.water_level	{ppp = #3CA8CC};
						if aaa <= mapeditor.deep_water_level	{ppp = #3569B2};

						draw_point_color(xxx,yyy,ppp);
					}				
			}
		surface_reset_target();
}