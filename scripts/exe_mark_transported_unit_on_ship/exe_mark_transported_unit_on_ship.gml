function exe_mark_transported_unit_on_ship(_this_unit_place_taken,_embarked_unit_name,_current_x,_current_y,_target_group)
{
	var _this_group = game_board_array[_current_x][_current_y][$ "units"][_target_group];
	for(var _ii = 1; _ii < array_length(_this_group); _ii++)
		{
			var _this_unit = _this_group[_ii];
			if _this_unit[0] == "ship"
				{
					if _this_unit_place_taken < 1	{break;};
					var _cargo_max = 0;
					var _cargo_loaded = 0;
					for(var _kk = 2; _kk < array_length(_this_unit); _kk +=2)
						{
							if _this_unit[_kk] == "carry_transport"
								{
									var _cargo_list = _this_unit[_kk+1]
									for(var _nn = 0; _nn < array_length(_cargo_list); _nn+=2)
										{
											if _cargo_list[_nn] == "carry_max"	{_cargo_max = _cargo_list[_nn+1];}
											else	{_cargo_loaded += _cargo_list[_nn+1]};
										}
									break;
								}
						}
					if _cargo_max - _cargo_loaded > 0	&&	_this_unit_place_taken > 0
						{
							var _can_load = _cargo_max - _cargo_loaded;
							var _load_that_much = 0;
							if _can_load +1 > _this_unit_place_taken
								{
									_load_that_much = _this_unit_place_taken;
									_this_unit_place_taken = 0;
								}
							else
								{
									_this_unit_place_taken = -(_load_that_much - _this_unit_place_taken);	
									_load_that_much = _can_load;
								}
							exe_load_ship_with_cargo(_current_x,_current_y,_target_group,_ii,_embarked_unit_name,_load_that_much,-1);
						}
				}
		}
}