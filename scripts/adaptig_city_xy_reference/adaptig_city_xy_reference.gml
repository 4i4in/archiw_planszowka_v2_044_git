function adaptig_city_xy_reference(_city_min_xy_reference,_ii_city_tile_x,_ii_city_tile_y,_x_place_on_screen,_y_place_on_screen)
{
	for(var _ii = 0; _ii < array_length(_city_min_xy_reference); _ii++)
		{
			var _xx_orig_found = _city_min_xy_reference[_ii][0];
			var _yy_orig_found = _city_min_xy_reference[_ii][1];
			
			if (_xx_orig_found = _ii_city_tile_x &&  _yy_orig_found = _ii_city_tile_y)
				{
					array_push(_city_min_xy_reference[_ii],_x_place_on_screen);
					array_push(_city_min_xy_reference[_ii],_y_place_on_screen);
				}
		}

	return(_city_min_xy_reference);
}