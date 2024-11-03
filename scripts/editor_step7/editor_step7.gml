//case "editor_step7"
function editor_step7()//units
{
	//menus						
	ds_list_destroy(clickable_list);
	clickable_list = ds_list_create();
	
	//block unneccesary parts
	screen_move_by_mouse = 1;
	show_ground_map = 1;
	game_struct.show_minimap = 1
	game_struct.redraw_ground_layer = 1;
	
	lclick_paint_terrain();
	
	rclick_check_terrain();
	exe_display_terrain_menu();
	exe_display_terrain_menu_2();
	exe_display_terrain_menu_3();
	exe_display_terrain_menu_11();	//handfull setings in gameplay
	
	//mini map
	ds_list_add(clickable_list,game_struct.mimimap_xpos);//x1
	ds_list_add(clickable_list,game_struct.mimimap_ypos);//y1
	ds_list_add(clickable_list,game_struct.mimimap_xpos + game_struct.map_xsize *	game_struct.minimap_scale);//x2
	ds_list_add(clickable_list,game_struct.mimimap_ypos + game_struct.map_ysize *	game_struct.minimap_scale);//y2	
	ds_list_add(clickable_list,"");//txt
	ds_list_add(clickable_list,"_minimap_surface");//picture
	ds_list_add(clickable_list,"left click \n to move on map");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_move_view_on_minimap");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	
	xxx = wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size;
	yyy = game_struct.map_ysize*game_struct.minimap_scale;
	//minimap controls
	xref = 0;
	yref = 0;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
	ds_list_add(clickable_list,"");//txt
	ds_list_add(clickable_list,"_32x32_negative");//picture
	ds_list_add(clickable_list,"left click \n for lower scale");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_minimap_scale_minus");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	xref += 0.5;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 3*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
	ds_list_add(clickable_list,"Minimap scale : " + string(game_struct.minimap_scale)	);//txt
	ds_list_add(clickable_list,"_128x32_background");//picture
	ds_list_add(clickable_list,"showing \n minimap_scale");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	xref += 3;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
	ds_list_add(clickable_list,"");//txt
	ds_list_add(clickable_list,"_32x32_positive");//picture
	ds_list_add(clickable_list,"left click \n for higher scale");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_minimap_scale_plus");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	//minimap controls ends
	
	xref = 0;
	yref +=0.5;
	//main menu
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
	ds_list_add(clickable_list,"map name: \n" + string(game_struct.map_name)	);//txt
	ds_list_add(clickable_list,"_256x64_background");//picture
	ds_list_add(clickable_list,"left click \n to change map name");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_change_map_name");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click

	xref = 0;
	yref ++;
	//settings
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
	ds_list_add(clickable_list,"settings");//txt
	ds_list_add(clickable_list,"_128x32_background");//picture
	ds_list_add(clickable_list,"handfull settings");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_gameplay_settings_menu_click");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	xref = 0;
	yref +=0.5;	
	
	//row paint controls
	xref = 0;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
	ds_list_add(clickable_list,"");//txt
	ds_list_add(clickable_list,"_64x64_negative_terrain_paint");//picture
	ds_list_add(clickable_list,"left click \n to decrease \n painted resource");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_terrain_paint_sign_minus");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	xref ++;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
	ds_list_add(clickable_list,"");//txt
	ds_list_add(clickable_list,"_64x64_positive_terrain_paint");//picture
	ds_list_add(clickable_list,"left click \n to increase \n painted resource");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_terrain_paint_sign_plus");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	xref ++;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
	ds_list_add(clickable_list,"");//txt
	ds_list_add(clickable_list,"_64x64_highlite_0");//picture
	ds_list_add(clickable_list,"left click \n to get another brush size");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_terrain_brush_size");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	xref ++;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
	ds_list_add(clickable_list,"");//txt
	ds_list_add(clickable_list,"_64x64_terrain_paint_null");//picture
	ds_list_add(clickable_list,"left click \n to nullyfy terrain paint");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_terrain_paint_zero");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click

	
	//terrains execution
	xref = 0;
	yref ++;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
	ds_list_add(clickable_list,"Terrains");//txt
	ds_list_add(clickable_list,"_128x32_background");//picture
	ds_list_add(clickable_list,"left click \n to paint terrains");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_start_editor_step1");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click

	//props execution
	xref ++;
	xref ++;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
	ds_list_add(clickable_list,"Sides");//txt
	ds_list_add(clickable_list,"_128x32_background");//picture
	ds_list_add(clickable_list,"left click \n to set units");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_start_editor_step6");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click

	//Sides execution
	xref = 0;
	yref += 0.5;
	var _string_paint = string(mapeditor.terrain_paint_selected);
	var _string_side = "";
	var _unit_string = _string_paint;
	if _string_paint != ""
		{
			_string_paint = string_delete(_string_paint,1,string_length("paint_units_"));
			_string_side = _string_paint;
			var _cut_here = string_pos("_", _string_side);
			if	_cut_here > 0	
				{
					_string_side =  string_delete(_string_side,_cut_here,99);	
					_string_paint = string_delete(_string_paint,1,string_length(_string_side)+1);
				};
		}
	if _unit_string != ""
		{
			_unit_string = string_delete(_unit_string,1,string_length("paint_units_"));
			_unit_string = string_delete(_unit_string,1,string_length(_string_side)+1);
		}
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
	ds_list_add(clickable_list,"Units \n" + string(_string_paint));//txt
	ds_list_add(clickable_list,"_256x64_background");//picture
	ds_list_add(clickable_list,"left click \n to paint resources");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_start_editor_step7");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	yref++;
	//side selection
	if _string_side = ""
		{
			for(var _ii = 0; _ii < array_length(sides_array);_ii++)
				{
					var _side_name = sides_array[_ii][$ "side_name"];
					var _side_pic = "_32x32_" + _side_name + "_ico_transparent";
					var _pass_array = [_ii,"left click to select side\n",_side_name]
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,_side_name);//txt
					ds_list_add(clickable_list,"_128x32_background");//picture
					ds_list_add(clickable_list,_pass_array);//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"exe_paint_units_side_");	//execution on click	
					ds_list_add(clickable_list,"_array2_buff_info");	//execution on right click
					
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"");//txt
					ds_list_add(clickable_list,_side_pic);//picture
					ds_list_add(clickable_list,"");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					xref+=2;
					if xref > game_struct.right_side_menu_cell_size -1	{xref = 0;yref+=0.5;}
				}
		}
	else
		{
			var _side_num = exe_return_curent_side_by_name(_string_side);
			if _side_num > -1
				{
					var _avilable_units_array = sides_array[_side_num][$ "avilable_units"];
					for(var _ii = 0; _ii < array_length(_avilable_units_array); _ii++)
						{
							var _this_unit = _avilable_units_array[_ii];
							var _unit_pic = "";
							for(var _kk = 2; _kk < array_length(_this_unit); _kk +=2)
								{
									if _this_unit[_kk] = "picture"	{_unit_pic = _this_unit[_kk+1];break;};
								}
							var _pass_array = [[_string_side,_this_unit[1]],_this_unit[0] + "\n",_this_unit[1]];
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"");//txt
							ds_list_add(clickable_list,_unit_pic);//picture
							ds_list_add(clickable_list,_pass_array);//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"exe_paint_units_side_choosen_unit");	//execution on click	
							ds_list_add(clickable_list,"_array2_buff_info");	//execution on right click
							
							if _unit_string == _this_unit[1]
								{
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,"unit_selected_highlite");//picture
									ds_list_add(clickable_list,"");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
								}
							
							xref++;
							if xref > game_struct.right_side_menu_cell_size -1	{xref = 0;yref++;};
						}
				}
		}
	
	//resoruces paints row 1
	//mapeditor.terrain_paint_selected

	//row indicators
	xref = 0;
	yref ++;	
	//this button below is indicator of continuos paint for roads and rivers
	var _str_indicator = "x: " + string(mouse_xcell) + "\n" + "y: " + string(mouse_ycell);

	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
	ds_list_add(clickable_list,_str_indicator);//txt
	ds_list_add(clickable_list,"_64x64_mouse_0");//picture
	ds_list_add(clickable_list,"This is visual indicator  \n for mouse position on map." );//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	
	
	clickable_loaded = 1;
}