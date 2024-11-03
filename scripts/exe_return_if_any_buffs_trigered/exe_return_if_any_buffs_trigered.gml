function exe_return_if_any_buffs_trigered(_inspect_this,_important_buffs_here)
{
	var _trigger = 0;
	for(var _ii = 0; _ii < array_length(_important_buffs_here); _ii +=2)
		{
			if _trigger = 1	{break;};
			var _buff_found = _important_buffs_here[_ii];
			for(var _kk = 0; _kk < array_length(_inspect_this);_kk++)
				{
					var _compare_to = _inspect_this[_kk];
					if _buff_found = _compare_to
						{
							if _important_buffs_here[_ii+1] > 0
								{
									_trigger = 1;break;
								}
						}
				}
		}
	return(_trigger);
}