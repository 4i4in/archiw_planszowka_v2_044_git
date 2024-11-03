function exe_calculate_overwater_embarking_ability(_current_x,_current_y,_group_control)
{
	var _groups_avalibale_for_embarking = [];
	var _groups_on_target_tile = game_board_array[_current_x][_current_y][$ "units"];
	for(var _ii = 0; _ii < array_length(_groups_on_target_tile); _ii++)
		{
			var _this_group_embarking_ability = [];
			var _this_group = _groups_on_target_tile[_ii];
			var _this_group_control = _groups_on_target_tile[_ii][0][1];
			var _this_group_side_num = exe_return_curent_side_by_name(_this_group_control);
			
			if _this_group_control == _group_control
				{
					var _max_units_on_tile = sides_array[_this_group_side_num][$ "max_units_on_tile"];
					if array_length(_this_group) < _max_units_on_tile + 1
						{
							var _policy_allows_embark_overwater = exe_return_policy_state(_this_group_side_num,"alllow_embarking",_group_control);
							if _policy_allows_embark_overwater > 0
								{	
									var _ships_toal_cargo_capcity = 0;
									var _number_of_ships_in_unit = 0;
									for(var _kk = 1; _kk < array_length(_this_group); _kk++)
										{
											if _this_group[_kk][0] = "ship"
												{
													var _cargo_max = 0;
													var _this_unit = _this_group[_kk];
													for(var _tt = 2; _tt < array_length(_this_unit); _tt+=2)
														{
															if _this_unit[_tt] == "carry_transport"
																{
																	var _cargo_array = _this_unit[_tt+1];
																	for(var _gg = 0; _gg < array_length(_cargo_array);_gg+=2)
																		{
																			if _cargo_array[_gg] == "carry_max"	{_cargo_max+=_cargo_array[_gg+1];}
																			else {_cargo_max-=_cargo_array[_gg+1];};
																		}
																}
															if _this_unit[_tt] == "number"
																{
																	_number_of_ships_in_unit = _this_unit[_tt+1][1];
																}
														}
													_ships_toal_cargo_capcity += _cargo_max * _number_of_ships_in_unit;
												}
										}
									array_push(_this_group_embarking_ability,_ships_toal_cargo_capcity);
								}
							else
								{
									array_push(_this_group_embarking_ability,0);
								}
						}
					else
						{
							array_push(_this_group_embarking_ability,0);
						}
				}
			else
				{
					array_push(_this_group_embarking_ability,0);
				}
			array_push(_groups_avalibale_for_embarking,_this_group_embarking_ability);
		}
		
	return(_groups_avalibale_for_embarking);
}