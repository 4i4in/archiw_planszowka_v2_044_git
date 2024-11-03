function exe_check_if_can_embark_on_ship(_xx,_yy,_curent_side)
{
	var _ship_exist = -1;
	var _continue = 0;
	var _curent_side_num = exe_return_curent_side_by_name(_curent_side);
	var _max_units_on_tile = sides_array[_curent_side_num][$ "max_units_on_tile"];
	var _known_groups_on_tile = game_board_array[_xx][_yy][$ "units"];
	if array_length(_known_groups_on_tile) > 0	{_continue = 1;};
	if _continue > 0
		{
			for(var _ii = 0; _ii < array_length(_known_groups_on_tile); _ii++)
				{
					if _ship_exist > -1	{break;};
					var _this_group = _known_groups_on_tile[_ii];
					var _this_group_control = _this_group[0][1];
					if _this_group_control == _curent_side	&&	array_length(_this_group) < _max_units_on_tile+1
						{
							if _ship_exist > -1	{break;};
							for(var _kk = 1; _kk < array_length(_this_group); _kk++)
								{
									if _this_group[_kk][0] == "ship"	
										{
											_ship_exist = _ii;
											break;
										};
								}
						}
				}
		}
	
	return(_ship_exist);
}