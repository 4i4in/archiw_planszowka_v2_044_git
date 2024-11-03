function fill_city_total_array(_city_total)
{
	for(var _ii = 0; _ii < array_length(sides_array); _ii++)
		{
			var _this_side_name = sides_array[@ _ii][$ "side_name"];
			var _temp_array = [string(_this_side_name)];
			array_push(_city_total,_temp_array);
		}
	return(_city_total);
}