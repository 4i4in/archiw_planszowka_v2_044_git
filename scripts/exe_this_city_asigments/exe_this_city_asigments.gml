function exe_this_city_asigments(_assigments_array)
{
	
	//asigning
	for(var _ii = 0; _ii < array_length(_assigments_array); _ii++)
		{
			var _asigment_x = _assigments_array[_ii][0];
			var _asigment_y = _assigments_array[_ii][1];
			var _asigments = _assigments_array[_ii][4];
			if array_length(_asigments) < 2
				{
					var _xy_reference = undefined;
					//find acording xy
					for(var _kk = 0; _kk < array_length(this_city_xy_reference); _kk++)
						{
							var _check_x = this_city_xy_reference[_kk][0];
							var _check_y = this_city_xy_reference[_kk][1];
							if (_asigment_x = _check_x &&	_asigment_y = _check_y)
								{
									_xy_reference = this_city_xy_reference[_kk];
								}
						}
					if _xy_reference != undefined
						{
							for(var _kk = 4; _kk < array_length(_xy_reference); _kk+=2)
								{
									var _utylity_name_here = _xy_reference[_kk];
									var _utylity_value_here = _xy_reference[_kk+1];
									if string_starts_with(_utylity_name_here,"city_")
										{
											var _push_name = string_replace(_utylity_name_here,"city","stayhome");
											array_push(_asigments,_push_name,_utylity_value_here);
										}
								}
						}
				}
		}
	return(_assigments_array);
}