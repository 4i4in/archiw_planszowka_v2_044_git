function exe_display_terrain_menu_11()//settings button
{
	if display_terrain_menu = 11
		{
			screen_move_by_mouse = 0;
			//adapt background size
			var _total_x_bck =	8; var _total_y_bck =	6;
			xxx = wgw - (game_struct.right_side_menu_cell_size+_total_x_bck+0.5)*game_struct.button_size;
			yyy = game_struct.mimimap_ypos + game_struct.map_ysize *	game_struct.minimap_scale + 0.5*game_struct.button_size;
			
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
			
			//buttons
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_64x64_show_grid_0");//picture
			ds_list_add(clickable_list,"left click \n to show/hide grid");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_show_grid");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref ++;
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_64x64_show_hide_forest_0");//picture
			ds_list_add(clickable_list,"left click \n to show/hide trees");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_show_trees");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref ++;
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_64x64_show_hide_resources_0");//picture
			ds_list_add(clickable_list,"left click \n to show/hide resources");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_show_resources");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref ++;
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_64x64_show_ou_water_0");//picture
			ds_list_add(clickable_list,"left click \n to show underwater props");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_show_ounderwater");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			
			xref ++;
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_64x64_show_FOW_0");//picture
			ds_list_add(clickable_list,"left click \n to change FOW");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_show_FOW");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			
			xref = 0;
			yref +=1.5;	
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_64x64_save_1");//picture
			ds_list_add(clickable_list,"left click \n to save map");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_save_map");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref ++;
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_64x64_load_1");//picture
			ds_list_add(clickable_list,"left click \n to load map");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_load_map");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref ++;
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_64x64_mechanics");//picture
			ds_list_add(clickable_list,"left click \n to edit map");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_start_editor_step1");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref ++;
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_64x64_play");//picture
			ds_list_add(clickable_list,"left click \n to gameplay");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_start_game");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref ++;
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_64x64_go_back");//picture
			ds_list_add(clickable_list,"left click \n to go back \n to previous step \n in editor");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_goto_editor_step0_ask_yn");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			
			xref = 0;
			yref +=1.5;	
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
			ds_list_add(clickable_list,"next turn");//txt
			ds_list_add(clickable_list,"_128x32_background");//picture
			ds_list_add(clickable_list,"left click \n to next turn \n summary for all");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_next_turn_by_click");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref += 2.5;
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
			ds_list_add(clickable_list,"next player");//txt
			ds_list_add(clickable_list,"_128x32_background");//picture
			ds_list_add(clickable_list,"left click \n next player");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_next_player_by_click");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref += 2.5;
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
			ds_list_add(clickable_list,"editor -1 player");//txt
			ds_list_add(clickable_list,"_128x32_background");//picture
			ds_list_add(clickable_list,"left click \n switch uncovered map");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_editor_player_by_click");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			
			xref = 0;
			yref +=1.5;	
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
			ds_list_add(clickable_list,"new turn for \n current player");//txt
			ds_list_add(clickable_list,"_128x64_background");//picture
			ds_list_add(clickable_list,"left click \n to refres \n turn for current player");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_start_turn_for_player_by_click");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			
			xref = 0;
			yref ++;
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 8*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
			ds_list_add(clickable_list,"rightclick outside to close this window");//txt
			ds_list_add(clickable_list,"");//picture
			ds_list_add(clickable_list,"how to close this window");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			
			
			
			restricted_x1 = xxx;
			restricted_x2 = xxx + _total_x_bck*game_struct.button_size;
			restricted_y1 = yyy;
			restricted_y2 = yyy + _total_y_bck*game_struct.button_size;

		}
}