function add_resources(_xx,_yy,_prop_string,_val1)
{
	//this value show how much of given prop is legal in given terrain condition
	var _legal = check_if_prop_is_legal_on_terrain(_xx,_yy,_prop_string);
	
	var _id_props_xy = game_board_array[_xx][_yy][$ "tile_resources"];
	var _values_found = 0;
	for(var _ff = 0; _ff < array_length(_id_props_xy); _ff++)
		{
			var _str1 = array_get(_id_props_xy,_ff);	
			if string_starts_with(_str1, _prop_string)
				{
					var str2 = string_delete(_str1,1, string_length(_prop_string)	);
					_values_found += real(str2);
					array_delete(_id_props_xy, _ff, 1); 
					_ff--;
					if _ff < 0	{_ff = 0};
				}
		}
	_values_found += _val1;
	if _values_found > 0
		{
			if _values_found > mapeditor.max_random_terrain	{	_values_found = mapeditor.max_random_terrain	};
			if _values_found > _legal {	_values_found = _legal	};
			if _values_found > 0
				{
					array_push(_id_props_xy, string(_prop_string +string(_values_found)	)	);
				}
		}

}