function exe_compare_buff_arrays_return_to_activation(_array_buffs_name1,_array_buffs_name2)
{
	var _return_buffs_names = [];
	
	for(var _ii = 0; _ii < array_length(_array_buffs_name2); _ii++)
		{
			var _buff_found = 0;
			for(var _kk = 0; _kk < array_length(_array_buffs_name1); _kk++)
				{
					if _array_buffs_name2[_ii] == _array_buffs_name1[_kk]	{_buff_found = 1;};
				}
			if _buff_found < 1
				{
					array_push(_return_buffs_names,_array_buffs_name2[_ii]);
				}
		}
	return(_return_buffs_names);
}