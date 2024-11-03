function exe_create_checklist_array_1pos()
{
	checklist_for_gameboard_eoturn = [];
	checklist_for_gameboard_eoturn = array_create(game_struct.map_xsize);
	for (var _ii = game_struct.map_xsize-1; _ii >= 0; _ii--) 
		{
		    checklist_for_gameboard_eoturn[_ii] = array_create(game_struct.map_ysize);
		}
}