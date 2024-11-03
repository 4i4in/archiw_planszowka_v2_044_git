function fill_city_utylites_array(_city_total)
{
	for(var _ii = 0; _ii < array_length(sides_array); _ii++)
		{
			var _utylity_list_of_side = sides_array[_ii][$ "utylity"];
			for(var _kk = 0; _kk < array_length(_utylity_list_of_side); _kk++)
				{
					var _list_of_side_utylites = _utylity_list_of_side[_kk];
					var _push_this = [_list_of_side_utylites];
					array_push(_city_total,_push_this);
				}
		}
	return(_city_total);
}