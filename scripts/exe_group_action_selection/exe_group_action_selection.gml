function exe_group_action_selection(_chosen_group,_curent_side)
{
	var _str_chosen_group = operational_array[display_terrain_menu_x][display_terrain_menu_y][$ "units"][_chosen_group];

	xref = 0;
	yref = 0;
	
	var _lowest_AP = 99;
	var _HP_string = 0;
	var _important_buffs_here = [	"curious",0,"inspector",0,"spy",0,"attack",0,"move",0,"concealed",0,
									"embark_overwater",0,"embarked",0];
	for(var _ii = 1; _ii < array_length(_str_chosen_group); _ii ++)
		{
			var _unit_string = _str_chosen_group[_ii];
			for(var _kk = 2; _kk < array_length(_unit_string); _kk +=2)
				{
					var _name_found = _unit_string[_kk];
					if _name_found = "action_points"
						{
							if _unit_string[_kk+1][1] < _lowest_AP	{	_lowest_AP = _unit_string[_kk+1][1];	};
						}
					if string_starts_with(_name_found,"active_buffs")
						{
							var _own_buff_list = _unit_string[_kk+1];
							_important_buffs_here = exe_compare_buffs_and_return_values(_important_buffs_here,_own_buff_list);
						}
					if _name_found = "hitpoints"
						{
							_HP_string += _unit_string[_kk+1][1]/_unit_string[_kk+1][0];
						}
				}
		}
	_HP_string /= array_length(_str_chosen_group)-1;
	
	//buffs summary
	var _inspect_this= ["curious","inspector","spy"];
	var _inspect =  exe_return_if_any_buffs_trigered(_inspect_this,_important_buffs_here);
	var _inspect_this= ["attack"];
	var _attack = exe_return_if_any_buffs_trigered(_inspect_this,_important_buffs_here);
	var _inspect_this= ["move"];
	var _move = exe_return_if_any_buffs_trigered(_inspect_this,_important_buffs_here);
	var _inspect_this= ["concealed"];
	var _concealed = exe_return_if_any_buffs_trigered(_inspect_this,_important_buffs_here);
	var _inspect_this= ["embark_overwater"];
	var _embark_overwater = exe_return_if_any_buffs_trigered(_inspect_this,_important_buffs_here);
	
	var _inspect_this= ["embarked"];
	var _embarked_units = exe_return_if_any_buffs_trigered(_inspect_this,_important_buffs_here);
	
	var _this_group_legal_terrains = exe_return_legal_terrains_for_this_group(_str_chosen_group);

	//tile list around
	for(var _temp_x = display_terrain_menu_x -1; _temp_x < display_terrain_menu_x +2; _temp_x++)
		{
			for(var _temp_y = display_terrain_menu_y -1; _temp_y < display_terrain_menu_y +2; _temp_y++)
				{
					var _current_x = _temp_x;	var _current_y = _temp_y;
					if _current_x < 0						{_current_x+=game_struct.map_xsize;};
					if _current_x > game_struct.map_xsize -1{_current_x-=game_struct.map_xsize;};
					if _current_y < 0						{_current_y+=game_struct.map_ysize;};
					if _current_y > game_struct.map_ysize -1{_current_y-=game_struct.map_ysize;};
					
					var _suspicious_on_tile = exe_check_if_unknown_on_tile(_current_x,_current_y,_curent_side);
					var _conflict_on_tile = exe_check_if_combat_on_tile(_current_x,_current_y,_curent_side);
					var _place_on_tile = exe_check_if_place_on_tile(_current_x,_current_y,_curent_side);
					var _legal_terrains_array = exe_compare_terrain_to_legals(_current_x,_current_y,_this_group_legal_terrains,_concealed,_curent_side);
					var _terrain_is_legal = _legal_terrains_array[0];
					
					var _current_inspect = _inspect * _suspicious_on_tile;
					var _current_attack = _attack * _conflict_on_tile;
					var _current_move = _move * _place_on_tile;
					
					//embarking
					var _embarkable_ship_exist = -1;
					if _embark_overwater > 0
						{
							_embarkable_ship_exist = exe_check_if_can_embark_on_ship(_current_x,_current_y,_curent_side);
						}
					
					//disembarking
					var _disembark_legal_terrains = 0;
					if _embarked_units > 0
						{
							_disembark_legal_terrains = exe_compare_terrain_to_legal_disembark(_current_x,_current_y,_chosen_group);
						}
					var _current_disembark = _embarked_units * _disembark_legal_terrains;
					
					
					var _map_xxx = _current_x*(game_struct.cell_size/game_struct.zoom_scale) - game_struct.cam_xpos;
					var _map_yyy = _current_y*(game_struct.cell_size/game_struct.zoom_scale) - game_struct.cam_ypos;
	
					if _map_xxx < 0
						{	_map_xxx += game_struct.map_xsize*(game_struct.cell_size/game_struct.zoom_scale)	};
					if _map_xxx > wgw
						{	_map_xxx -= game_struct.map_xsize*(game_struct.cell_size/game_struct.zoom_scale)	};
					if _map_yyy < 0
						{	_map_yyy += game_struct.map_ysize*(game_struct.cell_size/game_struct.zoom_scale)	};
					if _map_yyy > wgh
						{	_map_yyy -= game_struct.map_ysize*(game_struct.cell_size/game_struct.zoom_scale)	};
					
					var _it_is_source_tile = 0;
					if _current_x == display_terrain_menu_x	&&	_current_y == display_terrain_menu_y
						{
							_it_is_source_tile = 1;
						}
					if _it_is_source_tile > 0
						{
							var _curent_side_num = exe_return_curent_side_by_name(_curent_side);
							var _anybody_else_to_join = 0;
							if array_length(_str_chosen_group) < sides_array[_curent_side_num][$ "max_units_on_tile"] +1
								{
									_anybody_else_to_join = exe_check_if_anybody_else_to_join(display_terrain_menu_x,display_terrain_menu_y,_curent_side);
								}
							
							if game_struct.zoom_scale > 1
								{
									xref = 0; yref = 0;
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ 0*game_struct.button_size);//x2
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 0*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,"unit_selected_highlite");//picture
									ds_list_add(clickable_list,"");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
								}
							else
								{
									//unit AP
									if _HP_string != 0
										{	
											xref = 0;	yref=0.8;
											ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ _HP_string*game_struct.button_size);//x2
											ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 0*game_struct.button_size);//y2	
											ds_list_add(clickable_list,"");//txt
											ds_list_add(clickable_list,"_x2_HP_bar");//picture
											ds_list_add(clickable_list,"unit HP");//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
										}	
								}
							
						}
					//calculate AP cost to show
					var _pass_array = [_current_x,_current_y,_str_chosen_group,_curent_side,display_terrain_menu_x,display_terrain_menu_y,"calculating",_legal_terrains_array,_chosen_group];
					var _AP_cost = exe_calculate_execution_cost(_pass_array);
					_AP_cost = exe_simplyfy_AP_cost_to_show(_AP_cost);
					//========================
					var _any_action_triggered = 0;
					if _current_inspect > 0	&& _terrain_is_legal > 0 {_any_action_triggered++;};
					if _current_attack > 0	&& _terrain_is_legal > 0 {_any_action_triggered++;};
					if _current_move > 0	&& _terrain_is_legal > 0	&&	_it_is_source_tile < 1	{_any_action_triggered++;};
					if _embark_overwater > 0	&&	_embarkable_ship_exist > -1	{_any_action_triggered++;};
					if _current_disembark > 0	{_any_action_triggered++;};
					//========================
					if _any_action_triggered > 1
						{
							var _base_ico = "_32x32_";
							if _current_inspect > 0	&& _terrain_is_legal > 0
								{
									xref = 0; yref = 0;
									var _this_ico = _base_ico + "inspect";
									if _AP_cost < 0 {_this_ico += "_fade";};
									var _pass_array = [_current_x,_current_y,_str_chosen_group,_curent_side,display_terrain_menu_x,display_terrain_menu_y,"inspect",_legal_terrains_array,_chosen_group];
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_this_ico);//picture
									ds_list_add(clickable_list,_pass_array);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_inspection_by_click");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
								}
							if _current_attack > 0	&& _terrain_is_legal > 0
								{
									xref = 0.5; yref = 0;
									var _this_ico = _base_ico + "attack";
									if _AP_cost < 0 {_this_ico += "_fade";};
									var _pass_array = [_current_x,_current_y,_str_chosen_group,_curent_side,display_terrain_menu_x,display_terrain_menu_y,"attack",_legal_terrains_array,_chosen_group];
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_this_ico);//picture
									ds_list_add(clickable_list,_pass_array);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_inspection_move_by_click");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
								}
							if _current_move > 0	&& _terrain_is_legal > 0	&&	_it_is_source_tile < 1
								{
									xref = 0.5; yref = 0.5;
									var _this_ico = _base_ico + "move";
									if _AP_cost < 0 {_this_ico += "_fade";};
									var _pass_array = [_current_x,_current_y,_str_chosen_group,_curent_side,display_terrain_menu_x,display_terrain_menu_y,"move",_legal_terrains_array,_chosen_group];
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_this_ico);//picture
									ds_list_add(clickable_list,_pass_array);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_move_action_by_click");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
								}
							if _embark_overwater > 0	&&	_embarkable_ship_exist > -1
								{
									xref = 0; yref = 0.5;
									var _this_ico = _base_ico + "embark";
									if _AP_cost < 0 {_this_ico += "_fade";};
									var _pass_array = [_current_x,_current_y,_str_chosen_group,_curent_side,display_terrain_menu_x,display_terrain_menu_y,"embark",_legal_terrains_array,_chosen_group];
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_this_ico);//picture
									ds_list_add(clickable_list,_pass_array);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_embark_move_by_click");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
								}
							if _current_disembark > 0
								{
									xref = 0; yref = 0.5;
									var _this_ico = _base_ico + "disembark";
									if _AP_cost < 0 {_this_ico += "_fade";};
									var _pass_array = [_current_x,_current_y,_str_chosen_group,_curent_side,display_terrain_menu_x,display_terrain_menu_y,"disembark",_legal_terrains_array,_chosen_group];
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_this_ico);//picture
									ds_list_add(clickable_list,_pass_array);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_disembark_move_by_click");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
								}
						}
					if _any_action_triggered < 2	&& _any_action_triggered > 0
						{
							var _base_ico = "_64x64_";
							xref = 0; yref = 0;
							if _current_inspect > 0	&& _terrain_is_legal > 0
								{
									var _this_ico = _base_ico + "inspect";
									if _AP_cost < 0 {_this_ico += "_fade";};
									var _pass_array = [_current_x,_current_y,_str_chosen_group,_curent_side,display_terrain_menu_x,display_terrain_menu_y,"inspect",_legal_terrains_array,_chosen_group];
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_this_ico);//picture
									ds_list_add(clickable_list,_pass_array);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_inspection_by_click");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
								}
							if _current_attack > 0	&& _terrain_is_legal > 0
								{
									var _this_ico = _base_ico + "attack";
									if _AP_cost < 0 {_this_ico += "_fade";};
									var _pass_array = [_current_x,_current_y,_str_chosen_group,_curent_side,display_terrain_menu_x,display_terrain_menu_y,"attack",_legal_terrains_array,_chosen_group];
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_this_ico);//picture
									ds_list_add(clickable_list,_pass_array);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_inspection_move_by_click");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
								}
							if _current_move > 0	&& _terrain_is_legal > 0	&&	_it_is_source_tile < 1
								{
									var _this_ico = _base_ico + "move";
									if _AP_cost < 0 {_this_ico += "_fade";};
									var _pass_array = [_current_x,_current_y,_str_chosen_group,_curent_side,display_terrain_menu_x,display_terrain_menu_y,"move",_legal_terrains_array,_chosen_group];
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_this_ico);//picture
									ds_list_add(clickable_list,_pass_array);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_move_action_by_click");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
								}
							if _embark_overwater > 0	&&	_embarkable_ship_exist > -1
								{
									var _this_ico = _base_ico + "embark";
									if _AP_cost < 0 {_this_ico += "_fade";};
									var _pass_array = [_current_x,_current_y,_str_chosen_group,_curent_side,display_terrain_menu_x,display_terrain_menu_y,"embark",_legal_terrains_array,_chosen_group];
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_this_ico);//picture
									ds_list_add(clickable_list,_pass_array);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_embark_move_by_click");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
								}
							if _current_disembark > 0
								{
									var _this_ico = _base_ico + "disembark";
									if _AP_cost < 0 {_this_ico += "_fade";};
									var _pass_array = [_current_x,_current_y,_str_chosen_group,_curent_side,display_terrain_menu_x,display_terrain_menu_y,"disembark",_legal_terrains_array,_chosen_group];
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_this_ico);//picture
									ds_list_add(clickable_list,_pass_array);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_disembark_move_by_click");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
								}
						}
					if _any_action_triggered < 1	&& _it_is_source_tile > 0
						{
							if _anybody_else_to_join > 0
								{
									xref = 0; yref = 0;
									var _pass_array = [display_terrain_menu_x,display_terrain_menu_y,_chosen_group,_curent_side];
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
									ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,"unit_selected_highlite");//picture
									ds_list_add(clickable_list,_pass_array);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_grab_units_to_group_by_click");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
								}
						}
					//========================
					if _any_action_triggered > 0	&& game_struct.zoom_scale < 2
						{
							//show ap cost
							xref = 0.3; yref = 0.4;
							ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,_map_xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
							ds_list_add(clickable_list,_map_yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
							ds_list_add(clickable_list,_AP_cost);//txt
							ds_list_add(clickable_list,"_32x16_text_background");//picture
							ds_list_add(clickable_list,"AP left after execution");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
						}
				}
		}
}