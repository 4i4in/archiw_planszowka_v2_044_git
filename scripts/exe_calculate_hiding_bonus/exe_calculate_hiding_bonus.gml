function exe_calculate_hiding_bonus(_xx,_yy,_hiding_bonus_arr)
{
	var _hiding_bonus = 0;
	
	var _terrain_here =		game_board_array[_xx][_yy][$ "tile_terrain"][0];
	var _props_here =		game_board_array[_xx][_yy][$ "tile_props"];
	for(var _ii = 0; _ii < array_length(_hiding_bonus_arr); _ii+=2)
		{
			if string_starts_with(_terrain_here,_hiding_bonus_arr[_ii])
				{
					_hiding_bonus += _hiding_bonus_arr[_ii+1];
				}
		}
	for(var _ii = 0; _ii < array_length(_hiding_bonus_arr); _ii+=2)
		{
			var _hiding_name = _hiding_bonus_arr[_ii];
			for(var _kk = 0; _kk < array_length(_props_here); _kk++)
				{
					var _prop_here = _props_here[_kk];
					if string_starts_with(_prop_here,_hiding_name)
						{
							var _prop_value = string_char_at(	_prop_here,string_length(_prop_here)	);
							_prop_value = real(_prop_value);
							_hiding_bonus += _hiding_bonus_arr[_ii+1] * _prop_value;
						}
				}
		}
	return(_hiding_bonus);
}