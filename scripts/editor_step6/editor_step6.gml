//case "editor_step6"
function editor_step6()
{
	//menus						
	ds_list_destroy(clickable_list);
	clickable_list = ds_list_create();
	
	//block unneccesary parts
	screen_move_by_mouse = 0;
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
	ds_list_add(clickable_list,"Units");//txt
	ds_list_add(clickable_list,"_128x32_background");//picture
	ds_list_add(clickable_list,"left click \n to set units");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_start_editor_step7");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click

	//Sides execution
	xref = 0;
	yref += 0.5;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
	ds_list_add(clickable_list,"Sides");//txt
	ds_list_add(clickable_list,"_256x64_background");//picture
	ds_list_add(clickable_list,"left click \n to paint resources");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_start_editor_step6");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	
	//resoruces paints row 1
	yref ++;
	xref = 0;

	//sides
	for(var _hh = 0; _hh < array_length(sides_array); _hh++)
		{
			xref = 0;
			var _side_id =  sides_array[@ _hh][$ "side_name"];
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
			ds_list_add(clickable_list,_side_id);//txt
			ds_list_add(clickable_list,"_128x32_background");//picture
			ds_list_add(clickable_list,"side " + string(_hh)	);//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref+=3;
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_32x32_clear_1");//picture
			ds_list_add(clickable_list,"remove side " + string(_hh)	);//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_remove_side_"+string(_hh)	);	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			
			yref += 0.5;
		}
	//sides_end
	//Sides execution
	xref = 0;
	yref ++;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
	ds_list_add(clickable_list,"Add side");//txt
	ds_list_add(clickable_list,"_256x64_background");//picture
	ds_list_add(clickable_list,"left click \n to add_side");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_start_editor_step6_add_side");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	

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