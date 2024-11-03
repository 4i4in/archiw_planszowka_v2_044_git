function grab_city_data_utylities(_array1,_xx,_yy,_resources_total)
{
	//grabing resources
	var _check_this_array = _array1[_xx][_yy][$ "facility"];
	if array_length(_check_this_array) > 0
		{
			for(var _ii = 0; _ii < array_length(_check_this_array); _ii++)
				{
					var _this_resource = _check_this_array[_ii];
					for(var _kk = 0; _kk < array_length(_resources_total); _kk++)
						{
							var _check_in_table = _resources_total[_kk][0];

							if string(_this_resource) = string(_check_in_table)
								{
									array_push(_resources_total[_kk],1);
									
									var _stuff_to_push_in = _this_resource;
									var _value_to_push_in = 1;
									add_to_city_min_xy_reference(_xx,_yy,_stuff_to_push_in,_value_to_push_in);
								}
						}
				}
		}
	return(_resources_total);
}