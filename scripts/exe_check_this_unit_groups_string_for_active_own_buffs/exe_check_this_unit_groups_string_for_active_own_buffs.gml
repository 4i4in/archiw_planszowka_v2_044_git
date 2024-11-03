function exe_check_this_unit_groups_string_for_active_own_buffs(_str_units_groups,_this_side)
{
	var _active_own_buffs = [];
	for(var _ee = 0; _ee < array_length(_str_units_groups); _ee++)
		{
			var _this_group_array = _str_units_groups[_ee];
			var _group_control = _this_group_array[0][1];
			if _group_control == _this_side
				{
					for(var _kk = 1; _kk < array_length(_this_group_array); _kk++)
						{
							var _this_unit_array = _this_group_array[_kk];
							for(var _nn = 2; _nn < array_length(_this_unit_array); _nn+=2)
								{
									var _name_found = _this_unit_array[_nn];
									if string_starts_with(_name_found,"active_buffs")
										{
											var _buffs_array = _this_unit_array[_nn+1];
											for(var _curent_buff = 0;_curent_buff < array_length(_buffs_array);_curent_buff+=2)
												{
													var _active_buff_found = _buffs_array[_curent_buff];
													var _buff_exist_on_list = 0;
													for(var _aob = 0; _aob < array_length(_active_own_buffs); _aob +=2)
														{
															if _active_own_buffs = _active_buff_found	{_buff_exist_on_list=1;};
														}
													if _buff_exist_on_list < 1
														{
															array_push(_active_own_buffs,_active_buff_found,_buffs_array[_curent_buff+1]);
														}
												}
										}
								}
						}
				}
		}
	return(_active_own_buffs);
}