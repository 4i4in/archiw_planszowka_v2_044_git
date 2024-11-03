function exe_display_terrain_menu_3()//units
{
	if display_terrain_menu = 3
		{
			screen_move_by_mouse = 0;
			
			var _str_units_groups = operational_array[display_terrain_menu_x][display_terrain_menu_y][$ "units"];
			var _groups_number = array_length(_str_units_groups);
			
			//checking control side
			var _curent_side = "";
			if game_struct.current_player > -1
				{
					_curent_side = sides_array[game_struct.current_player][$ "side_name"];
				}
			
			//background
			var _top_header = 1;
			var _side_menu_broad = 4.5;
			var _unit_specs_width = 5;
			var _unit_specs_height = 10;
			var _total_x_bck = _groups_number * _side_menu_broad;
			var _total_y_bck = _top_header;
			
			for(var _ii = 0; _ii < array_length(_str_units_groups); _ii++)
				{
					var _units_number_in_group = array_length(_str_units_groups[_ii]);
					if _units_number_in_group > _total_y_bck	{	_total_y_bck = _units_number_in_group + _top_header};
				}
				
			//specific unit display:
			var _chosen_group = -1;
			var _chosen_unit = -1;
			if array_length(this_city_xy_reference) > 0
				{
					_chosen_group = this_city_xy_reference[0][0];
					_chosen_unit = this_city_xy_reference[0][1];
				}	
				
			if array_length(this_city_xy_reference) > 0	&&	_chosen_group > -1 &&	_chosen_unit > -1
				{
					_total_x_bck += _unit_specs_width;
					if _total_y_bck < _unit_specs_height	{	_total_y_bck = _unit_specs_height	};
				}
			var _max_menu_size_x = _total_x_bck;
			var _max_menu_size_y = _total_y_bck;

			xxx = game_struct.button_size;
			yyy = game_struct.button_size;
			
			xref = 0;
			yref = 0;
			//background
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,_total_x_bck*game_struct.button_size);//x2
			ds_list_add(clickable_list,_total_y_bck*game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_adaptive_background_0");//picture
			ds_list_add(clickable_list,"");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"");	//execution on right click
			
			
			//header
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"units \n menu");//txt
			ds_list_add(clickable_list,"_128x64_background");//picture
			ds_list_add(clickable_list,"You are in units menu");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref += 2;
			//pos
			var _str_position =	"x : " + string(display_terrain_menu_x) + " \n y : " + string (display_terrain_menu_y);
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,_str_position);//txt
			ds_list_add(clickable_list,"_64x64_mouse_0");//picture
			ds_list_add(clickable_list,"tile position on map");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref++;
			
			//terrain
			var _str_terrain_pic = operational_array[display_terrain_menu_x][@ display_terrain_menu_y][$ "tile_terrain"][@ 0];
			var _str_terrain = "terrain : \n" + _str_terrain_pic;
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,_str_terrain);//txt
			ds_list_add(clickable_list,_str_terrain_pic);//picture
			ds_list_add(clickable_list,"terrain on tile");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref += 2;
			
			
			
			xref = 0;
			yref = 1;
			//groups
			for(var _ii = 0; _ii < array_length(_str_units_groups); _ii++)
				{
					//group header
					xref = _ii * _side_menu_broad;
					var _this_group_array = _str_units_groups[_ii];
					var _num_of_units_in_this_group = array_length(_this_group_array)-1;
					var _group_control = _this_group_array[0][1];
					var _group_control_pic = "_64x64_"+string(_group_control)+"_ico";
					
					var _group_activating_buff = [];

					var _pass_array_to_function = [];
					if string_starts_with(_group_control,_curent_side)
						{
							_pass_array_to_function = [display_terrain_menu_x,display_terrain_menu_y,_ii,-1,"left"];
						}
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"");//txt
					ds_list_add(clickable_list,"_32x32_left");//picture
					ds_list_add(clickable_list,_pass_array_to_function);//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"exe_shift_unit_group");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					xref+=3.5;
					var _pass_array_to_function = [];
					if string_starts_with(_group_control,_curent_side)
						{
							_pass_array_to_function = [display_terrain_menu_x,display_terrain_menu_y,_ii,-1,"right"];
						}
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"");//txt
					ds_list_add(clickable_list,"_32x32_right");//picture
					ds_list_add(clickable_list,_pass_array_to_function);//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"exe_shift_unit_group");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					xref-=3;

					var _pass_array_to_function = [];
					if string_starts_with(_group_control,_curent_side)
						{
							_pass_array_to_function = [_ii,-1];
						}
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
					ds_list_add(clickable_list,"");//txt
					ds_list_add(clickable_list,_group_control_pic);//picture
					ds_list_add(clickable_list,_pass_array_to_function);//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"exe_select_specific_group_in_menu_3");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					xref++;
					var _info_string = string(_num_of_units_in_this_group) + " units \n belonging to \n" + string(_group_control);
					var _group_pic = "_128x64_background";
					if _ii = _chosen_group	{_group_pic = "_128x64_background_mouseover";};
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
					ds_list_add(clickable_list,_info_string);//txt
					ds_list_add(clickable_list,_group_pic);//picture
					ds_list_add(clickable_list,_pass_array_to_function);//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"exe_select_specific_group_in_menu_3");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					
					//units in group
					xref = _ii * _side_menu_broad;
					yref++;
					for(var _kk = 1; _kk < array_length(_this_group_array);_kk++)
						{
							xref = _ii * _side_menu_broad;
							var _this_unit_array = _this_group_array[_kk];
							var _text_string = _this_unit_array[1] +"\n";
							var _picture_string = "";
							var _unsplitable = 0;
							var _embarked = 0;
							
							var _active_neg1_buffs = [];
							var _avilable_neg1_buffs = [];
							//gathering basic info
							for(var _tt = 2; _tt < array_length(_this_unit_array); _tt +=2)
								{
									var _info_string = _this_unit_array[_tt];
									
									if string_starts_with(_info_string,"picture")
										{
											_picture_string = _this_unit_array[_tt+1];
										}
									if string_starts_with(_info_string,"action_points")
										{
											_text_string += "AP : " + string(_this_unit_array[_tt+1][1]) + " | " + string(_this_unit_array[_tt+1][0]) +"\n";
										}
									if string_starts_with(_info_string,"hitpoints")
										{
											_text_string += "HP : " + string(_this_unit_array[_tt+1][1]) + " | " + string(_this_unit_array[_tt+1][0]) +"\n";
										}
									if string_starts_with(_info_string,"number")
										{
											//_text_string += "num : " + string(_this_unit_array[_tt+1][1]) + " | " + string(_this_unit_array[_tt+1][0]) +"\n";
										}
									if string_starts_with(_info_string,"active_buffs")
										{
											for(var _uu = 0; _uu < array_length(_this_unit_array[_tt+1]); _uu+=2)
												{
													if _this_unit_array[_tt+1][_uu] == "embarked"		{_embarked=1;};
													if _this_unit_array[_tt+1][_uu] == "unsplitable"	{_unsplitable=1;};
													
													if _this_unit_array[_tt+1][_uu+1] == -1	{array_push(_active_neg1_buffs,_this_unit_array[_tt+1][_uu]);};
												}
										}
									if string_starts_with(_info_string,"buff_list")
										{
											for(var _uu = 0; _uu < array_length(_this_unit_array[_tt+1]); _uu+=2)
												{
													if _this_unit_array[_tt+1][_uu+1] == -1	{array_push(_avilable_neg1_buffs,_this_unit_array[_tt+1][_uu]);};
												}
										}
								}
							var _buff_worth_of_activation = exe_compare_buff_arrays_return_to_activation(_active_neg1_buffs,_avilable_neg1_buffs);
							//background
							var _background_pic = "_256x64_background";
							if _ii == _chosen_group && _kk ==_chosen_unit	{	_background_pic = "_256x64_background_mouseover";	};
							var _pass_array_to_function = [_ii,_kk];
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 3.5*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"");//txt
							ds_list_add(clickable_list,_background_pic);//picture
							ds_list_add(clickable_list,_pass_array_to_function);//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"exe_display_specific_unit_in_terrain_menu_3");	//execution on click	
							ds_list_add(clickable_list,"");	//execution on right click
							//unit picture
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"");//txt
							ds_list_add(clickable_list,_picture_string);//picture
							ds_list_add(clickable_list,"");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							//text on top
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
							ds_list_add(clickable_list,_text_string);//txt
							ds_list_add(clickable_list,"");//picture
							ds_list_add(clickable_list,"info");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							
							var _keep_xref = xref;	var _keep_yref = yref;
							if _unsplitable + _embarked < 1	&& array_length(_buff_worth_of_activation) > 0
								{
									xref += 2.5;
									for(var _hh = 0; _hh < array_length(_buff_worth_of_activation); _hh++)
										{
											var _buff_found = _buff_worth_of_activation[_hh];
											var _buff_pic = "_32x32_" + _buff_found + "_buff";
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
											ds_list_add(clickable_list,"");//txt
											ds_list_add(clickable_list,_buff_pic);//picture
											ds_list_add(clickable_list,"this buff is unactive");//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
											
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0*game_struct.button_size);//y2	
											ds_list_add(clickable_list,"");//txt
											ds_list_add(clickable_list,"_32x32_exclamation_mark");//picture
											ds_list_add(clickable_list,"");//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
											xref+=0.5;
											if xref > _keep_xref+3 {xref=_keep_xref+2.5; yref+=0.5};
										}
								}
							xref = _keep_xref;	yref = _keep_yref;
							if _unsplitable + _embarked < 1
								{
									xref += 3.5;
									var _pass_array_to_function = [];
									if string_starts_with(_group_control,_curent_side)
										{
											_pass_array_to_function = [display_terrain_menu_x,display_terrain_menu_y,_ii,_kk,"up"];
										}
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,"_32x32_positive");//picture
									ds_list_add(clickable_list,_pass_array_to_function);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_shift_unit_group");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									xref += 0.5;
									var _pass_array_to_function = [];
									if string_starts_with(_group_control,_curent_side)
										{
											_pass_array_to_function = [display_terrain_menu_x,display_terrain_menu_y,_ii,_kk,"right"];
										}
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,"_32x32_right");//picture
									ds_list_add(clickable_list,_pass_array_to_function);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_shift_unit_group");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									xref -= 0.5;
									yref += 0.5;
									var _pass_array_to_function = [];
									if string_starts_with(_group_control,_curent_side)
										{
											_pass_array_to_function = [display_terrain_menu_x,display_terrain_menu_y,_ii,_kk,"down"];
										}
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,"_32x32_negative");//picture
									ds_list_add(clickable_list,_pass_array_to_function);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_shift_unit_group");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									xref += 0.5;
									var _pass_array_to_function = [];
									if string_starts_with(_group_control,_curent_side)
										{
											_pass_array_to_function = [display_terrain_menu_x,display_terrain_menu_y,_ii,_kk,"left"];
										}
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,"_32x32_left");//picture
									ds_list_add(clickable_list,_pass_array_to_function);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_shift_unit_group");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
								}
							if _unsplitable + _embarked > 0
								{
									xref += 3.5;
									if _unsplitable > 0
										{
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
											ds_list_add(clickable_list,"");//txt
											ds_list_add(clickable_list,"_64x64_unsplitable_buff");//picture
											ds_list_add(clickable_list,"This group cannot be splited \n Probably it carries \n other units;");//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
										}
									if _embarked > 0
										{
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
											ds_list_add(clickable_list,"");//txt
											ds_list_add(clickable_list,"_64x64_embarked_buff");//picture
											ds_list_add(clickable_list,"This unit is embarked \n and cannot be moved \n only unloaded \n in given circumstations;");//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
										}
								}
							
							xref = _keep_xref;	yref = _keep_yref;
							yref+=1;
						}
					yref = 1;
					
				}
			//selected unit
			if array_length(this_city_xy_reference) > 0	&&	_chosen_group > -1 &&	_chosen_unit > -1
				{
					xref = _groups_number * _side_menu_broad +1;
					yref = 0;
					//text on top
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"selected unit \n detail info");//txt
					ds_list_add(clickable_list,"_128x64_background");//picture
					ds_list_add(clickable_list,"selected unit");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					yref++;
					
					//recalculating  for pasing to function
					xref = _groups_number * _side_menu_broad;
					var _pass_xxx = xxx	+	xref*game_struct.button_size;
					var _pass_yyy = yyy	+	yref*game_struct.button_size;
					exe_display_selected_unit_detail_info(display_terrain_menu_x,display_terrain_menu_y,_chosen_group,_chosen_unit,_pass_xxx,_pass_yyy);
					//after this function repeat some data like xxx, yyy, xref, yref because they are in use
					xxx = game_struct.button_size;
					yyy = game_struct.button_size;
					xref = _groups_number * _side_menu_broad;
					yref = 1;
				}
			
			//rclick restriction to see description in menu without closing
			restricted_x1 = xxx;
			restricted_x2 = xxx + _max_menu_size_x*game_struct.button_size;
			restricted_y1 = yyy;
			restricted_y2 = yyy + _max_menu_size_y*game_struct.button_size;
		}
}