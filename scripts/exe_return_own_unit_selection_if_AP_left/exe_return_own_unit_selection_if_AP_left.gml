function exe_return_own_unit_selection_if_AP_left(_xx,_yy,_curent_side,_minimal_AP)
{
	var _select_us = 0;
	var _select_group = -1;
	var _all_groups_here = game_board_array[_xx][_yy][$ "units"];
	for(var _ii = 0; _ii < array_length(_all_groups_here); _ii++)
		{
			if _all_groups_here[_ii][0][1]	==	_curent_side
				{
					var _AP_ok = 0;
					var _this_group = _all_groups_here[_ii]
					for(var _kk = 1; _kk < array_length(_this_group); _kk++)
						{
							var _this_unit = _this_group[_kk];
							for(var _nn = 2; _nn < array_length(_this_unit); _nn+=2)
								{
									if _this_unit[_nn] == "action_points"
										{
											if _this_unit[_nn+1][1] > _minimal_AP
												{
													_AP_ok = 1; break;
												}
											else	{break;};
										}
									if _AP_ok > 0	{break;};
								}
							if _AP_ok > 0	{break;};
						}
					if _AP_ok > 0
						{
							_select_us = 1;	_select_group = _ii;
						}
				}
		}
	var _return_array = [_select_us,_select_group];
	return(_return_array)
}