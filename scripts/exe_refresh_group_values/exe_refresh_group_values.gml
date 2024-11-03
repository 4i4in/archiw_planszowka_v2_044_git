function exe_refresh_group_values(_xx,_yy,_group_num)
{
	var _group_to_update = game_board_array[_xx][_yy][$ "units"][_group_num];
	var _group_size = array_length(_group_to_update)-1;
	for(var _ii = 1; _ii < array_length(_group_to_update); _ii++)
		{
			exe_refresh_unit_values_in_group(_xx,_yy,_group_num,_ii,_group_size);
		}
}