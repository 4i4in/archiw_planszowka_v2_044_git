function add_to_city_min_xy_reference(_xx,_yy,_stuff_to_push_in,_value_to_push_in)
{
	for(var _ii = 0; _ii < array_length(this_city_xy_reference); _ii++)
		{
			var _xx_orig_found = this_city_xy_reference[_ii][0];
			var _yy_orig_found = this_city_xy_reference[_ii][1];
			
			if (_xx_orig_found = _xx && _yy_orig_found = _yy)
				{
					var _resource_exist = 0;
					var _temp_xy_reference = this_city_xy_reference[_ii];
					for(var _kk = 0; _kk < array_length(_temp_xy_reference); _kk++)
						{
							var _string_found = this_city_xy_reference[_ii][_kk];
							
							if string(_string_found) = string(_stuff_to_push_in)	{_resource_exist = _kk};
						}
					if _resource_exist = 0
						{
							array_insert(this_city_xy_reference[_ii],array_length(_temp_xy_reference),string(_stuff_to_push_in));
							array_insert(this_city_xy_reference[_ii],array_length(_temp_xy_reference),_value_to_push_in);
						}
					if _resource_exist != 0
						{
							array_insert(this_city_xy_reference[_ii],_resource_exist+1,_value_to_push_in);
						}
				}
		}
}