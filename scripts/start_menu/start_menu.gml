//case "start_menu"
function start_menu()
{
	//menus						
	ds_list_destroy(clickable_list);
	clickable_list = ds_list_create();
	
	//block unneccesary parts
	screen_move_by_mouse = 0;
	show_ground_map = 0;
	game_struct.redraw_ground_layer = 0;
		
	xxx = wgw/2 - 2	*	game_struct.button_size;
	yyy = game_struct.button_size;
	
	//main menu
	xref = 0;
	yref = 0;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
	ds_list_add(clickable_list,"Start Game");//txt
	ds_list_add(clickable_list,"_256x64_background");//picture
	ds_list_add(clickable_list,"left click \n to start game");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_start_game");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	yref ++;

	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
	ds_list_add(clickable_list,"Map Edidor");//txt
	ds_list_add(clickable_list,"_256x64_background");//picture
	ds_list_add(clickable_list,"left click \n to start map editor");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_start_editor_step0");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	yref ++;
	
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4* game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
	ds_list_add(clickable_list,"Load game");//txt
	ds_list_add(clickable_list,"_256x64_background");//picture
	ds_list_add(clickable_list,"left click \n to load map");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"exe_load_map");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	yref ++;
	
	clickable_loaded = 1;
}