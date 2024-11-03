function exe_compare_buffs_and_return_values(_important_buffs_here,_active_own_buffs)
{
	for (var _ii = 0; _ii < array_length(_active_own_buffs); _ii +=2)
		{
			var _active_buff = _active_own_buffs[_ii];
			for(var _kk = 0; _kk < array_length(_important_buffs_here); _kk +=2)
				{
					var _important_buff = _important_buffs_here[_kk];
					if _active_buff == _important_buff
						{
							array_set(_important_buffs_here,_kk+1,1);
						}
				}
		}
	return(_important_buffs_here);
}