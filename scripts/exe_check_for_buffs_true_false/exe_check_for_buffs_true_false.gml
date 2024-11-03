function exe_check_for_buffs_true_false(_str_units_groups_gameboard,_keep_soruce,_check_for)
{
	var _criteria_meet = 0;
	var _check_this_group = _str_units_groups_gameboard[_keep_soruce];
	for(var _ii = 1; _ii < array_length(_check_this_group); _ii++)
		{
			if _criteria_meet > 0	{break;};
			var _this_unit = _check_this_group[_ii];
			for(var _kk = 2; _kk < array_length(_this_unit); _kk+=2)
				{
					if _criteria_meet > 0	{break;};
					if _this_unit[_kk] == "active_buffs"
						{
							var _Abuff_array = 	_this_unit[_kk+1]
							for(var _nn = 0; _nn < array_length(_Abuff_array); _nn+=2)
								{
									var _buff_found = _Abuff_array[_nn];
									for(var _pp = 0; _pp < array_length(_check_for);_pp++)
										{
											if _buff_found = _check_for[_pp]	{_criteria_meet = 1;break;};
										}
								}
						}
				}
		}
	return(_criteria_meet)
}