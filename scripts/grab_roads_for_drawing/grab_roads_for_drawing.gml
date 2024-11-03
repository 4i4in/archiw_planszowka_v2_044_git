function grab_roads_for_drawing(_array1,_xx,_yy)
{
	//grabing resources
	var _check_this_array = _array1[_xx][_yy][$ "road"];
	if array_length(_check_this_array) > 0
		{
			for(var _ii = 0; _ii < array_length(_check_this_array); _ii++)
				{
					var _this_resource = _check_this_array[_ii];
					var _clip_here = string_pos("_", _this_resource);
					var _this_resurce_value = string_delete(_this_resource,1,_clip_here);
					var _this_resource = string_delete(_this_resource,_clip_here,3);
					for(var _kk = 0; _kk < array_length(this_city_xy_reference); _kk++)
						{
							var _curent_xy_array = this_city_xy_reference[_kk];
							var _xx_orig_found = this_city_xy_reference[_kk][0];
							var _yy_orig_found = this_city_xy_reference[_kk][1];
							
							if (_xx_orig_found = _xx && _yy_orig_found = _yy)
								{
									array_push(_curent_xy_array,_this_resource,_this_resurce_value);
								}
							
						}
				}
		}
}