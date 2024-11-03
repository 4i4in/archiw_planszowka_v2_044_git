function exe_check_if_place_on_tile(_xx,_yy,_curent_side)
{
	var _suspicious_on_tile = 0;
	var _gameboard_groups = game_board_array[_xx][_yy][$ "units"];
	if array_length(_gameboard_groups) < game_struct.max_units_groups_per_tile	{_suspicious_on_tile = 1;};
	
	return(_suspicious_on_tile);
}