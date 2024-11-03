function exe_display_terrain_menu_21()//unit selection inside game menu on right
{
	if display_terrain_menu = 21
		{
			var _str_units_groups = operational_array[display_terrain_menu_x][display_terrain_menu_y][$ "units"];
			//checking control side
			var _curent_side = "";
			if game_struct.current_player > -1
				{
					_curent_side = sides_array[game_struct.current_player][$ "side_name"];
				}
			var _chosen_group = -1;
			var _chosen_unit = -1;
			if array_length(this_city_xy_reference) > 0
				{
					_chosen_group = this_city_xy_reference[0][0];
					_chosen_unit = this_city_xy_reference[0][1];
				}
				
			//groups
			for(var _ii = 0; _ii < array_length(_str_units_groups); _ii++)
				{
					var _this_group_array = _str_units_groups[_ii];
					var _num_of_units_in_this_group = array_length(_this_group_array)-1;
					var _group_control = _this_group_array[0][1];
					
					
					var _pass_array_to_function = [];
					if string_starts_with(_group_control,_curent_side)
						{
							_pass_array_to_function = [_ii,-1];
						}
						
					if _ii = _chosen_group	
						{
							var _group_pic = "_128x32_background_mouseover";
							var _group_control_pic = "_64x64_"+string(_group_control)+"_ico";
							xref-=0.25;
							yref-=0.25;
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"");//txt
							ds_list_add(clickable_list,_group_control_pic);//picture
							ds_list_add(clickable_list,"controling side");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							xref+=0.75;
							yref+=0.25;
						}
					else
						{
							var _group_pic = "_128x32_background";
							var _group_control_pic = "_32x32_"+string(_group_control)+"_ico";
							
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"");//txt
							ds_list_add(clickable_list,_group_control_pic);//picture
							ds_list_add(clickable_list,_pass_array_to_function);//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"exe_select_specific_group_in_menu_3");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							xref+=0.5;
						};
					
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,string(_num_of_units_in_this_group) + " " + string(_group_control));//txt
					ds_list_add(clickable_list,_group_pic);//picture
					ds_list_add(clickable_list,_pass_array_to_function);//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"exe_select_specific_group_in_menu_3");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					
					xref = 0;
					yref+=0.5;
					for(var _kk = 1; _kk < array_length(_this_group_array);_kk++)
						{
							var _this_unit_array = _this_group_array[_kk];
							var _picture_string = "";
							var _AP_string = "";
							var _HP_string = 0;
							
							var _active_neg1_buffs = [];
							var _avilable_neg1_buffs = [];
							
							
							for(var _tt = 2; _tt < array_length(_this_unit_array); _tt +=2)
								{
									var _info_string = _this_unit_array[_tt];
									if _info_string == "picture"
										{
											_picture_string = _this_unit_array[_tt+1];
										}
									if _info_string == "action_points"
										{
											_AP_string = string(_this_unit_array[_tt+1][1]);
										}
									if _info_string == "hitpoints"
										{
											_HP_string = _this_unit_array[_tt+1][1]/_this_unit_array[_tt+1][0];
										}
									if string_starts_with(_info_string,"active_buffs")
										{
											for(var _uu = 0; _uu < array_length(_this_unit_array[_tt+1]); _uu+=2)
												{
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
							
							if _ii = _chosen_group
								{
									var _pass_array_to_function =	[	[display_terrain_menu_x,display_terrain_menu_y,_ii,_kk,wgw-10*game_struct.button_size,game_struct.mimimap_ypos + game_struct.map_ysize *	game_struct.minimap_scale + 0.5*game_struct.button_size],
																		[display_terrain_menu_x,display_terrain_menu_y,_ii,_kk,"right"]
																	];
								}
							else
								{
									var _pass_array_to_function =	[	[display_terrain_menu_x,display_terrain_menu_y,_ii,_kk,wgw-10*game_struct.button_size,game_struct.mimimap_ypos + game_struct.map_ysize *	game_struct.minimap_scale + 0.5*game_struct.button_size],
																		[display_terrain_menu_x,display_terrain_menu_y,_ii,_kk,"left"]
																	];
								}
							//unit picture
							if xref > 3	{	xref = 0; yref+=1;	};
							//unit mini
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"");//txt
							ds_list_add(clickable_list,_picture_string);//picture
							ds_list_add(clickable_list,_pass_array_to_function);//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"exe_shift_unit_group_right_menu");	//execution on click	
							ds_list_add(clickable_list,"rexe_display_selected_unit_detail_info");	//execution on right click
							
							//exclamation about unactive buffs
							if array_length(_buff_worth_of_activation) > 0
								{
									xref+=0.5;
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,"_32x32_exclamation_mark");//picture
									ds_list_add(clickable_list,"actions could be activated");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									xref-=0.5;
								}
							
							
							//unit AP
							if _AP_string != ""
								{	
									xref+=0.5;	yref+=0.7;
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,_AP_string);//txt
									ds_list_add(clickable_list,"_32x16_text_background");//picture
									ds_list_add(clickable_list,"unit action points");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									xref-=0.5;	yref-=0.7;
								}
							//unit AP
							if _HP_string != 0
								{	
									yref+=0.8;
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ _HP_string*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,"_x2_HP_bar");//picture
									ds_list_add(clickable_list,"unit HP");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									yref-=0.8;
								}	
							xref++;
						}
					xref = 0;
					yref+=1;
				}
			//displayin details of selected unit
			if array_length(this_city_resources) > 0
				{
					exe_display_selected_unit_detail_info(this_city_resources[0],this_city_resources[1],this_city_resources[2],this_city_resources[3],this_city_resources[4],this_city_resources[5]);
				}
			else if _chosen_group > -1	&&	_chosen_unit < 0
				{
					exe_group_action_selection(_chosen_group,_curent_side);
				}
		}
}