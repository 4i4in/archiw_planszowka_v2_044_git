function grab_city_data_homes(_array1,_xx,_yy,_resources_total)
{
	//grabing resources
	var _check_this_array = _array1[_xx][_yy][$ "facility"];
	if array_length(_check_this_array) > 0
		{
			for(var _ii = 0; _ii < array_length(_check_this_array); _ii++)
				{
					var _this_resource = _check_this_array[_ii];
					if string_starts_with(string(_this_resource),"city_")
						{
							var _stuff_to_push_in = _this_resource;
							_stuff_to_push_in = string_delete(_stuff_to_push_in,string_length(_stuff_to_push_in)-1,2);
							var _resource_minus_prefix = string_delete(_this_resource,1,string_length("city_"));
							for(var _kk = 0;_kk < array_length(_resources_total);_kk++)
								{
									var _this_name = _resources_total[_kk][0];	
									if string_starts_with(string(_resource_minus_prefix),string(_this_name))
										{
											var _resource_real = string_delete(_resource_minus_prefix,1,string_length(string(_this_name))+1	);
											_resource_real = real(_resource_real);
											array_push(_resources_total[_kk], _resource_real);
											
											var _value_to_push_in = _resource_real;
											add_to_city_min_xy_reference(_xx,_yy,_stuff_to_push_in,_value_to_push_in);
										}
								}
						}
				}
		}
	return(_resources_total);
}