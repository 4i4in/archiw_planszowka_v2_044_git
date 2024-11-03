function sum_given_props_around(_xx,_yy,_prop_string)
{
	var _sum_found = 0;
	for (var _x0 = _xx-1; _x0 < _xx + 2; _x0++) 
		{
			for (var _y0 = _yy-1; _y0 < _yy +2; _y0++) 
				{
					var _x1 = _x0;	var _y1 = _y0;
					if _x1 < 0	{_x1+=game_struct.map_xsize;};
					if _x1 > game_struct.map_xsize -1	{_x1-=game_struct.map_xsize;};
					if _y1 < 0	{_y1+=game_struct.map_ysize;};
					if _y1 > game_struct.map_ysize -1	{_y1-=game_struct.map_ysize;};
					
					var _id_props_xy = game_board_array[_x1][_y1][$ "tile_props"];
					
					for(var _ff = 0; _ff < array_length(_id_props_xy); _ff++)
						{
							var _str1 = array_get(_id_props_xy,_ff);	
							if string_starts_with(_str1, _prop_string)
								{
									var str2 = string_delete(_str1,1, string_length(_prop_string)	);
									_sum_found += real(str2);
								}
						}
					
				}
		}
	return(_sum_found);
}