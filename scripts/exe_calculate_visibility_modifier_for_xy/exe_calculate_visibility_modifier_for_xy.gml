function exe_calculate_visibility_modifier_for_xy(_xx,_yy,_terrain_modyfiers_array)
{
	var _return_modyfier = 0;

	var _terrain_here = game_board_array[_xx][_yy][$ "tile_terrain"][0];
	var _props_here = game_board_array[_xx][_yy][$ "tile_props"];
	for(var _ii = 0; _ii < array_length(_terrain_modyfiers_array); _ii += 2)
		{
			var _modyfier_name = _terrain_modyfiers_array[_ii];
			for(var _kk = 0; _kk < array_length(_props_here); _kk++)
				{
					var _current_prop = _props_here[_kk];
					if string_starts_with(_current_prop,_modyfier_name)
						{
							var _prop_value = string_delete(_current_prop,1,string_length(_modyfier_name)+1);
							_prop_value = real(_prop_value) * _terrain_modyfiers_array[_ii+1];
							_return_modyfier += _prop_value;
						}
				}
			if string_starts_with(_terrain_here,_modyfier_name)
				{
					_return_modyfier += _terrain_modyfiers_array[_ii+1];
				}
		}
	return(_return_modyfier);
}