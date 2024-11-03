function paint_units(_xx,_yy,_pass_array)
{
	var _side_name = _pass_array[0];
	var _unit_name = _pass_array[1];
	var _side_num = exe_return_curent_side_by_name(_side_name);
	
	if mapeditor.terrain_paint_sign > 0
		{
			var _unit_groups_on_tile = 0;
			var _read_in_unit = undefined;
			var _avilable_units = sides_array[_side_num][$ "avilable_units"]
			for(var _ii = 0; _ii < array_length(_avilable_units); _ii++)
				{
					var _unit_to_check = _avilable_units[_ii];
					if _unit_to_check[1] = _unit_name
						{
							_read_in_unit = variable_clone(sides_array[_side_num][$ "avilable_units"][_ii]);
							_read_in_unit = exe_starting_order_in_unit(_read_in_unit);
							break;
						}
				}
			var _proceed_further = 0;
			if _read_in_unit = undefined 
				{
					mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
					mo_string = "see if You selected any unit? \n" + "no such population on side : " + string(_side_name) + "\n cant read in \n check template side_" + string(_side_name);
					_proceed_further = 0;
				}
			else	{_proceed_further = 1;};
			if _proceed_further > 0	//positive paint sign, _read_in_unit exist
				{			
					//checking if terrain is legal for unit
					var _legal_terrains = undefined;
					for(var _ii = 2; _ii < array_length(_read_in_unit); _ii+=2)
						{
							var _name_found = 	_read_in_unit[_ii];
							if _name_found = "legal_terrains"
								{
									_legal_terrains = _read_in_unit[_ii+1];
									break;
								}
						}
					if _legal_terrains = undefined
						{
							mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
							mo_string = "no legal_terrains for unit : " + string(_unit_name) + "\n cant read in \n check template side_"+ string(_side_name);
							_proceed_further = 0;
						}
				}
			if _proceed_further > 0 //positive paint sign, _read_in_unit exist, _legal_terrains exist
				{
					//searching legal terrains
					var _terrain_is_legal = 0;
					var _terrain_name = game_board_array[_xx][_yy][$ "tile_terrain"][@ 0];
					var _rivers_array = game_board_array[_xx][_yy][$ "river"];
					for(var _ii = 0; _ii < array_length(_legal_terrains); _ii++)
						{
							var _unit_legal_terrain = _legal_terrains[_ii];
							if _unit_legal_terrain = "any"	{_terrain_is_legal = 1; break;};
							if string_starts_with(_terrain_name,_unit_legal_terrain) {_terrain_is_legal = 1; break;};
							if _unit_legal_terrain = "river"	&&	array_length(_rivers_array) > 0	{_terrain_is_legal = 1; break;};
						}
					if _terrain_is_legal = 0	
						{
							mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
							mo_string = "this unit : " +string(_unit_name) +" of : " + string(_side_name) +"\n can be placed only at : \n" + string(_legal_terrains);
							_proceed_further = 0;
						};
				}
			if _proceed_further > 0 //positive paint sign, _read_in_unit exist, _terrain_is_legal
				{
					//finding group to add unit
					var _add_to_group = undefined;
					var _keep_reference_num = undefined; //only for mouseinfo
					var _tille_units_array = game_board_array[_xx][_yy][$ "units"];
					var _max_units_on_tile = sides_array[_side_num][$ "max_units_on_tile"];
					_unit_groups_on_tile = array_length(_tille_units_array);
					if _unit_groups_on_tile > 0
						{
							for(var _ii = 0; _ii < array_length(_tille_units_array); _ii++)
								{
									var _local_unit_group = _tille_units_array[_ii];
									if array_length(_local_unit_group) < _max_units_on_tile + 1//header take as one unit
										{
											var _header0 = _local_unit_group[0][0];
											if string_starts_with(_header0,"group_control")
												{
													var _header1 = _local_unit_group[0][1];
													if string_starts_with(_header1,_side_name)
														{
															_add_to_group = game_board_array[_xx][_yy][$ "units"][@ _ii];
															_keep_reference_num = _ii;
															break;
														}
												}
										}
								}
						}
					if _add_to_group = undefined	&&	_unit_groups_on_tile < game_struct.max_units_groups_per_tile
						{
							_add_to_group = [];
							var _push_this = ["group_control",_side_name];
							array_push(_add_to_group,_push_this);
							array_push(_tille_units_array,_add_to_group);
							_add_to_group = game_board_array[_xx][_yy][$ "units"][@ _unit_groups_on_tile];
							_keep_reference_num = _unit_groups_on_tile;
						}
					//adding_unit
					if _add_to_group != undefined
						{
							array_push(_add_to_group,_read_in_unit);
							mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
							mo_string = "added " + string(_read_in_unit[1]) + "\n to group : " + string(_keep_reference_num);
						}
					else
						{
							mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
							mo_string = "too many units groups \n max_units_groups_per_tile : "+string(game_struct.max_units_groups_per_tile);
						}
				}
		}
	
}