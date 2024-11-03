function exe_shift_unit_group_v2(_array_group_unit)
{
	//[display_terrain_menu_x,display_terrain_menu_y,_group,unit,"direction"];
	var _xx = _array_group_unit[0];
	var _yy = _array_group_unit[1];
	var _group = _array_group_unit[2];
	var _unit = _array_group_unit[3];
	var _direction = _array_group_unit[4];
	
	var _shift_group_only = 0;
	if _unit < 0	{_shift_group_only = 1;};
	
	//checking control side
	var _curent_side = "";
	if game_struct.current_player > -1
		{
			_curent_side = sides_array[game_struct.current_player][$ "side_name"];
		}
		
	var _str_units_groups_gameboard = game_board_array[_xx][_yy][$ "units"];

	//shifting whole group
	if _shift_group_only = 1
		{
			var _place_at = _group;
			var _keep_group = variable_clone(_str_units_groups_gameboard[_group]);
			array_delete(_str_units_groups_gameboard,_group,1);
			switch(_direction)
				{
					case "left" : 	_place_at--;
									if _place_at < 0
										{
											_place_at = array_length(_str_units_groups_gameboard);
										}
						break;
					case "right" : 	_place_at++; 
									if _place_at > array_length(_str_units_groups_gameboard)
										{
											_place_at = 0;
										}
						break;
				}
			array_insert(_str_units_groups_gameboard,_place_at,_keep_group);
		}
	else //shif inside group or between groups
		{
			var _shift_between_groups = 0;
			var _keep_soruce = _group;
			var _place_at_position = -1;
			var _keep_unit = variable_clone(_str_units_groups_gameboard[_group][_unit]);
			array_delete(_str_units_groups_gameboard[_group],_unit,1);
			switch(_direction)
				{
					case "left" : 	_shift_between_groups = 1;
									_place_at_position = -1;
						break;
					case "right" : 	_shift_between_groups = 1;
									_place_at_position = 1;
						break;
					case "up" : 	_place_at_position = _unit-1;
									if	_place_at_position < 1
										{
											_place_at_position = array_length(_str_units_groups_gameboard[_group]);
										}
						break;
					case "down" : 	_place_at_position = _unit+1;
									if	_place_at_position > array_length(_str_units_groups_gameboard[_group])
										{
											_place_at_position = 1;
										}
						break;
				}
			//moving up down inside group
			if _shift_between_groups = 0
				{
					array_insert(_str_units_groups_gameboard[_group],_place_at_position,_keep_unit);
				}
			else
				{
					var _source_side = _str_units_groups_gameboard[_group][0][1];
					var _source_side_num = exe_return_curent_side_by_name(_source_side);
					if _source_side_num < 0
						{
							mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y;
							mo_string = "controling side unrecognized! \n check sides array!!! \n somethings is wrong!!!";
							array_insert(_str_units_groups_gameboard[_keep_soruce],_unit,_keep_unit);
							exit;
						}
					var _is_max_groups = 0;
					var _otehr_own_group = [];
					if array_length(_str_units_groups_gameboard) > game_struct.max_units_groups_per_tile -1	{_is_max_groups = 1};
					for(var _ii = 0; _ii < array_length(_str_units_groups_gameboard); _ii++)
						{
							if _ii != _keep_soruce
								{
									var _this_group_array = _str_units_groups_gameboard[_ii];
									var _group_control = _this_group_array[0][1];
									if _group_control = _source_side
										{	
											var _check_for = ["embarked","unsplitable"];
											var _stop_proceeding = exe_check_for_buffs_true_false(_str_units_groups_gameboard,_ii,_check_for);
											if _stop_proceeding < 1
												{
													array_push(_otehr_own_group,_ii);
												}
										}
								}
						}
					//there is no toher own groups anc cant place more groups because of game_struct.max_units_groups_per_tile
					if _is_max_groups = 1 &&	array_length(_otehr_own_group) < 1
						{
							mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y;
							mo_string = "max groups per tile \n no other groups of this side \n transfer refused";
							array_insert(_str_units_groups_gameboard[_keep_soruce],_unit,_keep_unit);
						}
					if _is_max_groups = 0
						{
							array_push(_otehr_own_group,array_length(_str_units_groups_gameboard));
							
							var _add_to_group = [];
							var _push_this = ["group_control",_source_side];
							array_push(_add_to_group,_push_this);
							array_push(_str_units_groups_gameboard,_add_to_group);
							_is_max_groups = 1;
						}
					if _is_max_groups = 1 &&	array_length(_otehr_own_group) > 0	&& _source_side_num > -1
						{
							var _max_units_on_tile = sides_array[_source_side_num][$ "max_units_on_tile"];
							var _legal_otehr_own_group = [];
							for(var _ii = 0; _ii < array_length(_otehr_own_group);_ii++)
								{
									var _value_found = _otehr_own_group[_ii];
									var _this_group_array = _str_units_groups_gameboard[_value_found];
									if array_length(_this_group_array) < _max_units_on_tile + 1
										{
											array_push(_legal_otehr_own_group,_value_found);	
										}
								}
							delete(_this_group_array);
							//there are other, legal, own groups to place unit
							if array_length(_legal_otehr_own_group) > 0
								{
									var _placing_found = -1;
									var _new_group_to_place = _keep_soruce + _place_at_position;
									var _loop_counter = 0;//safety switch
									while(_placing_found == -1)
										{
											if _new_group_to_place < 0	{_new_group_to_place = array_length(_str_units_groups_gameboard);};
											if _new_group_to_place > array_length(_str_units_groups_gameboard)	{_new_group_to_place = 0;};
											for(var _ii = 0; _ii < array_length(_legal_otehr_own_group);_ii++)
												{
													var _value_found = _legal_otehr_own_group[_ii];
													if _new_group_to_place == _value_found
														{
															_placing_found = _value_found;
														}
												}
											_new_group_to_place += _place_at_position;
											_loop_counter++;
											if _loop_counter > 20	{_placing_found = -2;};
										}
									if _placing_found < 0//something goes wrong
										{
											mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y;
											mo_string = "something goes wrong during transfer to other group";
											array_insert(_str_units_groups_gameboard[_keep_soruce],_unit,_keep_unit);
										}
									else
										{
											mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y;
											mo_string = "unit_transfered";
											array_push(_str_units_groups_gameboard[_placing_found],_keep_unit);
										}
								}
							else
								{
									mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y;
									mo_string = "other own groups \n already have max unit number \n" + string(_source_side) + " can have max " + string(_max_units_on_tile) + "\n units on tile \n check in side struct";
									array_insert(_str_units_groups_gameboard[_keep_soruce],_unit,_keep_unit);
								}
						}
				}
		}
	//clear empty groups
	exe_clear_empty_groups(_xx,_yy);
	exe_update_info_for_tile(_xx,_yy);
	exe_clear_city_arrays();
	
}