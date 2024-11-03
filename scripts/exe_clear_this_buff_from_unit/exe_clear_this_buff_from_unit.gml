function exe_clear_this_buff_from_unit(_unit_to_check,_buff_to_kill)
{
	for(var _kk = 2; _kk < array_length(_unit_to_check); _kk+=2)
		{
			if _unit_to_check[_kk] == "active_buffs"
				{
					var _buff_array = _unit_to_check[_kk+1];
					for(var _nn = array_length(_buff_array)-2; _nn > 1; _nn-=2)
						{
							if _buff_array[_nn] == _buff_to_kill
								{
									array_delete(_buff_array,_nn,2);
								}
						}
				}
		}
	return(_unit_to_check);
}