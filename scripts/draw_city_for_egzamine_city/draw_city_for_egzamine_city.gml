function draw_city_for_egzamine_city(_draw_city_scale)
{
	sss = 1/_draw_city_scale;
	surface_set_target(city_surface)
	draw_clear(c_teal);

	for(var _ii = 0; _ii < array_length(this_city_xy_reference); _ii++)
		{
			var _city_tile_array = this_city_xy_reference[_ii];
			var _xy_info = "x : " + string(_city_tile_array[0]) + "|y : " + string(_city_tile_array[1]);
			var _draw_x = _city_tile_array[2];
			var _draw_y = _city_tile_array[3];
			var _max_x = _draw_x + game_struct.button_size/_draw_city_scale;
			var _max_y = _draw_y + game_struct.button_size/_draw_city_scale;
			
			draw_sprite_ext(city_marker_in_city_submenu,0,_draw_x,_draw_y,sss,sss,0,-1,1);
			//draw_text(_draw_x,_draw_y,_xy_info);
			
			
			if array_length(_city_tile_array) > 4
				{
					for(var _kk = 4; _kk < array_length(_city_tile_array); _kk+=2)
						{
							var _resurce = _city_tile_array[_kk];
							var _value = 0;
							var _ystep = 16/_draw_city_scale;
							if string_starts_with(_resurce,"utylity_")
								{
									var _sprite_string = string(_resurce);
									_sprite_string = asset_get_index(_sprite_string);
									var _draw_x2 = _draw_x + sprite_get_xoffset(_sprite_string);
									var _draw_y2 = _draw_y + sprite_get_yoffset(_sprite_string);
									if _draw_x2 > _max_x + sprite_get_xoffset(_sprite_string) {	_draw_x2 = _max_x - sprite_get_xoffset(_sprite_string) };
									if _draw_y2 > _max_y + sprite_get_yoffset(_sprite_string) {	_draw_y2 = _max_y - sprite_get_yoffset(_sprite_string) };
									draw_sprite_ext(_sprite_string,0,_draw_x2,_draw_y2,sss/2,sss/2,0,-1,1);
									_draw_x += sprite_get_width(_sprite_string);
									if _draw_x > _max_x 
										{	
											_draw_x = _city_tile_array[2]; 	
											_draw_y += _ystep;
										}
								}
							if string_starts_with(_resurce,"city_")
								{
									var _value = _city_tile_array[_kk+1];
									if _value > 4
										{
											var _sprite_string = string(_resurce) + "_" + "5";
											_sprite_string = asset_get_index(_sprite_string);
											var _draw_x2 = _draw_x + sprite_get_xoffset(_sprite_string);
											var _draw_y2 = _draw_y + sprite_get_yoffset(_sprite_string);
											if _draw_x2 > _max_x + sprite_get_xoffset(_sprite_string) {	_draw_x2 = _max_x - sprite_get_xoffset(_sprite_string) };
											if _draw_y2 > _max_y + sprite_get_yoffset(_sprite_string) {	_draw_y2 = _max_y - sprite_get_yoffset(_sprite_string) };
											draw_sprite_ext(_sprite_string,0,_draw_x2,_draw_y2,sss/2,sss/2,0,-1,1);
											_draw_x += sprite_get_width(_sprite_string);
											if (sprite_get_width(_sprite_string)/_draw_city_scale*2) > _ystep	{_ystep=(sprite_get_width(_sprite_string)/_draw_city_scale*2)};
											if _draw_x > _max_x 
												{	
													_draw_x = _city_tile_array[2]; 	
													_draw_y += _ystep;
												}
											
											_value -= 5;
										}
									while(_value > 0)
										{
											var _sprite_string = string(_resurce) + "_" + string(_value);
											_sprite_string = asset_get_index(_sprite_string);
											var _draw_x2 = _draw_x + sprite_get_xoffset(_sprite_string);
											var _draw_y2 = _draw_y + sprite_get_yoffset(_sprite_string);
											if _draw_x2 > _max_x + sprite_get_xoffset(_sprite_string) {	_draw_x2 = _max_x - sprite_get_xoffset(_sprite_string) };
											if _draw_y2 > _max_y + sprite_get_yoffset(_sprite_string) {	_draw_y2 = _max_y - sprite_get_yoffset(_sprite_string) };
											draw_sprite_ext(_sprite_string,0,_draw_x2,_draw_y2,sss/2,sss/2,0,-1,1);
											_draw_x += sprite_get_width(_sprite_string);
											if (sprite_get_width(_sprite_string)/_draw_city_scale*2) > _ystep	{_ystep=(sprite_get_width(_sprite_string)/_draw_city_scale*2)};
											if _draw_x > _max_x 
												{	
													_draw_x = _city_tile_array[2]; 	
													_draw_y += _ystep;
												}
											_value -= 1;
										}
									
								}
							if string_starts_with(_resurce,"fortyfication_")
								{
									var _value = _city_tile_array[_kk+1];
									var _sprite_string = string(_resurce) + "_" + string(_value);
									_sprite_string = asset_get_index(_sprite_string);
									var _draw_x2 = _city_tile_array[2] + (game_struct.button_size/_draw_city_scale)/2;
									var _draw_y2 = _max_y;
									draw_sprite_ext(_sprite_string,0,_draw_x2,_draw_y2,sss/2,sss/2,0,-1,1);
								}
							if string_starts_with(_resurce,"rivers")
								{
									var _value = _city_tile_array[_kk+1];
									var _sprite_string = string(_resurce) + "_" + string(_value);
									_sprite_string = asset_get_index(_sprite_string);
									var _draw_river_x1 = _city_tile_array[2];
									var _draw_river_y1 = _city_tile_array[3];
									draw_sprite_ext(_sprite_string,0,_draw_river_x1,_draw_river_y1,sss,sss,0,-1,1);
								}
							if string_starts_with(_resurce,"roads")
								{
									var _value = _city_tile_array[_kk+1];
									var _sprite_string = string(_resurce) + "_" + string(_value);
									_sprite_string = asset_get_index(_sprite_string);
									var _draw_river_x1 = _city_tile_array[2];
									var _draw_river_y1 = _city_tile_array[3];
									draw_sprite_ext(_sprite_string,0,_draw_river_x1,_draw_river_y1,sss,sss,0,-1,1);
								}
							
						}
				}
		}
	surface_reset_target();
}