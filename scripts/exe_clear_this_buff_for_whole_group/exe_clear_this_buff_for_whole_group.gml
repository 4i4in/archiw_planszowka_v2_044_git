function exe_clear_this_buff_for_whole_group(_group_to_check,_buff_to_kill)
{
	for(var _ii = 1; _ii < array_length(_group_to_check); _ii++)
		{	
			var _buff_cleared = 0;
			var _this_unit = _group_to_check[_ii];
			for(var _kk = 2; _kk < array_length(_this_unit); _kk+=2)
				{
					if _this_unit[_kk] == "active_buffs"
						{
							var _buff_array = _this_unit[_kk+1];
							for(var _nn = 0; _nn < array_length(_buff_array); _nn+=2)
								{
									if _buff_array[_nn] == _buff_to_kill
										{
											array_delete(_buff_array,_nn,2);
											_buff_cleared = 1;
											break;
										}
									if _buff_cleared > 0	{break;};
								}
							if _buff_cleared > 0	{break;};
						}
					if _buff_cleared > 0	{break;};
				}
		}

	return(_group_to_check);
}