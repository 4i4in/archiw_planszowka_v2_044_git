function exe_calculate_this_city_consumption(_this_city_array)
{
	var _consumption_array = array_create(0);
	for(var _ss = 0; _ss < array_length(_this_city_array); _ss++)
		{
			var _this_tile_push = array_create(0);
			var _this_tile_array = 	_this_city_array[_ss];
			array_push(_this_tile_push,_this_tile_array[0],_this_tile_array[1],_this_tile_array[2],_this_tile_array[3]);
			for(var _tt = 4; _tt < array_length(_this_tile_array); _tt+= 2)
				{
					var _something_on_tile = _this_tile_array[_tt];
					var _value_on_tile = _this_tile_array[_tt+1];
					for(var _ii = 0; _ii < array_length(sides_array); _ii++)
						{
							var _side_consumption_array = sides_array[_ii][$ "consumption"];
							for(var _kk = 0; _kk < array_length(_side_consumption_array); _kk+=2)
								{
									var _consumption_name_here = _side_consumption_array[_kk];
									var _consumption_value_here = _side_consumption_array[_kk+1];
									if string_starts_with(_consumption_name_here,_something_on_tile)
										{
											var _consuming_good = string_delete(_consumption_name_here,1,string_length(_something_on_tile)+1);
											if string_starts_with(_consuming_good,"eat")
												{
													_consuming_good = string_delete(_consuming_good,1,string_length("eat_"));
													array_push(_this_tile_push,_consuming_good,_consumption_value_here*_value_on_tile);
												}
										}
								}
						}
				}
			array_push(_consumption_array,_this_tile_push);
		}
	return(_consumption_array);
}