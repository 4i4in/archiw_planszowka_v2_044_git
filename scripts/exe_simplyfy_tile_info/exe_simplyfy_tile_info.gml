function exe_simplyfy_tile_info(_xy_dxdy_array_to_simplyf)
{
	var _simplyfied_array = array_create(0);

	for(var _ii = 0; _ii < array_length(_xy_dxdy_array_to_simplyf); _ii++)
		{
			var _tile_to_check = _xy_dxdy_array_to_simplyf[_ii];
			for(var _kk = 4; _kk < array_length(_tile_to_check); _kk+=2)
				{
					var _resource_found = 	_tile_to_check[_kk];
					var _value_found = 	_tile_to_check[_kk+1];
					var _found_in_simple_array =  0;
					for(var _pp = 0; _pp < array_length(_simplyfied_array); _pp++)
						{
							var _simple_found = 	_simplyfied_array[_pp][0];
							if string(_resource_found) = string(_simple_found)
								{
									array_insert(_simplyfied_array[_pp],1,_value_found);
									_found_in_simple_array =  1;
								}
						}
					if _found_in_simple_array =  0
						{
							var _temp_array = [string(_resource_found),_value_found];
							array_push(_simplyfied_array,_temp_array);
						}
				}
		}

	return(_simplyfied_array);
}