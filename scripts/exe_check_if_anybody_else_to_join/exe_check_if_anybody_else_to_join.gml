function exe_check_if_anybody_else_to_join(_xx,_yy,_curent_side)
{
	var _anybody_else_to_join = 0;
	
	var _groups_here = game_board_array[_xx][_yy][$ "units"];
	if array_length(_groups_here) > 1
		{
			var _our_groups_count = 0;
			for(var _ii = 0; _ii < array_length(_groups_here); _ii++)
				{
					var _control_group = _groups_here[_ii][0][1];
					if _control_group == _curent_side	{_our_groups_count++;};
				}
			if _our_groups_count > 1
				{
					_anybody_else_to_join = 1;
				}
		}
	
	return(_anybody_else_to_join);
}