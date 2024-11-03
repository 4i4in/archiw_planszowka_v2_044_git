function exe_recalculate_this_city_consumption_production(_this_city_array)
{
	var _consumption_production_array = array_create(0);
	for(var _ii = 0; _ii < array_length(_this_city_array); _ii++)
		{
			var _small_temp_array = array_create(0);
			var _city_tile_array = _this_city_array[_ii];
			//finding administration array for tile
			var _tile_city_administration_array = exe_find_coresponding_administration_array(_city_tile_array[0],_city_tile_array[1]);
			var _array_all_resource_here = array_create(0);
			var _array_all_utylity_here = array_create(0);
			if array_length(_city_tile_array) > 4
				{
					//grab basic informations
					array_push(_small_temp_array,_city_tile_array[0],_city_tile_array[1],_city_tile_array[2],_city_tile_array[3]);
					//check resources here
					for(var _kk = 4; _kk < array_length(_city_tile_array); _kk+=2)
						{
							var _resurce_here = _city_tile_array[_kk];
							var _resurce_value = _city_tile_array[_kk+1];
							for(var _pp = 0; _pp < array_length(this_city_resources); _pp++)
								{
									var _acceptable_name_of_resoruce = this_city_resources[_pp][0];
									if string(_resurce_here) = string(_acceptable_name_of_resoruce)
										{	array_push(_array_all_resource_here,_resurce_here,_resurce_value);	};
								}
							if string_starts_with(_resurce_here,"utylity_")
								{	array_push(_array_all_utylity_here,_resurce_here,1);	}
							if string_starts_with(_resurce_here,"city_")
								{	array_push(_array_all_utylity_here,_resurce_here,_resurce_value);	}
						}
				}
			//check what city can do
			var _administration_mode = _tile_city_administration_array[0];
			var _administration_order_exist = 0;
			if array_length(_tile_city_administration_array) > 1	{_administration_order_exist = 1;};
			if	_administration_mode = "auto" &&	_administration_order_exist = 0
				{
					//calculate consumption
					var _small_temp_array = _push_tile_by_consumption(_small_temp_array,_array_all_utylity_here);
					var _small_temp_array = _push_tile_by_production(_small_temp_array,_array_all_utylity_here,_small_temp_array,_array_all_resource_here);
				}
			if	_administration_mode = "auto" &&	_administration_order_exist = 1
				{
					//reading in order
					for(var _kk = 0; _kk < array_length(_tile_city_administration_array); _kk++)
						{
							var _small_temp_array = _push_tile_by_consumption(_small_temp_array,_array_all_utylity_here);
						}
				}
			array_push(_consumption_production_array,_small_temp_array);
			delete(_small_temp_array);
		}
	return(_consumption_production_array);
}