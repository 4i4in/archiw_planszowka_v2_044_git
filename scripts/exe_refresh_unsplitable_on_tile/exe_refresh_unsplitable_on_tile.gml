function exe_refresh_unsplitable_on_tile(_xx,_yy,_this_group)
{
	var _group_to_check = game_board_array[_xx][_yy][$ "units"][_this_group];
	for(var _ii = 1; _ii < array_length(_group_to_check); _ii++)
		{
			var _we_carry_someone = -1;
			var _we_are_unsplitable = -1;
			var _this_unit = _group_to_check[_ii];
			for(var _kk = 2; _kk < array_length(_this_unit); _kk+=2)
				{
					if _this_unit[_kk] == "active_buffs"
						{
							var _buff_array = _this_unit[_kk+1];
							for(var _nn = 0; _nn < array_length(_buff_array); _nn+=2)
								{
									if _buff_array[_nn] == "unsplitable"	{_we_are_unsplitable = 1;};
								}
						}
					if _this_unit[_kk] == "carry_transport"
						{
							var _carry_array = _this_unit[_kk+1];
							for(var _nn = 0; _nn < array_length(_carry_array); _nn+=2)
								{
									if string_starts_with(_carry_array[_nn],"unit")			{_we_carry_someone = 1;};
									if string_starts_with(_carry_array[_nn],"population")	{_we_carry_someone = 1;};
								}
						}
				}
			if _we_carry_someone < 0
				{
					if _we_are_unsplitable > 0
						{
							//clear unsplitable
							var _clear_buff = "unsplitable";
							_this_unit = exe_clear_this_buff_from_unit(_this_unit,_clear_buff);
						}
				}
		}
}