function exe_check_if_river_is_continuos_from_to(source_x,source_y,_xx,_yy)
{
	var _road_is_continuos = 0;
	var _road_array_source = game_board_array[source_x][source_y][$ "river"];
	var _road_array_target = game_board_array[_xx][_yy][$ "river"];
	if array_length(_road_array_source) > 0 &&	array_length(_road_array_target) > 0
		{
			var _dir_x_reversed = 0;	var _dir_y_reversed = 0;
			if point_distance(_xx,_yy,source_x,source_y) > 2
				{
					if source_x = 0 &&	_xx = game_struct.map_xsize - 1	{_dir_x_reversed = - game_struct.map_xsize};
					if source_x = game_struct.map_xsize - 1 &&	_xx = 0	{_dir_x_reversed =	 game_struct.map_xsize};
					if source_y = 0 &&	_yy = game_struct.map_ysize - 1	{_dir_y_reversed = - game_struct.map_ysize};
					if source_y = game_struct.map_ysize - 1 &&	_yy = 0	{_dir_y_reversed =   game_struct.map_ysize};
				}
			
			var _source_direction = point_direction(source_x,source_y,_xx+_dir_x_reversed,_yy+_dir_y_reversed);
			var _target_direction = _source_direction - 180;	
			if _target_direction < 0 {_target_direction += 360};
			_source_direction = floor(_source_direction/45); if _source_direction = 8 {_source_direction = 0};
			_target_direction = floor(_target_direction/45); if _target_direction = 8 {_target_direction = 0};
			
			var _source_corect = 0;
			var _target_corect = 0;
			for(var _ii = 0; _ii < array_length(_road_array_source);_ii++)
				{
					var _road_here = _road_array_source[_ii];
					_road_here = string_delete(_road_here,1,string_length("rivers_"));
					if _road_here = _source_direction		{_source_corect = 1;};
					if _road_here = _source_direction+10	{_source_corect = 1;};
				}
			if _source_corect > 0
				{
					for(var _ii = 0; _ii < array_length(_road_array_target);_ii++)
						{
							var _road_here = _road_array_target[_ii];
							_road_here = string_delete(_road_here,1,string_length("rivers_"));
							if _road_here = _target_direction		{_target_corect = 1;};
							if _road_here = _target_direction+10	{_target_corect = 1;};
						}
				}
			if _source_corect > 0 && _target_corect > 0
				{
					_road_is_continuos = 1;
				}
		}
	return(_road_is_continuos);
}