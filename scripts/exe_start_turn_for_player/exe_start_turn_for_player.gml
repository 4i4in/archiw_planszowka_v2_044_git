function exe_start_turn_for_player()
{
	var _current_player = game_struct.current_player;
	if _current_player < 0	
		{
			mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
			mo_string = "current is mapeditor \n it is not a player that can be refreshed \n proceeding stoped \n choose player!";	
			exit;
		};
	exe_switch_operationl_array_for_current_player();
	var _curent_side = sides_array[_current_player][$ "side_name"];
	//var _visibility_detectors = exe_create_visibility_detectors(_current_player);
	//updating units on map
	for(var _xx = 0; _xx < game_struct.map_xsize; _xx++)
		{
			for(var _yy = 0; _yy < game_struct.map_ysize; _yy++)
				{
					if !string_starts_with(operational_array[_xx][_yy][$ "tile_terrain"][0],"unknown")
						{
							//var _this_tile = operational_array[_xx][_yy];
							var _anybody_of_ours_here =	exe_refresh_AP_start_of_turn(_xx,_yy,_curent_side);
							if _anybody_of_ours_here > 0
								{
									//uncover_new_vis
									checklist_for_gameboard_eoturn = [];
									var _visibility_detectors = exe_create_visibility_detectors(_current_player);
									exe_given_side_tile_visibility_return_checklist(_visibility_detectors,_curent_side,_current_player,_xx,_yy);
									var _side_array_numlist = [_current_player];
									exe_expand_and_uncover_map_by_list_v2(checklist_for_gameboard_eoturn,_side_array_numlist);
								}
						}
				}
		}
	
}