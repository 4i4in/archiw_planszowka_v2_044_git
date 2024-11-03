function exe_refresh_AP_start_of_turn(_xx,_yy,_curent_side)
{
	var _anybody_of_ours_here = 0;
	var _curent_side_num = exe_return_curent_side_by_name(_curent_side);
	var _all_groups_here = game_board_array[_xx][_yy][$ "units"];
	for(var _ii = 0; _ii < array_length(_all_groups_here); _ii++)
		{
			if _all_groups_here[_ii][0][1]	==	_curent_side
				{
					_anybody_of_ours_here++;
					var _this_group = _all_groups_here[_ii]
					for(var _kk = 1; _kk < array_length(_this_group); _kk++)
						{
							//var _this_unit = _this_group[_kk];
							exe_refresh_my_AP(_xx,_yy,_ii,_kk,_curent_side_num);
						}
				}
		}
	return(_anybody_of_ours_here);
}