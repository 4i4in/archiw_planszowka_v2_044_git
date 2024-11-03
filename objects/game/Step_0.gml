game_struct.game_time +=1;

#region//start menu map
if create_random_map = 1
{
	//completly random for now
	for (xxx = 0; xxx < game_struct.map_xsize; xxx++) 
	{
		for (yyy = 0; yyy < game_struct.map_ysize; yyy++) 
			{
				set_random_terrain(game_board_array,xxx,yyy,"tile_terrain");
			}
	}
	ds_grid_destroy(raw_editor_minimap);
	surface_free(raw_minimap_surface);
	create_random_map = 0;
}
#endregion

#region//in game menu
switch(game_struct.current_menu)
	{
		case "start_menu":		start_menu();	break;
		case "game_play":		game_play();	break;
		case "editor_step0":	editor_step0();	break;
		case "editor_step1":	editor_step1();	break;	//terrains
		case "editor_step2":	editor_step2();	break;	//props
		case "editor_step3":	editor_step3();	break;	//resources
		
		case "editor_step4":	editor_step4();	break;	
		case "editor_step4_city":			editor_step4_city();	break;	
		case "editor_step4_fortyfication":	editor_step4_fortyfication();	break;	
		case "editor_step4_utylity":		editor_step4_utylity();	break;	
		case "editor_step4_ruins":			editor_step4_ruins();	break;	
		case "editor_step4_visibility":		editor_step4_visibility();	break;	

	
		case "editor_step6":	editor_step6();	break;
		case "editor_step6_add_side":	editor_step6_add_side();	break;
		
		case "editor_step7":	editor_step7();	break;	//units
		
		case "editor_step8":	editor_step8();	break;	//removing tools
		
		case "editor_step9":	editor_step9();	break;	//generators
		
		
	}
#endregion

#region//yes/no menu
if yes_no_srceen = 1
	{
		ds_list_destroy(clickable_list);
		clickable_list = ds_list_create();
		
		xxx = wgw/2 - 2*game_struct.button_size;
		yyy = wgh/2 -	game_struct.button_size;
		
		xref = -4;
		yref = -4;

		ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
		ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
		ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 8*game_struct.button_size);//x2
		ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 4*game_struct.button_size);//y2	
		ds_list_add(clickable_list,yes_no_prompt);//txt
		ds_list_add(clickable_list,"_512x256_background");//picture
		ds_list_add(clickable_list,"left click \n to continue or cancel");//txt mouseover rclick in case of "_"
		ds_list_add(clickable_list,"");	//execution on click	
		ds_list_add(clickable_list,"_");	//execution on right click
		
		xref = 3;
		yref = 1;
		ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
		ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
		ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
		ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ game_struct.button_size);//y2	
		ds_list_add(clickable_list,"Cancel!");//txt
		ds_list_add(clickable_list,"_128x64_background");//picture
		ds_list_add(clickable_list,"left click \n to cancel");//txt mouseover rclick in case of "_"
		ds_list_add(clickable_list,"exe_yes_no_srceen_no");	//execution on click	
		ds_list_add(clickable_list,"_");	//execution on right click
		
		xref = -5;
		yref = 1;
		ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
		ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
		ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
		ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ game_struct.button_size);//y2	
		ds_list_add(clickable_list,"Continue!");//txt
		ds_list_add(clickable_list,"_128x64_background");//picture
		ds_list_add(clickable_list,"left click \n to continue");//txt mouseover rclick in case of "_"
		ds_list_add(clickable_list,string(yes_no_exe));	//execution on click	
		ds_list_add(clickable_list,"_");	//execution on right click
		
		
		if yes_no_pic != ""
			{
				xref = -4;
				yref = -4;
				ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
				ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
				ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0*game_struct.button_size);//x2
				ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0*game_struct.button_size);//y2	
				ds_list_add(clickable_list,"");//txt
				ds_list_add(clickable_list,yes_no_pic);//picture
				ds_list_add(clickable_list,"");//txt mouseover rclick in case of "_"
				ds_list_add(clickable_list,"");	//execution on click	
				ds_list_add(clickable_list,"");	//execution on right click
			}
		
		
		if game_struct.game_time mod 23 = 0	{force_redraw = 1;};//refreshing for cases when window is minimized and need redraw
		
		mapeditor.terrain_paint_selected = "";	mapeditor.terrain_brush_size = 0; //issue with loading in editor
		
		clickable_loaded = 1
	}
if yes_no_srceen < 1	&&	game_struct.game_time mod 479 = 0
	{
		yes_no_srceen = 0;	yes_no_prompt = ""; yes_no_exe = "";	yes_no_pic = "";	yes_no_cover_background = "";
	}
#endregion

#region//text input
if writing_on = 1
	{
		ascii_supress = 1;
		if keyboard_check(vk_anykey)	&& string_length(text_writer_string) < input_length
			{
				text_writer_string = text_writer_string + string(keyboard_string);
				keyboard_string = "";
			}
		if keyboard_check_released(vk_backspace)
			{
				text_writer_string = string_delete(text_writer_string,string_length(text_writer_string),1);
				keyboard_string = "";
			}
		if keyboard_check_released(vk_enter)
			{
				if text_target = "map_name"		
					{game_struct.map_name = text_writer_string;	text_writer_string = "";	clickable_loaded = 0};
				
				writing_on = 0;
				ascii_supress = 0;
				text_target = "console";
			}
		if text_target = "console"
			{	text_input_x = 100;	text_input_y = 100;	};
	}
#endregion

#region//display scale event for minimize and adapt to screen
if game_struct.game_time mod 31 == 0
	{
		dgw = display_get_width();	if dgw < 1 {dgw = 1; exe_minimize_safety_switch();};
		dgh = display_get_height();	if dgh < 1 {dgh = 1};
		wgw = window_get_width();	if wgw < 1 {wgw = 1; exe_minimize_safety_switch();};
		wgh = window_get_height();	if wgh < 1 {wgh = 1};

		display_xscale = dgw / wgw;
		display_yscale = dgh / wgh;
	}
#endregion

#region//mouse move map
if screen_move_by_mouse == 1		{	move_screen_by_mouse();	};

//check mouse pointing cell
mouse_xcell = floor(	(game_struct.cam_xpos + mouse_x) / (game_struct.cell_size / game_struct.zoom_scale)	);
mouse_ycell = floor(	(game_struct.cam_ypos + mouse_y) / (game_struct.cell_size / game_struct.zoom_scale)	);
if mouse_xcell < 0							{mouse_xcell += game_struct.map_xsize};
if mouse_xcell > game_struct.map_xsize-1	{mouse_xcell -= game_struct.map_xsize};
if mouse_ycell < 0							{mouse_ycell += game_struct.map_ysize};
if mouse_ycell > game_struct.map_ysize-1	{mouse_ycell -= game_struct.map_ysize};
#endregion

#region//create minimap
if game_struct.show_minimap = 1 && game_struct.game_time mod 1289 = 0
	{
		regenerate_minimap = 1
	}
if force_redraw = 1	{regenerate_minimap = 1};	
if regenerate_minimap = 1
	{
		operational_array = game_board_array;
		if !surface_exists(surface_minimap)	{surface_minimap = surface_create(game_struct.map_xsize,game_struct.map_ysize)};
		if surface_get_width(surface_minimap) != game_struct.map_xsize || surface_get_height(surface_minimap) != game_struct.map_ysize
			{
				surface_free(surface_minimap);
				surface_minimap = surface_create(game_struct.map_xsize,game_struct.map_ysize);
			}
		surface_set_target(surface_minimap);
		draw_clear(c_black);	
		for(xxx = 0; xxx < game_struct.map_xsize; xxx ++)
			{
				for(yyy = 0; yyy < game_struct.map_ysize; yyy ++)
					{
						//draw_terrain
						ppp = #FF00FF;
						var _tt = "tile_terrain"
						var _str =  operational_array[xxx][yyy][$ _tt][@ 0]
						switch(string_char_at(string(_str), 1))
							{
								case "d":	ppp = #3569B2;break;//"deep_water"	{ppp = #3569B2};
								case "z":	ppp = #3CA8CC;break;//"zhallow_water"	{ppp = #3CA8CC};
								case "s":	ppp = #CABD96; break//"sand"	{ppp = #CABD96};
								case "p":	ppp = #558720; break;//"plain": ppp = #558720; break;
								case "h":	ppp = #7F420C; break;//"hills": ppp = #7F420C; break;
								case "m":	ppp = #A0A7B2; break;//"mountains": ppp = #A0A7B2; break;
							}
						draw_set_alpha(1);
						draw_point_color(xxx,yyy,ppp);
					}
			}
		surface_reset_target();	
		regenerate_minimap = 0;
	}
#endregion	
#region//prepare map for drawing
if game_struct.game_time mod 607 == 0	^^ force_redraw = 1//sometimes redraw surface just to be sure
	{
		surface_free(surface_ground_map);
		surface_free(clickable_surface);
		surface_free(surface_highlite);
		surface_free(surface_unknown);surface_free(surface_FOW);surface_free(surface_FOW_inv);
		surface_ground_map = surface_create(	clamp((wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size),1,1920	),wgh);
		game_struct.redraw_ground_layer = 1;
	};
if show_ground_map == 1 && game_struct.redraw_ground_layer == 1
	{
		exe_switch_operationl_array_for_current_player();
		regenerate_drawing_arrays();
		cam_xscope =	ceil(	(wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size) / 
								(game_struct.cell_size / game_struct.zoom_scale)	)	+1;
		cam_yscope =	ceil(	wgh  / (game_struct.cell_size / game_struct.zoom_scale)	) +1;

		for(xxx = cam_xcell; xxx < cam_xcell + cam_xscope; xxx ++)
			{
				for(yyy = cam_ycell; yyy < cam_ycell + cam_yscope; yyy ++)
					{
						xxx1 = xxx;	yyy1 = yyy;//map wraper
								
						xref = xxx1*(game_struct.cell_size/game_struct.zoom_scale) - game_struct.cam_xpos;
						yref = yyy1*(game_struct.cell_size/game_struct.zoom_scale) - game_struct.cam_ypos;
										
						if xxx1 < 0 {xxx1 += game_struct.map_xsize}; //map wraper
						if xxx1 > game_struct.map_xsize-1 {xxx1 -= game_struct.map_xsize};
						if yyy1 < 0 {yyy1 += game_struct.map_ysize};
						if yyy1 > game_struct.map_ysize-1 {yyy1 -= game_struct.map_ysize};
						
						sort_terrain_to_drwing_lists(operational_array,xxx1,yyy1,"tile_terrain");	
						sort_props_to_drwing_lists(operational_array,xxx1,yyy1,"tile_props");	
						if game_struct.show_resources = 1
							{	sort_resources_to_drwing_lists(operational_array,xxx1,yyy1,"tile_resources"); };
						sort_river_to_drwing_lists(operational_array,xxx1,yyy1,"river");	
						sort_roads_to_drwing_lists(operational_array,xxx1,yyy1,"road");	
						sort_facility_to_drwing_lists(operational_array,xxx1,yyy1,"facility");	
						sort_units_to_drwing_lists(operational_array,xxx1,yyy1,"units");	
						if game_struct.show_FOW = 1	&&	game_struct.current_player > -1
							{
								sort_FOW_to_drwing_lists(operational_array,xxx1,yyy1,"fog_of_war");	
							}
					}
			}
		if game_struct.show_FOW = 1	&&	game_struct.current_player > -1
			{	 draw_surface_FOW();	};
		draw_ground_underly();
		draw_sorted_terrain();
		
		force_redraw = 0;

	}
#endregion

#region//brush highlite
if	mapeditor.terrain_paint_selected != ""
	{
		ds_list_destroy(draw_highlite_map);
		draw_highlite_map = ds_list_create();
		
		xxx = mouse_xcell*(game_struct.cell_size/game_struct.zoom_scale) - game_struct.cam_xpos;
		yyy = mouse_ycell*(game_struct.cell_size/game_struct.zoom_scale) - game_struct.cam_ypos;
		
		if xxx < 0
			{	xxx += game_struct.map_xsize*(game_struct.cell_size/game_struct.zoom_scale)	};
		if xxx > wgw
			{	xxx -= game_struct.map_xsize*(game_struct.cell_size/game_struct.zoom_scale)	};
		if yyy < 0
			{	yyy += game_struct.map_ysize*(game_struct.cell_size/game_struct.zoom_scale)	};
		if yyy > wgh
			{	yyy -= game_struct.map_ysize*(game_struct.cell_size/game_struct.zoom_scale)	};
		
		var _str = "paint_cover_" + string(mapeditor.terrain_brush_size);
		ds_list_add(draw_highlite_map,xxx);
		ds_list_add(draw_highlite_map,yyy);
		ds_list_add(draw_highlite_map,_str);
	}
	
if array_length(city_conected) > 0	&&	display_terrain_menu = 1
	{
		ds_list_destroy(draw_highlite_map);
		draw_highlite_map = ds_list_create();
		
		var _str = "city_cover_highlite";
		for(var _ii = 0; _ii < array_length(city_conected);_ii++)
			{
				var _given_x = city_conected[@ _ii][@ 0];
				var _given_y = city_conected[@ _ii][@ 1];
				xxx = _given_x*(game_struct.cell_size/game_struct.zoom_scale) - game_struct.cam_xpos;
				yyy = _given_y*(game_struct.cell_size/game_struct.zoom_scale) - game_struct.cam_ypos;
		
				if xxx < 0
					{	xxx += game_struct.map_xsize*(game_struct.cell_size/game_struct.zoom_scale)	};
				if xxx > wgw
					{	xxx -= game_struct.map_xsize*(game_struct.cell_size/game_struct.zoom_scale)	};
				if yyy < 0
					{	yyy += game_struct.map_ysize*(game_struct.cell_size/game_struct.zoom_scale)	};
				if yyy > wgh
					{	yyy -= game_struct.map_ysize*(game_struct.cell_size/game_struct.zoom_scale)	};
				
				ds_list_add(draw_highlite_map,xxx);
				ds_list_add(draw_highlite_map,yyy);
				ds_list_add(draw_highlite_map,_str);
			}
	}
draw_highlite_to_surface();
#endregion


#region//clickable menu mouse action
if clickable_loaded = 1
	{
		exe_switch_operationl_array_for_current_player();
		for(iii = 0; iii < ds_list_size(clickable_list); iii += cl_wrap)
			{
				xxx1 = ds_list_find_value(clickable_list,iii+0);//x1
				yyy1 = ds_list_find_value(clickable_list,iii+1);//y1
				xxx2 = ds_list_find_value(clickable_list,iii+2);//x2	 or r for circle
				yyy2 = ds_list_find_value(clickable_list,iii+3);//y2
				//txt1 = ds_list_find_value(clickable_list,iii+4);//text
				pic1 = ds_list_find_value(clickable_list,iii+5);//picture
				txt1 = ds_list_find_value(clickable_list,iii+6);//text mouse over rclick
				_exe = ds_list_find_value(clickable_list,iii+7);//execute left click
				_rexe = ds_list_find_value(clickable_list,iii+8);//execute right click
				
				//prepare mouse action
				mouse_action = 0;
				if point_in_rectangle(mouse_x, mouse_y, xxx1, yyy1, xxx2, yyy2)	{mouse_action = 1};
				if mouse_action = 1 && mouse_check_button(mb_left)	&&	lclick_cooldown_counter < 1	{mouse_action = 2};
				if mouse_action = 1 && mouse_check_button(mb_right)	&&	rclick_cooldown_counter < 1	{mouse_action = 3};
				
				//auto adapt
				switch(pic1)
					{
						case "_64x64_highlite_0":	//brush case for painting map
							switch(mapeditor.terrain_brush_size)
								{
									case 0:
										ds_list_set(clickable_list,iii+5,"_64x64_highlite_0")	;break;
									case 1:
										ds_list_set(clickable_list,iii+5,"_64x64_highlite_1")	;break;
									case 2:
										ds_list_set(clickable_list,iii+5,"_64x64_highlite_2")	;break;
									case 3:
										ds_list_set(clickable_list,iii+5,"_64x64_highlite_3")	;break;
								};break;
								
						case "_64x64_positive_terrain_paint":	//brush case for painting map
							if mapeditor.terrain_paint_sign = 1
									{	ds_list_set(clickable_list,iii+5,"_64x64_positive_terrain_paint_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_positive_terrain_paint_0")	};
								;break;
						case "_64x64_negative_terrain_paint":	//brush case for painting map
							if mapeditor.terrain_paint_sign = -1
									{	ds_list_set(clickable_list,iii+5,"_64x64_negative_terrain_paint_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_negative_terrain_paint_0")	};
								;break;
						case "_64x64_mountains_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_mountains"
									{	ds_list_set(clickable_list,iii+5,"_64x64_mountains_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_mountains_0")	};
								;break;
						case "_64x64_hills_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_hills"
									{	ds_list_set(clickable_list,iii+5,"_64x64_hills_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_hills_0")	};
								;break;
						case "_64x64_plain_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_plains"
									{	ds_list_set(clickable_list,iii+5,"_64x64_plain_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_plain_0")	};
								;break;
						case "_64x64_sand_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_sands"
									{	ds_list_set(clickable_list,iii+5,"_64x64_sand_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_sand_0")	};
								;break;
						case "_64x64_shallow_water_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_shallow_waters"
									{	ds_list_set(clickable_list,iii+5,"_64x64_shallow_water_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_shallow_water_0")	};
								;break;
						case "_64x64_deep_water_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_deep_waters"
									{	ds_list_set(clickable_list,iii+5,"_64x64_deep_water_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_deep_water_0")	};
								;break;
						case "_64x64_rivers_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_rivers"
									{	ds_list_set(clickable_list,iii+5,"_64x64_rivers_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_rivers_0")	};
								;break;
						case "_64x64_roads_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_roads"
									{	ds_list_set(clickable_list,iii+5,"_64x64_roads_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_roads_0")	};
								;break;
						case "_64x64_continuo_0":	//brush case for painting map
							if mapeditor.paint_continuos = 1
									{	ds_list_set(clickable_list,iii+5,"_64x64_continuo_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_continuo_0")	};
								;break;	
								
							
								
						//props painting
						case "_64x64_crateres_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_craters"
									{	ds_list_set(clickable_list,iii+5,"_64x64_crateres_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_crateres_0")	};
								;break;
						case "_64x64_deasise_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_deasise"
									{	ds_list_set(clickable_list,iii+5,"_64x64_deasise_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_deasise_0")	};
								;break;
						case "_64x64_forest_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_forest"
									{	ds_list_set(clickable_list,iii+5,"_64x64_forest_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_forest_0")	};
								;break;
						case "_64x64_oasis_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_oasis"
									{	ds_list_set(clickable_list,iii+5,"_64x64_oasis_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_oasis_0")	};
								;break;
						case "_64x64_pollution_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_pollution"
									{	ds_list_set(clickable_list,iii+5,"_64x64_pollution_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_pollution_0")	};
								;break;
						case "_64x64_reefs_rocks_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_reef_rocks"
									{	ds_list_set(clickable_list,iii+5,"_64x64_reefs_rocks_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_reefs_rocks_0")	};
								;break;
						case "_64x64_rifts_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_rifts"
									{	ds_list_set(clickable_list,iii+5,"_64x64_rifts_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_rifts_0")	};
								;break;
						case "_64x64_salt_lakes_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_salt_lakes"
									{	ds_list_set(clickable_list,iii+5,"_64x64_salt_lakes_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_salt_lakes_0")	};
								;break;
						case "_64x64_shallows_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_shallows"
									{	ds_list_set(clickable_list,iii+5,"_64x64_shallows_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_shallows_0")	};
								;break;
						case "_64x64_swamps_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_swamps"
									{	ds_list_set(clickable_list,iii+5,"_64x64_swamps_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_swamps_0")	};
								;break;
						case "_64x64_vulcano_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_vulcano"
									{	ds_list_set(clickable_list,iii+5,"_64x64_vulcano_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_vulcano_0")	};
								;break;
						case "_64x64_wood_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_woods"
									{	ds_list_set(clickable_list,iii+5,"_64x64_wood_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_wood_0")	};
								;break;
						//resources painting
						case "_64x64_animals_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_animals"
									{	ds_list_set(clickable_list,iii+5,"_64x64_animals_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_animals_0")	};
								;break;
						case "_64x64_coal_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_coal"
									{	ds_list_set(clickable_list,iii+5,"_64x64_coal_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_coal_0")	};
								;break;
						case "_64x64_crops_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_crops"
									{	ds_list_set(clickable_list,iii+5,"_64x64_crops_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_crops_0")	};
								;break;
						case "_64x64_gems_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_gems"
									{	ds_list_set(clickable_list,iii+5,"_64x64_gems_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_gems_0")	};
								;break;
						case "_64x64_granite_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_granite"
									{	ds_list_set(clickable_list,iii+5,"_64x64_granite_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_granite_0")	};
								;break;
						case "_64x64_iron_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_iron"
									{	ds_list_set(clickable_list,iii+5,"_64x64_iron_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_iron_0")	};
								;break;
						case "_64x64_marble_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_marble"
									{	ds_list_set(clickable_list,iii+5,"_64x64_marble_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_marble_0")	};
								;break;
						case "_64x64_precious_metals_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_precious_metals"
									{	ds_list_set(clickable_list,iii+5,"_64x64_precious_metals_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_precious_metals_0")	};
								;break;
						case "_64x64_rare_metals_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_rare_metals"
									{	ds_list_set(clickable_list,iii+5,"_64x64_rare_metals_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_rare_metals_0")	};
								;break;
						case "_64x64_salt_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_salt"
									{	ds_list_set(clickable_list,iii+5,"_64x64_salt_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_salt_0")	};
								;break;
						case "_64x64_stones_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_stones"
									{	ds_list_set(clickable_list,iii+5,"_64x64_stones_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_stones_0")	};
								;break;
						case "_64x64_water_0":	//brush case for painting map
							if mapeditor.terrain_paint_selected = "paint_water"
									{	ds_list_set(clickable_list,iii+5,"_64x64_water_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_water_0")	};
								;break;
						//gameplay	
						case "_64x64_show_grid_0":	//brush case for painting map
							if game_struct.show_grid = 1
									{	ds_list_set(clickable_list,iii+5,"_64x64_show_grid_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_show_grid_0")	};
								;break;
						case "_64x64_show_hide_forest_0":	//brush case for painting map
							if game_struct.show_trees = 0
									{	ds_list_set(clickable_list,iii+5,"_64x64_show_hide_forest_0")	}
							else if game_struct.show_trees = 1
									{	ds_list_set(clickable_list,iii+5,"_64x64_show_hide_forest_1")	}
							else if game_struct.show_trees = 2
									{	ds_list_set(clickable_list,iii+5,"_64x64_show_hide_forest_2")	};
								;break;
						case "_64x64_show_hide_resources_0":	//brush case for painting map
							if game_struct.show_resources = 1
									{	ds_list_set(clickable_list,iii+5,"_64x64_show_hide_resources_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_show_hide_resources_0")	};
								;break;
						case "_64x64_show_ou_water_0":	//brush case for painting map
							if game_struct.show_underwater = 1
									{	ds_list_set(clickable_list,iii+5,"_64x64_show_ou_water_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_show_ou_water_0")	};
								;break;
						case "_64x64_show_FOW_0":	//brush case for painting map
							if game_struct.show_FOW = 1
									{	ds_list_set(clickable_list,iii+5,"_64x64_show_FOW_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_show_FOW_0")	};
								;break;		
								
						case "raw_minimap_surface":	//brush case for painting map
							if mapeditor.seamles_raw_minimap_show = 1
									{	ds_list_set(clickable_list,iii+5,"seamles_raw_minimap_surface")	}
							else	{	ds_list_set(clickable_list,iii+5,"raw_minimap_surface")	};
								;break;
								
						case "_64x64_city_0":	//brush case for painting map
							if game_struct.current_menu = "editor_step4_city"
									{	ds_list_set(clickable_list,iii+5,"_64x64_city_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_city_0")	};
								;break;
								
						case "_64x64_fortification_0":	//brush case for painting map
							if game_struct.current_menu = "editor_step4_fortyfication"
									{	ds_list_set(clickable_list,iii+5,"_64x64_fortification_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_fortification_0")	};
								;break;
								
						case "_64x64_ruins_0":	//brush case for painting map
							if game_struct.current_menu = "editor_step4_ruins"
									{	ds_list_set(clickable_list,iii+5,"_64x64_ruins_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_ruins_0")	};
								;break;
								
						case "_64x64_visibility_0":	//brush case for painting map
							if game_struct.current_menu = "editor_step4_visibility"
									{	ds_list_set(clickable_list,iii+5,"_64x64_visibility_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_visibility_0")	};
								;break;
								
						case "_64x64_utylity_buildings_0":	//brush case for painting map
							if game_struct.current_menu = "editor_step4_utylity"
									{	ds_list_set(clickable_list,iii+5,"_64x64_utylity_buildings_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_utylity_buildings_0")	};
								;break;
								
						case "_64x64_merchants_0":	//brush case for painting map
							if game_struct.current_menu = "editor_step5_merchants"
									{	ds_list_set(clickable_list,iii+5,"_64x64_merchants_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_merchants_0")	};
								;break;
								
						case "_64x64_militia_0":	//brush case for painting map
							if game_struct.current_menu = "editor_step5_militia"
									{	ds_list_set(clickable_list,iii+5,"_64x64_militia_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_militia_0")	};
								;break;
						
						case "_64x64_miners_0":	//brush case for painting map
							if game_struct.current_menu = "editor_step5_miners"
									{	ds_list_set(clickable_list,iii+5,"_64x64_miners_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_miners_0")	};
								;break;
								
						case "_64x64_peasants_0":	//brush case for painting map
							if game_struct.current_menu = "editor_step5_peasants"
									{	ds_list_set(clickable_list,iii+5,"_64x64_peasants_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_peasants_0")	};
								;break;
								
						case "_64x64_seamen_0":	//brush case for painting map
							if game_struct.current_menu = "editor_step5_seamen"
									{	ds_list_set(clickable_list,iii+5,"_64x64_seamen_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_seamen_0")	};
								;break;
								
						case "_64x64_sheppards_0":	//brush case for painting map
							if game_struct.current_menu = "editor_step5_sheppards"
									{	ds_list_set(clickable_list,iii+5,"_64x64_sheppards_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_sheppards_0")	};
								;break;
								
						case "_64x64_townsfolk_0":	//brush case for painting map
							if game_struct.current_menu = "editor_step5_townsfolk"
									{	ds_list_set(clickable_list,iii+5,"_64x64_townsfolk_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_townsfolk_0")	};
								;break;
								
						case "_64x64_wild_0":	//brush case for painting map
							if game_struct.current_menu = "editor_step5_wild"
									{	ds_list_set(clickable_list,iii+5,"_64x64_wild_1")	}
							else	{	ds_list_set(clickable_list,iii+5,"_64x64_wild_0")	};
								;break;

					}
				//auto adapt generic for painting cities
				if string_starts_with(pic1, "city_")	&&	string_starts_with(mapeditor.terrain_paint_selected,"paint_city_")
					{
						
						var _picture_string = pic1; var _picture_string_length = string_length(pic1);
						_picture_string = string_delete(_picture_string,_picture_string_length-1,2);
						var _delete_string = string_length("city_");
						_picture_string = string_delete(_picture_string,1,_delete_string);
						
						var _paint_string = mapeditor.terrain_paint_selected; 
						var _delete_string = string_length("paint_city_");
						_paint_string = string_delete(mapeditor.terrain_paint_selected,1,_delete_string);
						
						if string(_picture_string) = string(_paint_string)
							{
								var _new_pic_string = string(pic1) +"s";
								ds_list_set(clickable_list,iii+5,_new_pic_string)
							}
						else{	ds_list_set(clickable_list,iii+5,string(pic1)	)	};
					}
				//auto adapt generic for painting fortyfication
				if	string_starts_with(pic1, "fortyfication_")	&&
					string_starts_with(mapeditor.terrain_paint_selected,"paint_fortyfication_")
					{
						var _picture_string = pic1; var _picture_string_length = string_length(pic1);
						_picture_string = string_delete(_picture_string,_picture_string_length-1,2);
						var _delete_string = string_length("fortyfication_");
						_picture_string = string_delete(_picture_string,1,_delete_string);
						
						var _paint_string = mapeditor.terrain_paint_selected; 
						_delete_string = string_length("paint_fortyfication_");
						_paint_string = string_delete(mapeditor.terrain_paint_selected,1,_delete_string);
						if string(_picture_string) = string(_paint_string)
							{
								var _new_pic_string = string(pic1) +"s";
								ds_list_set(clickable_list,iii+5,_new_pic_string)
							}
						else{	ds_list_set(clickable_list,iii+5,string(pic1)	)	};
					}
					
				if mouse_action = 1 //mouse over
					{
						switch(pic1)
							{
								case "_512x256_background":	
									ds_list_set(clickable_list,iii+5,"_512x256_background_mouseover")	;break;
								case "_256x64_background":	
									ds_list_set(clickable_list,iii+5,"_256x64_background_mouseover")	;break;
								case "_256x32_background":	
									ds_list_set(clickable_list,iii+5,"_256x32_background_mouseover")	;break;	
								case "_128x64_background":	
									ds_list_set(clickable_list,iii+5,"_128x64_background_mouseover")	;break;
								case "_128x32_background":	
									ds_list_set(clickable_list,iii+5,"_128x32_background_mouseover")	;break;
								case "_64x64_copy":	
									ds_list_set(clickable_list,iii+5,"_64x64_copy_mouseover")	;break;	
								case "_64x64_randomise":	
									ds_list_set(clickable_list,iii+5,"_64x64_randomise_mouseover")	;break;	
								case "_64x64_negative":	
									ds_list_set(clickable_list,iii+5,"_64x64_negative_mouseover")	;break;	
								case "_64x64_positive":	
									ds_list_set(clickable_list,iii+5,"_64x64_positive_mouseover")	;break;	
								case "_64x64_go_back":	
									ds_list_set(clickable_list,iii+5,"_64x64_go_back_mouseover")	;break;
								case "_64x64_play":	
									ds_list_set(clickable_list,iii+5,"_64x64_play_mouseover")	;break;
								case "_64x64_mechanics":	
									ds_list_set(clickable_list,iii+5,"_64x64_mechanics_mouseover")	;break;	
								
								case "_32x32_negative":	
									ds_list_set(clickable_list,iii+5,"_32x32_negative_mouseover")	;break;	
								case "_32x32_positive":	
									ds_list_set(clickable_list,iii+5,"_32x32_positive_mouseover")	;break;	
									
								case "_32x32_left":	
									ds_list_set(clickable_list,iii+5,"_32x32_left_mouseover")	;break;	
								case "_32x32_right":	
									ds_list_set(clickable_list,iii+5,"_32x32_right_mouseover")	;break;	
								
								case "_32x32_next_unit":	
									ds_list_set(clickable_list,iii+5,"_32x32_next_unit_mouseover")	;break;	
								case "_32x32_EOTurn":	
									ds_list_set(clickable_list,iii+5,"_32x32_EOTurn_mouseover")	;break;	
									
							}
					}
				if mouse_action = 2 //mouse leftclick
					{
						revoke_right_click_results();
						switch(_exe)
							{
								case "exe_start_game":				exe_start_game();	break;
								case "exe_goto_start_menu":			exe_goto_start_menu();	break;
								
								case "exe_yes_no_srceen_no":			exe_yes_no_srceen_no();	break;
								
								case "exe_start_editor_step0":		exe_start_editor_step0();	break;
								
								case "exe_goto_editor_step0_ask_yn":		exe_goto_editor_step0_ask_yn();	break;
								case "exe_goto_editor_step0":		exe_goto_editor_step0();	break;
								
								case "exe_start_editor_step1":		exe_start_editor_step1();	break;
								case "exe_start_editor_step2":		exe_start_editor_step2();	break;
								case "exe_start_editor_step3":		exe_start_editor_step3();	break;
								
								case "exe_start_editor_step4":		exe_start_editor_step4();	break;
								case "exe_start_editor_step4_city":					exe_start_editor_step4_city();	break;
								case "exe_start_editor_step4_fortyfication":		exe_start_editor_step4_fortyfication();	break;
								case "exe_start_editor_step4_utylity":				exe_start_editor_step4_utylity();	break;
								case "exe_start_editor_step4_ruins":				exe_start_editor_step4_ruins();	break;
								case "exe_start_editor_step4_visibility":			exe_start_editor_step4_visibility();	break;
								
								case "exe_start_editor_step6":		exe_start_editor_step6();	break;
								case "exe_remove_side_0":			exe_remove_side_(0);	break;
								case "exe_remove_side_1":			exe_remove_side_(1);	break;
								case "exe_remove_side_2":			exe_remove_side_(2);	break;
								case "exe_remove_side_3":			exe_remove_side_(3);	break;
								case "exe_remove_side_4":			exe_remove_side_(4);	break;
								case "exe_remove_side_5":			exe_remove_side_(5);	break;
								case "exe_remove_side_6":			exe_remove_side_(6);	break;
								case "exe_remove_side_7":			exe_remove_side_(7);	break;
								case "exe_remove_side_8":			exe_remove_side_(8);	break;
								case "exe_remove_side_9":			exe_remove_side_(9);	break;
								
								case "exe_start_editor_step6_add_side":		exe_start_editor_step6_add_side();	break;
								case "exe_add_side_0":			exe_add_side_(0);	break;
								case "exe_add_side_1":			exe_add_side_(1);	break;
								case "exe_add_side_2":			exe_add_side_(2);	break;
								case "exe_add_side_3":			exe_add_side_(3);	break;
								case "exe_add_side_4":			exe_add_side_(4);	break;
								case "exe_add_side_5":			exe_add_side_(5);	break;
								case "exe_add_side_6":			exe_add_side_(6);	break;
								case "exe_add_side_7":			exe_add_side_(7);	break;
								case "exe_add_side_8":			exe_add_side_(8);	break;
								case "exe_add_side_9":			exe_add_side_(9);	break;
								
								case "exe_start_editor_step7":		exe_start_editor_step7();	break;
								
								case "exe_start_editor_step8":		exe_start_editor_step8();	break; //removing tools
								case "exe_start_editor_step9":		exe_start_editor_step9();	break; //generators
								
								
								
								case "exe_change_map_name":			exe_change_map_name();	break;
								case "exe_copy_seed_to_clipboard":	exe_copy_seed_to_clipboard();	break;
								//case "exe_set_random_seed":		exe_set_random_seed();	break;
								case "exe_re_random_seed":			exe_re_random_seed();	break;
								
								case "exe_map_x_size_minus":		exe_map_x_size_minus();	break;
								case "exe_map_x_size_plus":			exe_map_x_size_plus();	break;
								case "exe_map_y_size_minus":		exe_map_y_size_minus();	break;
								case "exe_map_y_size_plus":			exe_map_y_size_plus();	break;
								
								case "exe_terrain_brush_size":		exe_terrain_brush_size();	break;
								
								case "exe_terrain_paint_sign_plus":		exe_terrain_paint_sign_plus();	break;
								case "exe_terrain_paint_sign_minus":	exe_terrain_paint_sign_minus();	break;
								case "exe_terrain_paint_zero":			exe_terrain_paint_zero();		break;
								
								case "exe_terrain_paint_mountains":		exe_terrain_paint_mountains();		break;
								case "exe_terrain_paint_hills":			exe_terrain_paint_hills();		break;
								case "exe_terrain_paint_plains":		exe_terrain_paint_plains();		break;
								case "exe_terrain_paint_sands":			exe_terrain_paint_sands();		break;
								case "exe_terrain_paint_shallow_waters":	exe_terrain_paint_shallow_waters();		break;
								case "exe_terrain_paint_deep_waters":		exe_terrain_paint_deep_waters();		break;
								case "exe_terrain_paint_rivers":		exe_terrain_paint_rivers();		break;
								case "exe_terrain_paint_roads":			exe_terrain_paint_roads();		break;
							
								case "exe_terrain_paint_craters":			exe_terrain_paint_craters();		break;
								case "exe_terrain_paint_deasise":			exe_terrain_paint_deasise();		break;
								case "exe_terrain_paint_forest":			exe_terrain_paint_forest();		break;
								case "exe_terrain_paint_oasis":				exe_terrain_paint_oasis();		break;
								case "exe_terrain_paint_pollution":			exe_terrain_paint_pollution();		break;
								case "exe_terrain_paint_reefs_rocks":		exe_terrain_paint_reefs_rocks();		break;
								case "exe_terrain_paint_rifts":			exe_terrain_paint_rifts();		break;
								case "exe_terrain_paint_salt_lake":		exe_terrain_paint_salt_lake();		break;
								case "exe_terrain_paint_shallows":		exe_terrain_paint_shallows();		break;
								case "exe_terrain_paint_swamps":		exe_terrain_paint_swamps();		break;
								case "exe_terrain_paint_vulcano":		exe_terrain_paint_vulcano();		break;
								case "exe_terrain_paint_woods":			exe_terrain_paint_woods();		break;
								
								case "exe_terrain_paint_animals":		exe_terrain_paint_animals();		break;
								case "exe_terrain_paint_coal":			exe_terrain_paint_coal();		break;
								case "exe_terrain_paint_crops":			exe_terrain_paint_crops();		break;
								case "exe_terrain_paint_gems":			exe_terrain_paint_gems();		break;
								case "exe_terrain_paint_granite":		exe_terrain_paint_granite();		break;
								case "exe_terrain_paint_iron":			exe_terrain_paint_iron();		break;
								case "exe_terrain_paint_marble":			exe_terrain_paint_marble();		break;
								case "exe_terrain_paint_precious_metals":	exe_terrain_paint_precious_metals();		break;
								case "exe_terrain_paint_rare_metals":		exe_terrain_paint_rare_metals();		break;
								case "exe_terrain_paint_salt":			exe_terrain_paint_salt();		break;
								case "exe_terrain_paint_stones":		exe_terrain_paint_stones();		break;
								case "exe_terrain_paint_water":			exe_terrain_paint_water();		break;
								
								case "exe_show_grid":			exe_show_grid();		break;
								case "exe_show_trees":			exe_show_trees();		break;
								case "exe_show_resources":		exe_show_resources();		break;
								case "exe_show_ounderwater":	exe_show_ounderwater();		break;
								case "exe_show_FOW":			exe_show_FOW();		break;
								
								case "exe_switch_seamles_show_minmap":	exe_switch_seamles_show_minmap();		break;
								case "exe_close_seamles_safety_switch":	exe_close_seamles_safety_switch();		break;
								
								
								case "exe_minimap_scale_minus":		exe_minimap_scale_minus();	break;
								case "exe_minimap_scale_plus":		exe_minimap_scale_plus();	break;
								
								case "exe_hills_level_minus":		exe_hills_level_minus();	break;
								case "exe_hills_level_plus":		exe_hills_level_plus();	break;
								
								case "exe_plain_level_minus":		exe_plain_level_minus();	break;
								case "exe_plain_level_plus":		exe_plain_level_plus();	break;
								
								case "exe_sand_level_minus":		exe_sand_level_minus();	break;
								case "exe_sand_level_plus":			exe_sand_level_plus();	break;
								
								case "exe_water_level_minus":		exe_water_level_minus();	break;
								case "exe_water_level_plus":		exe_water_level_plus();	break;
								
								case "exe_deep_water_level_minus":		exe_deep_water_level_minus();	break;
								case "exe_deep_water_level_plus":		exe_deep_water_level_plus();	break;
								
								case "exe_all_level_minus":		exe_all_level_minus();	break;
								case "exe_all_level_plus":		exe_all_level_plus();	break;
								
								case "exe_raw_to_array_treshold_minus":		exe_raw_to_array_treshold_minus();	break;
								case "exe_raw_to_array_treshold_plus":		exe_raw_to_array_treshold_plus();	break;
								
								case "exe_transfer_raw_to_array_and_go_to_editor_step1":		exe_transfer_raw_to_array_and_go_to_editor_step1();	break;
								
								case "exe_move_view_on_minimap":		exe_move_view_on_minimap();	break;
								
								case "exe_save_map":		exe_save_map();	break;
								case "exe_load_map":		exe_load_map();	break;
								
								case "exe_city_":			exe_city_paint_(txt1);	break;
								case "exe_fortyfication_":	exe_fortyfication_paint_(txt1);	break;
								case "exe_paint_utylity_":	exe_paint_utylity_(txt1);	break;
								case "exe_paint_utylity_choosen_":	exe_paint_utylity_choosen_(txt1);	break;
								case "exe_paint_ruins_":	exe_paint_ruins_(txt1);	break;
								case "exe_paint_ruins_choosen_":	exe_paint_ruins_choosen_(txt1);	break;
								case "exe_paint_visibility_":	exe_paint_visibility_(txt1);	break;
								
								case "exe_paint_units_side_":	exe_paint_units_side_(txt1);	break;
								case "exe_paint_units_side_choosen_unit":	exe_paint_units_side_choosen_unit(txt1);	break;
								
								case "exe_display_terrain_menu_city":	exe_display_terrain_menu_city();	break;
								case "exe_display_terrain_menu_units":	exe_display_terrain_menu_units();	break;
								case "exe_display_specific_unit_in_terrain_menu_3":	exe_display_specific_unit_in_terrain_menu_3(txt1);	break;
								case "exe_select_specific_group_in_menu_3":	exe_select_specific_group_in_menu_3(txt1);	break;
								case "exe_shift_unit_group":	exe_shift_unit_group_by_click(txt1);	break;
								case "exe_shift_unit_group_right_menu":	exe_shift_unit_group_right_menu(txt1);	break;
								
								case "exe_move_action_by_click":		exe_move_action_by_click(txt1);	break;
								case "exe_embark_move_by_click":		exe_embark_move_by_click(txt1);	break;
								case "exe_disembark_move_by_click":		exe_disembark_move_by_click(txt1);	break;
								case "exe_inspection_by_click":			exe_inspection_by_click(txt1);	break;
								case "exe_grab_units_to_group_by_click":	exe_grab_units_to_group_by_click(txt1);	break;
								
								
								case "exe_gameplay_settings_menu_click":	exe_gameplay_settings_menu_click();	break;
								
								
								case "exe_clickable_generator_conect_cities":	exe_clickable_generator_conect_cities();	break; // this one execute by click exe_generator_conect_cities
								case "exe_clickable_generator_side_operational_map":	exe_clickable_generator_side_operational_map();	break; // this one execute by click exe_generator_side_operational_map
								
								case "exe_switch_city_menu_option":	exe_switch_city_menu_option(txt1);	break;
								case "exe_switch_city_menu_xy_list":	exe_switch_city_menu_xy_list(txt1);	break;
								case "exe_search_and_switch_city_menu_option":	exe_search_and_switch_city_menu_option(txt1);	break;
								
								case "exe_send_pop_to_work_in":	exe_send_pop_to_work_in(txt1);	break;
								
								case "exe_next_turn_by_click":	exe_next_turn_by_click();	break;//this one execute by click exe_next_turn_autofunction
								case "exe_next_player_by_click":	exe_next_player_by_click(1);	break;//this one execute by click exe_next_player_autofunction
								case "exe_editor_player_by_click":	exe_next_player_by_click(-1);	break;//this one execute by click exe_next_player_autofunction
								
								case "exe_deactivate_active_buff_by_click":	exe_deactivate_active_buff_by_click(txt1);	break;
								case "exe_activate_avilable_buff_by_click":	exe_activate_avilable_buff_by_click(txt1);	break;
								
								case "exe_start_turn_for_player_by_click":	exe_start_turn_for_player_by_click();	break;
								
								case "exe_select_next_unit_with_AP_by_click":	exe_select_next_unit_with_AP_by_click(txt1);	break;
								
								case "exe_end_players_turn_by_click_ask_yn":	exe_end_players_turn_by_click_ask_yn();	break;
								case "exe_goto_end_players_turn":	exe_goto_end_players_turn();	break;
							}
					}
				if mouse_action = 3 //mouse rightclick
					{
						switch(_rexe)
							{
								case "_":	exe_display_mouseover_info();	break;
								case "_array2_buff_info":	exe_transform_txt1_for_mouseover_info(txt1);	exe_display_mouseover_info();	break;
								
								case "rexe_display_selected_unit_detail_info":	rexe_display_selected_unit_detail_info(txt1);	break;
								case "_1array":	exe_display_1array_mouseover_info(txt1);	break;
							}
					}
			}
	}
#endregion

#region//clickable menu drawing
if clickable_loaded = 1
	{
		if !surface_exists(clickable_surface)	{clickable_surface = surface_create(wgw,wgh)};
		surface_set_target(clickable_surface);
		draw_clear_alpha(0,0);
		
		for(iii = 0; iii < ds_list_size(clickable_list); iii += cl_wrap)
			{
				xxx1 = ds_list_find_value(clickable_list,iii+0);//x1
				yyy1 = ds_list_find_value(clickable_list,iii+1);//y1
				xxx2 = ds_list_find_value(clickable_list,iii+2);//x2
				yyy2 = ds_list_find_value(clickable_list,iii+3);//y2
				txt1 = ds_list_find_value(clickable_list,iii+4);//text
				pic1 = ds_list_find_value(clickable_list,iii+5);//picture
				txt2 = ds_list_find_value(clickable_list,iii+6);//text mouse over
				//_exe = ds_list_find_value(clickable_list,iii+7);//execute left click
				//_rexe = ds_list_find_value(clickable_list,iii+8);//execute right click
				
				draw_clickable();//choosing image
			}
		surface_reset_target();
	}
#endregion

#region//move minimap
if game_struct.show_minimap = 1 && game_struct.redraw_ground_layer = 1
	{
		if !surface_exists(surface_minimap)	{surface_minimap = surface_create(game_struct.map_xsize,game_struct.map_ysize)};
		if !surface_exists(minimap_show)	{minimap_show = surface_create(game_struct.map_xsize,game_struct.map_ysize)};
		surface_set_target(minimap_show);
		draw_clear(c_black);	
		draw_surface_tiled(surface_minimap,
							game_struct.map_xsize/2-cam_xcell-cam_xscope/2,
							game_struct.map_ysize/2-cam_ycell-cam_yscope/2)
												
		//pointer on minimap
		draw_rectangle(	game_struct.map_xsize/2 - cam_xscope/2,
						game_struct.map_ysize/2 - cam_yscope/2,
						game_struct.map_xsize/2 + cam_xscope/2,
						game_struct.map_ysize/2 + cam_yscope/2,
						1);							
						
		surface_reset_target();
	}
#endregion

#region//esc event | game end
	if keyboard_check(vk_escape)
		{
			game_end();
		}
#endregion
#region//tab event | game restart
	if keyboard_check(vk_tab)
		{
			game_restart();
		}
#endregion

#region//key check
if keyboard_key != 0 && keyboard_key < 128
	{
		aaa = keyboard_key;
		ascii_call_flip_value();
	}
#endregion
#region//ascii cooldown, mouse cooldown
if ascii_supress = 0
	{
		for(iii = 0; iii < 128;iii++)
			{
				ascii_pausetime = array_get(ascii_pause,iii);
				ascii_pausetime -=1;
				if ascii_pausetime < -100 {ascii_pausetime=0};
				array_set(ascii_pause,iii,ascii_pausetime);
			}
	}
//mouse button cooldown
rclick_cooldown_counter --;
if rclick_cooldown_counter < -100	{	rclick_cooldown_counter = 0	};		
		
lclick_cooldown_counter --;
if lclick_cooldown_counter < -100	{	lclick_cooldown_counter = 0	};
#endregion