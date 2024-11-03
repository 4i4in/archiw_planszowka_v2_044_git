function grab_city_data_resources(_array1,_xx,_yy,_resources_total)
{
	//grabing resources
	for(var _pp = 0; _pp < 2; _pp++)
		{
			if _pp = 0	{	var _check_this_array = _array1[_xx][_yy][$ "tile_resources"];	};
			if _pp = 1	{	var _check_this_array = _array1[_xx][_yy][$ "tile_props"];	};
			if array_length(_check_this_array) > 0
				{
					for(var _ii = 0; _ii < array_length(_check_this_array); _ii++)
						{
							var _this_resource = _check_this_array[_ii];
							for(var _kk = 0;_kk < array_length(_resources_total);_kk++)
								{
									var _this_name = _resources_total[_kk][0];
									if string_starts_with(string(_this_resource), string(_this_name))
										{
											_this_resource = string_delete(_this_resource,1,string_length(string(_this_name))+1	);
											var _this_resource = real(_this_resource);
											array_push(_resources_total[_kk], _this_resource);
											
											var _stuff_to_push_in = string(_resources_total[_kk][0]);
											var _value_to_push_in = _this_resource;
											add_to_city_min_xy_reference(_xx,_yy,_stuff_to_push_in,_value_to_push_in);
										}
								}
						}
				}
		}
	return(_resources_total);
}