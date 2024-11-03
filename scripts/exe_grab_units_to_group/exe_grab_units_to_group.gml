function exe_grab_units_to_group(_pass_array)
{
	var _xx = _pass_array[0];
	var _yy = _pass_array[1];
	var _chosen_group = _pass_array[2];
	var _curent_side = _pass_array[3];
	
	var _curent_side_num = exe_return_curent_side_by_name(_curent_side);
	
	var _this_group = game_board_array[_xx][_yy][$ "units"][_chosen_group];
	var _space_left = sides_array[_curent_side_num][$ "max_units_on_tile"] + 1 - array_length(_this_group);
	
	var _civilian_count = 0;
	var _combatant_count = 0;
	var _ships_count = 0;
	var _dont_touch_main_group = 0;
	for(var _ii = 1; _ii < array_length(_this_group); _ii++)
		{
			var _this_unit = _this_group[_ii];
			var _designation_found = 0;
			switch(_this_unit[0])
				{
					case "ship" :		_ships_count++; _designation_found = 1; break;
					case "militia" :	_combatant_count++; _designation_found = 1; break;
				}
			if _designation_found < 1	{_civilian_count++;};
			for(var _kk = 2; _kk < array_length(_this_unit); _kk+=2)
				{
					if _this_unit[_kk] == "active_buffs"
						{
							var _Abuff_array = 	_this_unit[_kk+1]
							for(var _nn = 0; _nn < array_length(_Abuff_array); _nn +=2)
								{
									if _Abuff_array[_nn] == "unsplitable"	{_dont_touch_main_group = 1; break;};
									if _Abuff_array[_nn] == "embarked"		{_dont_touch_main_group = 1; break;};
								}
						}
					if _dont_touch_main_group > 0 {break;};
				}
			if _dont_touch_main_group > 0 {break;};
			
		}
	if _dont_touch_main_group < 1
		{
			var _im_in = [];
			var _all_groups = game_board_array[_xx][_yy][$ "units"];
			for(var _ii = 0; _ii < array_length(_all_groups); _ii ++)
				{
					if _ii != _chosen_group
						{
							if _all_groups[_ii][0][1] == _curent_side
								{
									var _dont_touch_me = 0;
									var _searching_group = _all_groups[_ii];
									for(var _kk = 1; _kk < array_length(_searching_group); _kk++)
										{
											var _this_unit = _searching_group[_kk];
											var _unit_type = _this_unit[0];
											if _ships_count > 0	&&	_unit_type != "ship"	{_dont_touch_me = 1; break;};
											for(var _nn = 2; _nn < array_length(_this_unit); _nn+=2)
												{
													if _this_unit[_nn] == "active_buffs"
														{
															var _Abuff_array = 	_this_unit[_nn+1]
															for(var _pp = 0; _pp < array_length(_Abuff_array); _pp +=2)
																{
																	if _Abuff_array[_pp] == "unsplitable"	{_dont_touch_me = 1; break;};
																	if _Abuff_array[_pp] == "embarked"		{_dont_touch_me = 1; break;};
																}
														}
													if _dont_touch_me > 0	{break;};
												}
											if _dont_touch_me > 0	{break;};
										}
									if _dont_touch_me < 1
										{
											array_push(_im_in,_ii);
										}
								}
						}
				}
			if array_length(_im_in) > 0
				{
					var _prompt_string = "";
					var _counter = 4;
					while(_space_left > 0	&& _counter > 0)
						{
							for(var _ii = 0; _ii < array_length(_im_in); _ii++)
								{
									var _take_from_this_group = _im_in[_ii];
									var _source_group = game_board_array[_xx][_yy][$ "units"][_take_from_this_group];
									for(var _kk = 1; _kk < array_length(_source_group); _kk++)
										{
											var _this_unit = _source_group[_kk];
											var _unit_type = _this_unit[0];
											var _type_returned = "";
											var _designation_found = 0;
											switch(_unit_type)
												{
													case "ship" :		_type_returned = "ship";		_designation_found = 1; break;
													case "militia" :	_type_returned = "combatant";	_designation_found = 1; break;
												}
											if _designation_found < 1	{_type_returned = "civilian";}
											var _continue = 0;
											if _ships_count > 0	&&	_type_returned == "ship"	{_continue = 1;};
											if _ships_count < 1 &&	_civilian_count > _combatant_count -1	&&	_type_returned == "civilian"	{_continue = 1;};
											if _ships_count < 1	&&	_continue < 1	&&	_type_returned == "combatant"	{_continue = 1;};
											if _continue > 0
												{
													var _unit_taken = variable_clone(game_board_array[_xx][_yy][$ "units"][_take_from_this_group][_kk]);
													array_delete(game_board_array[_xx][_yy][$ "units"][_take_from_this_group],_kk,1);
													array_push(game_board_array[_xx][_yy][$ "units"][_chosen_group],_unit_taken);
													_space_left --;
													_prompt_string += "aquired unit " + string(_this_unit[1]) + "\n";
												}
											if _space_left < 1	{break;};
										}
									if _space_left < 1	{break;};
								}
							_counter--;
						}
					if _prompt_string != ""
						{
							mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
							mo_string = _prompt_string;	
						}
				}
		}
	else
		{
			mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
			mo_string = "this group cannot be joined \n unsplitable/embarked";	
		}
	exe_clear_empty_groups(_xx,_yy);
	exe_update_info_for_tile(_xx,_yy);
	this_city_xy_reference = [];
	display_terrain_menu_x = _xx;
	display_terrain_menu_y = _yy;
	
}