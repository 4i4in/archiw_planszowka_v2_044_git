function exe_load_ship_with_cargo(_current_x,_current_y,_target_group,_target_unit,_embarked_unit_name,_load_that_much,_cargo_splitable)
{
	var _ship_unit = game_board_array[_current_x][_current_y][$ "units"][_target_group][_target_unit];
	var _cargo_list_ref = -1;
	var _active_buffs_ref = -1;
	for(var _ii = 2; _ii < array_length(_ship_unit);_ii+=2)
		{
			if _ship_unit[_ii] == "carry_transport"	{_cargo_list_ref = _ii+1};
			if _ship_unit[_ii] == "active_buffs"	{_active_buffs_ref = _ii+1};
		}
	if _cargo_list_ref > -1
		{
			array_push(game_board_array[_current_x][_current_y][$ "units"][_target_group][_target_unit][_cargo_list_ref],_embarked_unit_name,_load_that_much);
		}
	if _cargo_splitable < 0	&& _active_buffs_ref > -1
		{
			//check if already marked
			var _unmarked = 1;
			var _Abuff_list = game_board_array[_current_x][_current_y][$ "units"][_target_group][_target_unit][_active_buffs_ref];
			for(var _ii = 0; _ii < array_length(_Abuff_list); _ii+=2)
				{
					if _Abuff_list[_ii] == "unsplitable"	{_unmarked = 0; break;}
				}
			//mark unsplitable cargo
			if _unmarked > 0
				{
					array_push(_Abuff_list,"unsplitable",-2);
				}
		}
}