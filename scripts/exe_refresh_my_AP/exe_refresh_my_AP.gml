function exe_refresh_my_AP(_xx,_yy,_group_num,_unit_num,_curent_side_num)
{
	var _this_unit = game_board_array[_xx][_yy][$ "units"][_group_num][_unit_num];
	for(var _ii = 2; _ii < array_length(_this_unit); _ii+=2)
		{
			if 	_this_unit[_ii] == "action_points"
				{
					
					var _AP_left = _this_unit[_ii+1][1];
					if _AP_left > sides_array[_curent_side_num][$ "max_AP_saving"]	{_AP_left = sides_array[_curent_side_num][$ "max_AP_saving"];};
					game_board_array[_xx][_yy][$ "units"][_group_num][_unit_num][_ii+1][1] = _this_unit[_ii+1][0]+_AP_left;
					break;
				}
		}
}