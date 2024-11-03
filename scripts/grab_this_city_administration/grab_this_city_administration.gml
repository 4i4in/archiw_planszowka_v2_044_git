function grab_this_city_administration(_reference_array)
{
	this_city_administration = [];
	for(var _ii = 0; _ii < array_length(_reference_array); _ii++)
		{
			var _this_tile_reference_x = _reference_array[_ii][0];
			var _this_tile_reference_y = _reference_array[_ii][1];
			var _this_tile_draw_x = _reference_array[_ii][2];
			var _this_tile_draw_y = _reference_array[_ii][3];
			
			var _this_city_administration = operational_array[_this_tile_reference_x][_this_tile_reference_y][$ "city_setings"];
			
			if array_length(_this_city_administration) < 1
				{	_this_city_administration = ["auto"];
					var _temp_array = [];
					array_push(_temp_array,_this_tile_reference_x,_this_tile_reference_y,_this_tile_draw_x,_this_tile_draw_y,_this_city_administration);
				}
			else
				{
					var _temp_array = _this_city_administration;
				}
			array_push(this_city_administration,_temp_array);
			delete(_temp_array);
		}
	

	return(this_city_administration);
}