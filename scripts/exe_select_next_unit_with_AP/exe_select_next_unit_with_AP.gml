function exe_select_next_unit_with_AP(_pass_array)
{
	var _current_player = game_struct.current_player;
	if _current_player < 0	
		{
			mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
			mo_string = "current is mapeditor \n it is not a player that can be refreshed \n proceeding stoped \n choose player!";	
			exit;
		};
	var _curent_side = sides_array[_current_player][$ "side_name"];
	var _minimal_AP = sides_array[_current_player][$ "max_AP_saving"];
	
	var _start_x = _pass_array[1];
	var _start_y = _pass_array[2];
	var _starting_unit_x = _pass_array[3];
	var _starting_unit_y = _pass_array[4];
	
	var _mark_if_from_begining = 0;
	if _start_x = 0	&& _start_y = 0	{_mark_if_from_begining = 1};
	var _num_of_own_units_found = 0;
	
	for(var _xx = _start_x; _xx < game_struct.map_xsize; _xx++)
		{
			for(var _yy = _start_y; _yy < game_struct.map_ysize; _yy++)
				{
					if !string_starts_with(operational_array[_xx][_yy][$ "tile_terrain"][0],"unknown")	&&	(_xx != _starting_unit_x	&&	_yy != _starting_unit_y)
						{
							var _select_units_if_own_and_AP_left = exe_return_own_unit_selection_if_AP_left(_xx,_yy,_curent_side,_minimal_AP);
							if _select_units_if_own_and_AP_left[0] > 0
								{
									_num_of_own_units_found ++;
									var _select_this_group = _select_units_if_own_and_AP_left[1];
									this_city_xy_reference = [[_select_this_group,-1]];
									display_terrain_menu_x = _xx;
									display_terrain_menu_y = _yy;
									display_terrain_menu = 21;
									
									game_struct.cam_xpos = (_xx-floor(cam_xscope/2)) * game_struct.cell_size/game_struct.zoom_scale;
									game_struct.cam_ypos = (_yy-floor(cam_yscope/2)) * game_struct.cell_size/game_struct.zoom_scale;
			
									force_redraw = 1;
									exit;
								}
						}
				}
		}
	if _num_of_own_units_found = 0	&&	_start_x = 0	&&	_start_y = 0
		{
			//everything was serched - no more units to move	
		}
	else
		{
			//try from begining
			var _new_pass_array = ["",0,0,_starting_unit_x,_starting_unit_y];
			exe_select_next_unit_with_AP(_new_pass_array);
		}
	
}