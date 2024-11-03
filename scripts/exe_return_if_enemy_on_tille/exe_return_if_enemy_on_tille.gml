function exe_return_if_enemy_on_tille(_xx,_yy,_curent_side)
{
	var _we_attak = 0;
	var _our_side_num = exe_return_curent_side_by_name(_curent_side);
	var _our_foregin_policy = sides_array[_our_side_num][$ "foregin_policy"];
	var _groups_on_tile = game_board_array[_xx][_yy][$ "units"];
	for(var _ii = 0; _ii < array_length(_groups_on_tile); _ii++)
		{
			if _we_attak > 0	{break;};
			var _this_group_control = _groups_on_tile[_ii][0][1];
			for(var _kk = 0; _kk < array_length(_our_foregin_policy);_kk++)
				{
					if 	_our_foregin_policy[_kk][0] == "always_attack"
						{
							for(var _nn = 1; _nn < array_length(_our_foregin_policy[_kk]);_nn++)
								{
									if _our_foregin_policy[_kk][_nn] == _this_group_control	{_we_attak=1;};
								}
						}
					if 	_our_foregin_policy[_kk][0] == "oportunity_attack"
						{
							for(var _nn = 1; _nn < array_length(_our_foregin_policy[_kk]);_nn++)
								{
									if _our_foregin_policy[_kk][_nn] == _this_group_control	{_we_attak=1;};
								}
						}
					if _we_attak > 0	{break;};

				}
		}
	return(_we_attak);
}