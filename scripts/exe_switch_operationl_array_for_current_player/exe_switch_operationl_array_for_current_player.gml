function exe_switch_operationl_array_for_current_player()
{
	if game_struct.current_player	> -1
		{
			//here will be switch for given players uncovered map
			//as far is only editor -1
			operational_array = sides_array[game_struct.current_player][$ "side_operational_map"];
		}
	else
		{
			operational_array = game_board_array;
		}
}