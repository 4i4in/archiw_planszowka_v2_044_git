function exe_generator_conect_cities()
{
	var _list_of_tiles_with_city = array_create(0);
			
	//searching for city tiles
	for (xxx = 0; xxx < game_struct.map_xsize; xxx++) 
		{
			for (yyy = 0; yyy < game_struct.map_ysize; yyy++) 
				{
					var _current_tile_facilities_string = game_board_array[@ xxx][@ yyy][$ "facility"];
					if array_length(_current_tile_facilities_string) > 0
						{
							var _city_on_tile_found = 0;
							for(var _ii = 0; _ii < array_length(_current_tile_facilities_string); _ii++)
								{
									var _current_facility_string = _current_tile_facilities_string[@ _ii];
									if string_starts_with(_current_facility_string, "city_")	{_city_on_tile_found = 1;};
									if string_starts_with(_current_facility_string, "utylity_")	{_city_on_tile_found = 1;};
									if string_starts_with(_current_facility_string, "fortyfication_")	{_city_on_tile_found = 1;};
								}
							if _city_on_tile_found = 1
								{
											
									var _arr_to_push = [xxx,yyy];
									array_push(_list_of_tiles_with_city,_arr_to_push);
									delete(_arr_to_push);
								}
						}
				}
		}
	//marking
	for(var _ii = 0; _ii < array_length(_list_of_tiles_with_city); _ii++)
		{
			var _this_city_array_conection = array_create(0);
			var _val_x1 = _list_of_tiles_with_city[@ _ii][@ 0];
			var _val_y1 = _list_of_tiles_with_city[@ _ii][@ 1];
					
			//searchin around
			for (xxx = _val_x1-1; xxx < _val_x1+2; xxx++) 
				{
					for (yyy = _val_y1-1; yyy < _val_y1+2; yyy++) 
						{
							var _x2_to_check = xxx;	var _y2_to_check = yyy;
							if _x2_to_check < 0 {_x2_to_check += game_struct.map_xsize};
							if _x2_to_check > game_struct.map_xsize - 1	 {_x2_to_check -= game_struct.map_xsize};
							if _y2_to_check < 0 {_y2_to_check += game_struct.map_ysize};
							if _y2_to_check > game_struct.map_ysize - 1	 {_y2_to_check -= game_struct.map_ysize};
									
							for(var _kk = 0; _kk < array_length(_list_of_tiles_with_city); _kk++)
								{
									var _val_x3 = _list_of_tiles_with_city[@ _kk][@ 0];
									var _val_y3 = _list_of_tiles_with_city[@ _kk][@ 1];
											
									if (_x2_to_check == _val_x3 && _y2_to_check == _val_y3)
										{
											if (_val_x1 == _val_x3 && _val_y1 == _val_y3){}
											else
												{
													var _push_this = [_val_x3,_val_y3];
													array_push(_this_city_array_conection,_push_this);
												}
										}
								}
						}
				}
			//place result in city conection
			var _push_this = [_val_x1,_val_y1];
			array_push(_this_city_array_conection,_push_this);
			if array_length(_this_city_array_conection) > 0
				{
					game_board_array[@ _val_x1][@ _val_y1][$ "conected_cities"] = _this_city_array_conection;
				}
		}
	//expanding
	for(var _ii = 0; _ii < array_length(_list_of_tiles_with_city); _ii++)
		{
			//choose city
			var _val_x1 = _list_of_tiles_with_city[@ _ii][@ 0];
			var _val_y1 = _list_of_tiles_with_city[@ _ii][@ 1];
			var _ii_city_array_conection = game_board_array[@ _val_x1][@ _val_y1][$ "conected_cities"];
			//chosse neighbours of city
			for(var _kk = 0; _kk < array_length(_ii_city_array_conection); _kk++)
				{
					var _val_x2 = _ii_city_array_conection[@ _kk][@ 0];
					var _val_y2 = _ii_city_array_conection[@ _kk][@ 1];
					var _kk_city_array_conection = game_board_array[@ _val_x2][@ _val_y2][$ "conected_cities"];
					//loop throu all neighbours of neighbour
					for(var _pp = 0; _pp < array_length(_kk_city_array_conection); _pp++)
						{
							var _val_x3 = _kk_city_array_conection[@ _pp][@ 0];
							var _val_y3 = _kk_city_array_conection[@ _pp][@ 1];
							//loop again throus _ii as _tt to check matches
							var _duplicate_found = 0;
							for(var _tt = 0; _tt < array_length(_ii_city_array_conection); _tt++)
								{
									var _val_x4 = _ii_city_array_conection[@ _tt][@ 0];
									var _val_y4 = _ii_city_array_conection[@ _tt][@ 1];
									if (_val_x3 = _val_x4 && _val_y3 = _val_y4) {_duplicate_found = 1;};
								}
							//adding to _ii
							if _duplicate_found = 0
								{
									var _push_this = [_val_x3,_val_y3];
									array_push(_ii_city_array_conection,_push_this);
								}
						}
							
				}
		}

}