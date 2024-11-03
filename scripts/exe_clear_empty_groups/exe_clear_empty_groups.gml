function exe_clear_empty_groups(_xx,_yy)
{
	var _str_units_groups_gameboard = game_board_array[_xx][_yy][$ "units"];
	var _empty_group_list = [];
	for(var _ii = 0; _ii < array_length(_str_units_groups_gameboard);_ii++)
		{
			var _this_group_array = _str_units_groups_gameboard[_ii];
			if array_length(_this_group_array) < 2
				{
					array_push(_empty_group_list,_ii)
				}
		}
	while(array_length(_empty_group_list) > 0)
		{
			var _delete_me = array_pop(_empty_group_list);
			array_delete(_str_units_groups_gameboard,_delete_me,1);
		}
}