function exe_check_if_river_delta_exist(_xx,_yy)
{
	var _river_delta_exist = 0;
	var _river_array_target = game_board_array[_xx][_yy][$ "river"];
	for(var _ii = 0; _ii < array_length(_river_array_target);_ii++)
		{
			var _river_here = _river_array_target[_ii];
			_river_here = string_delete(_river_here,1,string_length("rivers_"));
			if _river_here > 10	{_river_delta_exist = 1;break;}
		}
	return(_river_delta_exist);
}