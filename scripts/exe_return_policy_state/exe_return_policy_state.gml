function exe_return_policy_state(_asked_side_num,_askw_what,_whos_asking)
{
	var _policy_statement = 0;
	var _foregin_policy = sides_array[_asked_side_num][$ "foregin_policy"];
	for(var _ii = 0; _ii < array_length(_foregin_policy); _ii++)
		{
			if _foregin_policy[_ii][0] ==	_askw_what
				{
					var _realation_list = _foregin_policy[_ii];
					for(var _kk = 1; _kk < array_length(_realation_list); _kk++)
						{
							if _realation_list[_kk] == _whos_asking	{_policy_statement = 1;};
						}
				}
		}
	
	return(_policy_statement);
}