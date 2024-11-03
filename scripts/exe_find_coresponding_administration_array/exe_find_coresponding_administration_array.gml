function exe_find_coresponding_administration_array(_xx,_yy)
{
	var _tile_city_administration_array = [];
	for(var _ii = 0; _ii < array_length(this_city_administration); _ii++)
		{
			var _admin_x_found = this_city_administration[_ii][0];
			var _admin_y_found = this_city_administration[_ii][1];
			
			if (_xx = _admin_x_found	&&	_yy = _admin_y_found)
				{
					_tile_city_administration_array = this_city_administration[_ii][4];
					return(_tile_city_administration_array);
				}
		}
}