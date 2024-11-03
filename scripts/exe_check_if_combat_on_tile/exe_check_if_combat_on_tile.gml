function exe_check_if_combat_on_tile(_xx,_yy,_curent_side)
{
	var _suspicious_on_tile = 0;
	var _operational_groups = operational_array[_xx][_yy][$ "units"];
	
	//checking for unknown groups and unknown units
	for(var _ii = 0; _ii < array_length(_operational_groups); _ii++)
		{
			if _suspicious_on_tile = 1 {break;};
			var _this_group = _operational_groups[_ii];
			if _this_group[0][1] != _curent_side	{_suspicious_on_tile = 1;break;};
			for(var _kk = 1; _kk < array_length(_this_group);_kk++)
				{
					if _suspicious_on_tile = 1 {break;};
					var _this_unit = _this_group[_kk];
					for(var _nn = 2; _nn < array_length(_this_unit); _nn+=2)
						{
							if _suspicious_on_tile = 1 {break;};
							if _this_unit[_nn] = "control"
								{
									var _highest_control = 0;
									var _highest_control_side = "";
									var _control_array = _this_unit[_nn+1];
									for(var _pp = 0; _pp < array_length(_control_array); _pp +=2)
										{
											var _control_here = _control_array[_pp];
											var _control_value = _control_array[_pp+1];
											if _control_value > _highest_control
												{
													_highest_control = _control_value;
													_highest_control_side = _control_here;
												}
										}
									if _highest_control_side != _curent_side	{_suspicious_on_tile = 1;break;};
								}
						}
				}
		}
	return(_suspicious_on_tile);
}