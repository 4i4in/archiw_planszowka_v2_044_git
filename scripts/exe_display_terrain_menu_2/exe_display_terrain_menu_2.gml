function exe_display_terrain_menu_2()//cities
{
	if display_terrain_menu = 2
		{
			screen_move_by_mouse = 0;
			
			var _str_city_tiles = variable_clone(operational_array[display_terrain_menu_x][display_terrain_menu_y][$ "conected_cities"]);
			var _conected_city = array_length(_str_city_tiles);
			
			var _min_city_x = undefined;	var _min_city_y = undefined;
			var _max_city_x = undefined;	var _max_city_y = undefined;
			if _conected_city > 0
				{
					//check for corner cases of x/y wrap on map, like x mapsize -3 to x +2, reversed min/max
					var _x_reversed = 0;	var _y_reversed = 0;
					var _x_max_exist = 0;	var _x_min_exist = 0;	var _y_max_exist = 0;	var _y_min_exist = 0;
					for(var _ii = 0; _ii < _conected_city; _ii++)
						{
							var _ii_city_tile_x = _str_city_tiles[_ii][0];
							var _ii_city_tile_y = _str_city_tiles[_ii][1];
							
							if _ii_city_tile_x = game_struct.map_xsize-1	{_x_max_exist = 1};
							if _ii_city_tile_x = 0	{_x_min_exist = 1};
							if _ii_city_tile_y = game_struct.map_ysize-1	{_y_max_exist = 1};
							if _ii_city_tile_y = 0	{_y_min_exist = 1};
						}
					if 	(_x_max_exist = 1 && _x_min_exist = 1)	{_x_reversed = 1};
					if 	(_y_max_exist = 1 && _y_min_exist = 1)	{_y_reversed = 1};
					
					
					//searching for min/max
					_min_city_x = _str_city_tiles[0][0];	_max_city_x = _str_city_tiles[0][0];
					_min_city_y = _str_city_tiles[0][1];	_max_city_y = _str_city_tiles[0][1];
					if _x_reversed = 1 {_min_city_x = game_struct.map_xsize;	_max_city_x = game_struct.map_xsize;};
					if _y_reversed = 1 {_min_city_y = game_struct.map_ysize;	_max_city_y = game_struct.map_ysize;};
					for(var _ii = 0; _ii < _conected_city; _ii++)
						{
							var _ii_city_tile_x = _str_city_tiles[_ii][0];
							var _ii_city_tile_y = _str_city_tiles[_ii][1];
							if _x_reversed = 1 
								{
									if _ii_city_tile_x < game_struct.map_xsize/2	{_ii_city_tile_x += game_struct.map_xsize;};
								}
							if _y_reversed = 1 
								{
									if _ii_city_tile_y < game_struct.map_ysize/2	{_ii_city_tile_y += game_struct.map_ysize;};
								}
							if _ii_city_tile_x < _min_city_x {_min_city_x = _ii_city_tile_x};
							if _ii_city_tile_x > _max_city_x {_max_city_x = _ii_city_tile_x};
							
							if _ii_city_tile_y < _min_city_y {_min_city_y = _ii_city_tile_y};
							if _ii_city_tile_y > _max_city_y {_max_city_y = _ii_city_tile_y};
						}
				}
			//calculating city span in tiles
			var _x_span = undefined;	var _y_span = undefined;
			if _min_city_x != undefined
				{
					_x_span = _max_city_x - _min_city_x;
					_y_span = _max_city_y - _min_city_y;
					_x_span++;
					_y_span++;
				}
			var _top_buton_sum = 10; //magic number of top button line sum in game_struct.button_size
			var _right_buton_sum = 4; //magic number of top button line sum in game_struct.button_size
			var _selected_tile_shift = 2;//magic number to shif menu for selected tile by _right_buton_sum
			var _total_x_bck =	_top_buton_sum; var _total_y_bck =	1;
			if _total_x_bck < 2*_x_span {_total_x_bck = 2*_x_span;};
			_total_y_bck += 2*_y_span;
			
			var _draw_city_scale = 0.5;
			var _max_menu_size_x = floor((wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size)/game_struct.button_size)-2;
			var _max_menu_size_y = floor(wgh/game_struct.button_size)-2;
			_total_x_bck = _max_menu_size_x;
			_total_y_bck = _max_menu_size_y;
			
			//adapting city map scale
			while(	_x_span / _draw_city_scale > _max_menu_size_x - _selected_tile_shift * _right_buton_sum)	{_draw_city_scale *=2};
			while(	_y_span / _draw_city_scale > _max_menu_size_y-1)	{_draw_city_scale *=2};
			
			
			xxx = game_struct.button_size;
			yyy = game_struct.button_size;
			
			xref = 0;
			yref = 0;
			//pos
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,_total_x_bck*game_struct.button_size);//x2
			ds_list_add(clickable_list,_total_y_bck*game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_adaptive_background_0");//picture
			ds_list_add(clickable_list,"");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"");	//execution on right click
			
			//check if surface exist or is to be drawn again
			var _city_surface_is_corect = 0;
			var _expected_surface_width = _x_span*game_struct.button_size/_draw_city_scale;
			var _expected_surface_height = _y_span*game_struct.button_size/_draw_city_scale;
			if surface_exists(city_surface)
				{
					if	(surface_get_width(city_surface) = _expected_surface_width &&
						surface_get_height(city_surface) = _expected_surface_height)	{_city_surface_is_corect = 1;}
					else surface_free(city_surface);
				}
			if !surface_exists(city_surface)	
				{
					city_surface = surface_create(_expected_surface_width,_expected_surface_height);
					ds_list_destroy(city_map_list);
					city_map_list = ds_list_create();
				};
			
			if _city_surface_is_corect = 0
				{
					//creating list to draw
					this_city_xy_reference = _str_city_tiles;
					
					var _resources_total = array_create(0);
					_resources_total = fill_resource_array(_resources_total);
					var _city_total = array_create(0);
					_city_total = fill_city_total_array(_city_total);
					var _fortyfication_total = array_create(0);
					_fortyfication_total = fill_city_total_array(_fortyfication_total);
					var _utylites_total = array_create(0);
					_utylites_total = fill_city_utylites_array(_utylites_total);
					regenerate_drawing_arrays();
					for(var _ii = 0; _ii < _conected_city; _ii++)
						{
							var _ii_city_tile_x = _str_city_tiles[_ii][0];
							var _ii_city_tile_y = _str_city_tiles[_ii][1];
							var _x_place_on_screen = _ii_city_tile_x;
							var _y_place_on_screen = _ii_city_tile_y;
							if _x_reversed = 1 
								{
									if _x_place_on_screen < game_struct.map_xsize/2	{_x_place_on_screen += game_struct.map_xsize;};
								}
							if _y_reversed = 1 
								{
									if _y_place_on_screen < game_struct.map_ysize/2	{_y_place_on_screen += game_struct.map_ysize;};
								}
						
							_x_place_on_screen -= _min_city_x;
							_y_place_on_screen -= _min_city_y;
							_x_place_on_screen /= _draw_city_scale;
							_y_place_on_screen /= _draw_city_scale;
							_x_place_on_screen *= game_struct.button_size;
							_y_place_on_screen *= game_struct.button_size;
							//button control on city minimap
							var _temp_array_to_push = [_ii_city_tile_x,_ii_city_tile_y,0,""];
							array_push(city_menu_xy_list,_temp_array_to_push);
						
							this_city_xy_reference = adaptig_city_xy_reference(this_city_xy_reference,_ii_city_tile_x,_ii_city_tile_y,_x_place_on_screen,_y_place_on_screen);
						
							//fliping values to reuse drawing code
							xxx1 = _ii_city_tile_x;
							yyy1 = _ii_city_tile_y;
							xref = _x_place_on_screen;
							yref = _y_place_on_screen;
							
							grab_rivers_for_drawing(operational_array,xxx1,yyy1);
							grab_roads_for_drawing(operational_array,xxx1,yyy1);
							
							_resources_total = grab_city_data_resources(operational_array,xxx1,yyy1,_resources_total);
					
							_city_total = grab_city_data_homes(operational_array,xxx1,yyy1,_city_total);
					
							_fortyfication_total = grab_city_data_fortyfication(operational_array,xxx1,yyy1,_fortyfication_total);
					
							_utylites_total = grab_city_data_utylities(operational_array,xxx1,yyy1,_utylites_total);
							
							//place city tile
							ds_list_add(city_map_list,xref);
							ds_list_add(city_map_list,yref);
							ds_list_add(city_map_list,"city_marker_in_city_submenu");
							
							var _citi_text = "city_text_list";
							ds_list_add(city_text_list,xref);
							ds_list_add(city_text_list,yref);
							ds_list_add(city_text_list,_citi_text);
						}
					//this_city_xy_reference is array with all info for drawing
					this_city_resources = _resources_total;
					this_city_homes = _city_total;
					this_city_fortyfication = _fortyfication_total;
					
					_utylites_total = _cleanup_array_utylites(_utylites_total);
					this_city_utylites = _utylites_total;
				
				
					//administration
					this_city_administration = grab_this_city_administration(this_city_xy_reference);
					this_city_administration = exe_this_city_asigments(this_city_administration);
					//drawing
					draw_city_for_egzamine_city(_draw_city_scale);
				}
			//drawing_surface of city minmap
			if _city_surface_is_corect = 1	&& this_city_admin_set = 0
				{
				
					this_city_consumption_production = [];
					
					this_city_consumption_production = exe_calculate_this_city_consumption(this_city_xy_reference);
					exe_calculate_this_city_production(this_city_xy_reference,this_city_administration,this_city_consumption_production);
					
					this_city_consumption_production = exe_kill_duplicates_in_single_production_cells(this_city_consumption_production);
					
					this_city_cons_prod_short = [];
					this_city_cons_prod_short = exe_simplyfy_tile_info(this_city_consumption_production);
					
		//show_debug_message("this_city_xy_reference : " + string(this_city_xy_reference));
					this_city_admin_set = 1;
				}
			//drawing_surface of city minmap
			if _city_surface_is_corect = 1
				{
					xref = 0;
					yref = 1;
					var _city_minimap_x = xxx	+	xref*game_struct.button_size;
					var _city_minimap_y = yyy	+	yref*game_struct.button_size;
					
					ds_list_add(clickable_list,_city_minimap_x);//x1
					ds_list_add(clickable_list,_city_minimap_y);//y1
					ds_list_add(clickable_list,_city_minimap_x	+ _x_span*game_struct.button_size);//x2
					ds_list_add(clickable_list,_city_minimap_y	+ _y_span*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"");//txt
					ds_list_add(clickable_list,"_city_surface");//picture
					ds_list_add(clickable_list,"");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"");	//execution on click	
					ds_list_add(clickable_list,"");	//execution on right click
				}
			//city tile as buttons
			if _city_surface_is_corect = 1
				{
					xref = 0;
					yref = 1;
					var _city_minimap_x = xxx	+	xref*game_struct.button_size;
					var _city_minimap_y = yyy	+	yref*game_struct.button_size;
					for(var _ii = 0; _ii < array_length(this_city_xy_reference); _ii++)
						{
							var _city_tile_array = this_city_xy_reference[_ii];
							var _on_off = 0;
							var _gameboard_x = _city_tile_array[0];
							var _gameboard_y = _city_tile_array[1];
							
							var _check_on_off_x = city_menu_xy_list[_ii][0];
							var _check_on_off_y = city_menu_xy_list[_ii][1];
							var _check_on_off_value = city_menu_xy_list[_ii][2];
							var _check_on_off_text = city_menu_xy_list[_ii][3];
							var _2pic = "";
							if (is_string(_check_on_off_text)	&& _check_on_off_text != "") {	_2pic =string(_check_on_off_text); 	};
							_check_on_off_text = string_replace_all(_check_on_off_text,"_","\n");
							_check_on_off_text = string_replace_all(_check_on_off_text," "," :\n");
									
							if (_gameboard_x = _check_on_off_x && _gameboard_y = _check_on_off_y)
								{	_on_off = _check_on_off_value;};
							
							if _on_off = 0 {	var _pic = "city_marker_in_city_submenu";	};
							if _on_off > 0 {	var _pic = "city_marker_in_city_submenu_selected";	};
							
							var _draw_x = _city_tile_array[2];
							var _draw_y = _city_tile_array[3];
							
							ds_list_add(clickable_list,_city_minimap_x + _draw_x);//x1
							ds_list_add(clickable_list,_city_minimap_y + _draw_y);//y1
							ds_list_add(clickable_list,_city_minimap_x + _draw_x + game_struct.button_size/_draw_city_scale);//x2
							ds_list_add(clickable_list,_city_minimap_y + _draw_y + game_struct.button_size/_draw_city_scale);//y2	
							ds_list_add(clickable_list,string(_check_on_off_text));//txt
							ds_list_add(clickable_list,_pic);//picture
							ds_list_add(clickable_list,_ii);//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"exe_switch_city_menu_xy_list");	//execution on click	
							ds_list_add(clickable_list,"");	//execution on right click
							
							if (is_string(_2pic) && _2pic != "")
								{
									
									if string_starts_with(_2pic,"utylity_")
										{
											var _dele_start = string_pos(" ",_2pic);
											_2pic = string_delete(_2pic,_dele_start,2);
										}
									else
										{
											_2pic = string_replace_all(_2pic," ", "_");
										}	
									
									ds_list_add(clickable_list,_city_minimap_x + _draw_x);//x1
									ds_list_add(clickable_list,_city_minimap_y + _draw_y);//y1
									ds_list_add(clickable_list,_city_minimap_x + _draw_x + game_struct.button_size/_draw_city_scale);//x2
									ds_list_add(clickable_list,_city_minimap_y + _draw_y + game_struct.button_size/_draw_city_scale);//y2	
									ds_list_add(clickable_list,string(_check_on_off_text));//txt
									ds_list_add(clickable_list,_2pic);//picture
									ds_list_add(clickable_list,_ii);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_switch_city_menu_xy_list");	//execution on click	
									ds_list_add(clickable_list,"");	//execution on right click
									
								}
						}
				}
				
			xref = 0;
			yref = 0;
			//pos
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"city");//txt
			ds_list_add(clickable_list,"_128x64_background");//picture
			ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref += 2;
			//pos
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"x min: " + string(_min_city_x)	+ " | x max : " + string(_max_city_x) + "\n y min: " + string(_min_city_y)	+ " | y max : " + string(_max_city_y)	);//txt
			ds_list_add(clickable_list,"_256x64_background");//picture
			ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref += 4;
			//pos
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"x span :" + string(_x_span)	+ "\n y span : " + string(_y_span)	) ;//txt
			ds_list_add(clickable_list,"_128x64_background");//picture
			ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref += 2;
			//pos
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,"scale : " + string(_draw_city_scale)	+ "\n max menu x: " + string(_max_menu_size_x) + "\n max menu y: " + string(_max_menu_size_y) 	);//txt
			ds_list_add(clickable_list,"_128x64_background");//picture
			ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref += 2;
			
			
			xref = _max_menu_size_x -_right_buton_sum;
			yref = 0;
		//resources
			var _resources_exist = 0;
			for(var _ii = 0; _ii < array_length(this_city_resources); _ii++)
				{
					var _this_array = this_city_resources[_ii];
					if array_length(_this_array) > 1	{_resources_exist=1};
					if _resources_exist = 1 {break;};
				}
			if _resources_exist = 0
				{
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"no resources here");//txt
					ds_list_add(clickable_list,"_128x32_background");//picture
					ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					yref +=0.5;
				}
			else
				{
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"resources");//txt
					ds_list_add(clickable_list,"_128x32_background");//picture
					ds_list_add(clickable_list,"resources");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"exe_switch_city_menu_option");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					yref +=0.5;
					
					var _show_resources_list = 0;
					for(var _ii = 0; _ii < array_length(city_menu_option); _ii++)
						{
							var _this_name = city_menu_option[_ii][0];
							if string(_this_name) = "resources"	{_show_resources_list = city_menu_option[_ii][1];};
						}
					if _show_resources_list = 1
						{
							for(var _ii = 0; _ii < array_length(this_city_resources); _ii++)
								{
									var _resource_here = this_city_resources[_ii];
									if array_length(_resource_here) > 1
										{
											var _resource_here_total = 0;
											var _resource_name = _resource_here[0];
											for(var _kk = 1; _kk < array_length(_resource_here); _kk++)
												{
													_resource_here_total += _resource_here[_kk];
												}
											var _this_string = string(_resource_here);
											_this_string = string_replace_all(_this_string, "[", "");
											_this_string = string_replace_all(_this_string, "]", "");
									
											var _second_string = " total : " + string(_resource_here_total);
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
											ds_list_add(clickable_list,string(_this_string));//txt
											ds_list_add(clickable_list,"_256x32_background");//picture
											ds_list_add(clickable_list,_resource_name);//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"exe_search_and_switch_city_menu_option");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
											yref +=0.5;
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
											ds_list_add(clickable_list,string(_second_string));//txt
											ds_list_add(clickable_list,"_256x32_background");//picture
											ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
											yref +=0.5;
										}
								}
						}
				}
		//resources end =====================
		


		//homes
			var _homes_exist = 0; //obiously! its a city!
			for(var _ii = 0; _ii < array_length(this_city_homes); _ii++)
				{
					var _this_array = this_city_homes[_ii];
					if array_length(_this_array) > 1	{_homes_exist=1};
					if _homes_exist = 1 {break;};
				}
			if _homes_exist = 0
				{
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"no homes here");//txt
					ds_list_add(clickable_list,"_128x32_background");//picture
					ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					yref +=0.5;
				}
			else
				{
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"homes");//txt
					ds_list_add(clickable_list,"_128x32_background");//picture
					ds_list_add(clickable_list,"cities");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"exe_switch_city_menu_option");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					yref +=0.5;
					
					var _show_resources_list = 0;
					for(var _ii = 0; _ii < array_length(city_menu_option); _ii++)
						{
							var _this_name = city_menu_option[_ii][0];
							if string(_this_name) = "cities"	{_show_resources_list = city_menu_option[_ii][1];};
						}
					if _show_resources_list = 1
						{
							var _homes_total_for_demographics = 0;
							for(var _ii = 0; _ii < array_length(this_city_homes); _ii++)
								{	
									
									var _resource_here = this_city_homes[_ii];
									if array_length(_resource_here) > 1
										{
											var _resource_here_total = 0;
											var _resource_name = _resource_here[0];
											for(var _kk = 1; _kk < array_length(_resource_here); _kk++)
												{
													_resource_here_total += _resource_here[_kk];
												}
											var _this_string = string(_resource_here);
											_this_string = string_replace_all(_this_string, "[", "");
											_this_string = string_replace_all(_this_string, "]", "");
											
											_homes_total_for_demographics += _resource_here_total;
											var _second_string = " total : " + string(_resource_here_total);
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
											ds_list_add(clickable_list,string(_this_string));//txt
											ds_list_add(clickable_list,"_256x32_background");//picture
											ds_list_add(clickable_list,"city_" + _resource_name);//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"exe_search_and_switch_city_menu_option");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
											yref +=0.5;
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
											ds_list_add(clickable_list,string(_second_string));//txt
											ds_list_add(clickable_list,"_256x32_background");//picture
											ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
											yref +=0.5;
										}
								}
							//demographics at homes
							var _demographic_string = "| ";
							for(var _ii = 0; _ii < array_length(this_city_homes); _ii++)
								{
									var _resource_here = this_city_homes[_ii];
									if array_length(_resource_here) > 1
										{
											var _str_dem_local = _resource_here[0];
											_demographic_string += string(_str_dem_local) + " : ";
											var _resource_here_total = 0;
											for(var _kk = 1; _kk < array_length(_resource_here); _kk++)
												{
													_resource_here_total += _resource_here[_kk];
												}
											var _demo_procent = floor((_resource_here_total/_homes_total_for_demographics)*100);
											_demographic_string += string(_demo_procent) + "% | ";
											
											var _measure_string = _demographic_string;
											while(string_count("\n", _measure_string) > 0 )
												{
													var _cut_here = string_pos("\n", _measure_string);
													_measure_string =  string_delete(_measure_string,1,_cut_here+1);
												}
											if string_width(_measure_string) > 200
												{	_demographic_string += "\n|"	};
										}
								}
							if string_height(_demographic_string) < 32
								{
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,string(_demographic_string));//txt
									ds_list_add(clickable_list,"_256x32_background");//picture
									ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									yref +=0.5;
								}
							else if	string_height(_demographic_string) < 64
								{
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
									ds_list_add(clickable_list,string(_demographic_string));//txt
									ds_list_add(clickable_list,"_256x64_background");//picture
									ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									yref +=1;
								}
							else if	string_height(_demographic_string) < 128
								{
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 2*game_struct.button_size);//y2	
									ds_list_add(clickable_list,string(_demographic_string));//txt
									ds_list_add(clickable_list,"_256x128_background");//picture
									ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									yref +=2;
								}
							else if	string_height(_demographic_string) > 127
								{
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 4*game_struct.button_size);//y2	
									ds_list_add(clickable_list,string(_demographic_string));//txt
									ds_list_add(clickable_list,"_256x256_background");//picture
									ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									yref +=4;
								}
						}
				}
		//homes end =====================
		
			//fortyfication
			var _fortyfication_exist = 0; //fortyfication
			for(var _ii = 0; _ii < array_length(this_city_fortyfication); _ii++)
				{
					var _this_array = this_city_fortyfication[_ii];
					if array_length(_this_array) > 1	{_fortyfication_exist=1};
					if _fortyfication_exist = 1 {break;};
				}
			if _fortyfication_exist = 0
				{
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"no fortyfications here");//txt
					ds_list_add(clickable_list,"_128x32_background");//picture
					ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					yref +=0.5;
				}
			else
				{
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"fortyfications");//txt
					ds_list_add(clickable_list,"_128x32_background");//picture
					ds_list_add(clickable_list,"fortyfications");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"exe_switch_city_menu_option");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					yref +=0.5;
					
					var _show_resources_list = 0;
					for(var _ii = 0; _ii < array_length(city_menu_option); _ii++)
						{
							var _this_name = city_menu_option[_ii][0];
							if string(_this_name) = "fortyfications"	{_show_resources_list = city_menu_option[_ii][1];};
						}
					if _show_resources_list = 1
						{
							for(var _ii = 0; _ii < array_length(this_city_fortyfication); _ii++)
								{	
									
									var _resource_here = this_city_fortyfication[_ii];
									var _resource_name = _resource_here[0];
									if array_length(_resource_here) > 1
										{
											var _this_string = string(_resource_here[0]);
											var _second_string = string(_resource_here);
											_second_string = string_replace_all(_second_string, "]", "");
											_second_string = string_replace_all(_second_string, "[", "");
											_second_string = string_delete(_second_string,1,string_length(_this_string)+3);
											
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
											ds_list_add(clickable_list,string(_this_string));//txt
											ds_list_add(clickable_list,"_256x32_background");//picture
											ds_list_add(clickable_list,"fortyfication_" + _resource_name);//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"exe_search_and_switch_city_menu_option");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
											yref +=0.5;
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
											ds_list_add(clickable_list,string(_second_string));//txt
											ds_list_add(clickable_list,"_256x32_background");//picture
											ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
											yref +=0.5;
										}
								}
						}
				}
		//fortyfication end =====================
		
		
		//utylites
			var _utylites_exist = 0; //utylites
			if array_length(this_city_utylites) > 0	{_utylites_exist = 1};
			if _utylites_exist = 0
				{
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"no utylities");//txt
					ds_list_add(clickable_list,"_128x32_background");//picture
					ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					yref +=0.5;
				}
			else
				{
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"utylities");//txt
					ds_list_add(clickable_list,"_128x32_background");//picture
					ds_list_add(clickable_list,"utylity");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"exe_switch_city_menu_option");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					yref +=0.5;
					
					var _show_resources_list = 0;
					for(var _ii = 0; _ii < array_length(city_menu_option); _ii++)
						{
							var _this_name = city_menu_option[_ii][0];
							if string(_this_name) = "utylity"	{_show_resources_list = city_menu_option[_ii][1];};
						}
					if _show_resources_list = 1
						{
							var _homes_total_for_demographics = 0;
							for(var _ii = 0; _ii < array_length(this_city_utylites); _ii++)
								{	
									
									var _resource_here = this_city_utylites[_ii];
									var _resource_name = _resource_here[0];
									var _this_string = string(_resource_here[0]) + " : ";
									_this_string = string_delete(_this_string,1,string_length("utylity_"));
									var _resource_here_total = 0;
									for(var _kk = 1; _kk < array_length(_resource_here); _kk++)
										{
											_resource_here_total += _resource_here[_kk];
										}
									_this_string += string(_resource_here_total);
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,string(_this_string));//txt
									ds_list_add(clickable_list,"_256x32_background");//picture
									ds_list_add(clickable_list,_resource_name);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_search_and_switch_city_menu_option");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									yref +=0.5;
										
								}
						}
				}
		//utylites end =====================
		
		//consumption production
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
			ds_list_add(clickable_list,"consumption production");//txt
			ds_list_add(clickable_list,"_128x32_background");//picture
			ds_list_add(clickable_list,"cons_prod");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"exe_switch_city_menu_option");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			yref +=0.5;
			var _show_resources_list = 0;
			for(var _ii = 0; _ii < array_length(city_menu_option); _ii++)
				{
					var _this_name = city_menu_option[_ii][0];
					if string(_this_name) = "cons_prod"	{_show_resources_list = city_menu_option[_ii][1];};
				}
			if _show_resources_list = 1		
				{
					for(var _ii = 0; _ii < array_length(this_city_cons_prod_short); _ii++)
						{
							var _resource_here = this_city_cons_prod_short[_ii];
							if array_length(_resource_here) > 1
								{
									var _resource_here_total = 0;
									var _resource_name = _resource_here[0];
									var _total_is_numeric = 0;
									for(var _kk = 1; _kk < array_length(_resource_here); _kk++)
										{
											if is_string(_resource_here[_kk])
												{
													_resource_here_total = _resource_here[_kk];
												}
											else
												{
													_total_is_numeric = 1;
													_resource_here_total += _resource_here[_kk];
												}
										}
									var _this_string = string(_resource_here);
									_this_string = string_replace_all(_this_string, "[", "");
									_this_string = string_replace_all(_this_string, "]", "");
									
									if _total_is_numeric = 1
										{
											var _second_string = " total : " + string(_resource_here_total);
										}
									else
										{
											_this_string = string(_resource_here);
											_this_string = string_replace_all(_this_string, "[", "");
											_this_string = string_replace_all(_this_string, "]", "");
										}
									if string_width(_this_string) < 256
										{
											
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
											ds_list_add(clickable_list,string(_this_string));//txt
											ds_list_add(clickable_list,"_256x32_background");//picture
											ds_list_add(clickable_list,_resource_name);//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"exe_search_and_switch_city_menu_option");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
											yref +=0.5;
										}
									else
										{
											if _total_is_numeric = 1
												{
													_this_string = string_replace(_this_string,",", " : \n");
													ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
													ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
													ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
													ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
													ds_list_add(clickable_list,string(_this_string));//txt
													ds_list_add(clickable_list,"_256x64_background");//picture
													ds_list_add(clickable_list,_resource_name);//txt mouseover rclick in case of "_"
													ds_list_add(clickable_list,"exe_search_and_switch_city_menu_option");	//execution on click	
													ds_list_add(clickable_list,"_");	//execution on right click
													yref +=1;
												}
											else
												{
													_this_string = string_replace_all(_this_string, "_", " ");
													_this_string = string_replace_all(_this_string, ",", "\n");
													_this_string = string_replace(_this_string, "population", "\n population");
													
													ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
													ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
													ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
													ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 4*game_struct.button_size);//y2	
													ds_list_add(clickable_list,string(_this_string));//txt
													ds_list_add(clickable_list,"_256x256_background");//picture
													ds_list_add(clickable_list,_resource_name);//txt mouseover rclick in case of "_"
													ds_list_add(clickable_list,"exe_search_and_switch_city_menu_option");	//execution on click	
													ds_list_add(clickable_list,"_");	//execution on right click
													yref +=4;
												}
										}
									if _total_is_numeric = 1
										{
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
											ds_list_add(clickable_list,string(_second_string));//txt
											ds_list_add(clickable_list,"_256x32_background");//picture
											ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
											yref +=0.5;
										}
								}
						}
				}
		//consumption production end =====================
		
		//selected tile info
			xref = _max_menu_size_x - _selected_tile_shift *_right_buton_sum;
			yref = 0;
			var _selected_tile_info = 0; //utylites
			var _keep_reference_to_tile = -1;
			for(_ii = 0; _ii < array_length(city_menu_xy_list); _ii++)
				{
					if city_menu_xy_list[_ii][2] = 1
						{
							_selected_tile_info = 1;
							var _city_tile_array = this_city_xy_reference[_ii];
							var _temp_consption_array = this_city_consumption_production[_ii];
							_keep_reference_to_tile = _ii;
						}
				}
			
			if _selected_tile_info = 1
				{
					//yref +=0.5;
					var _text_to_draw = "x : " + string(_city_tile_array[0]);
					_text_to_draw += " | y : " + string(_city_tile_array[1]);
					
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,_text_to_draw);//txt
					ds_list_add(clickable_list,"_256x32_background");//picture
					ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					yref +=0.5;
					
					var _text_to_draw = "x mini : " + string(_city_tile_array[2]);
					_text_to_draw += " | y mini : " + string(_city_tile_array[3]);
					
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,_text_to_draw);//txt
					ds_list_add(clickable_list,"_256x32_background");//picture
					ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					yref +=0.5;
					
					//info general
					if array_length(_city_tile_array) > 4
						{
							var _river_found = [];
							var _road_found = [];
							for(var _ii = 4; _ii < array_length(_city_tile_array); _ii+=2)
								{
									var _text_to_draw = _city_tile_array[_ii];
									var _wait_for_sum = 0;
									if _text_to_draw = "rivers"	
										{
											var _value_found = _city_tile_array[_ii+1];
											array_push(_river_found,_value_found);
											_wait_for_sum = 1;
										}
									if _text_to_draw = "roads"	
										{
											var _value_found = _city_tile_array[_ii+1];
											array_push(_road_found,_value_found);
											_wait_for_sum = 1;
										}
									if (is_string(_text_to_draw)	&&	_wait_for_sum = 0)
										{
											_text_to_draw = string(_city_tile_array[_ii]) +" : " + string(_city_tile_array[_ii+1]);
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
											ds_list_add(clickable_list,_text_to_draw);//txt
											ds_list_add(clickable_list,"_256x64_background");//picture
											ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
											yref +=0.5;	
											//check for luberjack
											if	string_starts_with(string(_city_tile_array[_ii]),"utylity")	&&
												string_ends_with(string(_city_tile_array[_ii]),"lumberjack")
												{
													var _trees_count = 0;
													for(var _ww = 4; _ww < array_length(_city_tile_array); _ww+=2)
														{
															if string(_city_tile_array[_ww]) = "wood"	
																{_trees_count += _city_tile_array[_ww+1];};
															if string(_city_tile_array[_ww]) = "forest"	
																{_trees_count += _city_tile_array[_ww+1];};
														}
													var _wood_forest_text = "avilable trees : " + string(_trees_count);
													ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
													ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
													ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
													ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
													ds_list_add(clickable_list,_wood_forest_text);//txt
													ds_list_add(clickable_list,"");//picture
													ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
													ds_list_add(clickable_list,"");	//execution on click	
													ds_list_add(clickable_list,"_");	//execution on right click
													yref +=0.5;	
												}
											//check for mine & resurces
											if	string_starts_with(string(_city_tile_array[_ii]),"utylity")	&&
												string_ends_with(string(_city_tile_array[_ii]),"mine")
												{
													//find side
													var _mining_side = string(_city_tile_array[_ii]);
													_mining_side = string_delete(_mining_side,1,string_length("utylity_"));
													var _clip_here = string_pos("_",_mining_side);
													_mining_side = string_delete(_mining_side,_clip_here,20);
													
													var _side_reference = -1;
													for(var _ww = 0; _ww < array_length(sides_array); _ww++)
														{
															if _mining_side == sides_array[_ww][$ "side_name"]
																{	_side_reference = _ww;	};
														}
													if _side_reference > -1
														{
															var _mining_mine_ability = sides_array[_side_reference][$ "mining_mine_ability"];
															for(var _ww = 0; _ww < array_length(_mining_mine_ability); _ww++)
																{
																	var _resource_to_find = _mining_mine_ability[_ww];
																	for(var _bb = 4; _bb < array_length(_city_tile_array); _bb+=2)
																		{
																			if string(_city_tile_array[_bb]) = _resource_to_find	
																				{
																					var _pic_name = string(_resource_to_find) + "_5";
																					var _resource_value = string(_city_tile_array[_bb+1]);
																					
																					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
																					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
																					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
																					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
																					ds_list_add(clickable_list,"");//txt
																					ds_list_add(clickable_list,_pic_name);//picture
																					ds_list_add(clickable_list,_resource_to_find + " : " + _resource_value);//txt mouseover rclick in case of "_"
																					ds_list_add(clickable_list,"");	//execution on click	
																					ds_list_add(clickable_list,"_");	//execution on right click
																					xref +=0.5;	
																					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
																					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
																					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
																					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
																					ds_list_add(clickable_list,_resource_value);//txt
																					ds_list_add(clickable_list,"");//picture
																					ds_list_add(clickable_list,_resource_to_find + " : " + _resource_value);//txt mouseover rclick in case of "_"
																					ds_list_add(clickable_list,"");	//execution on click	
																					ds_list_add(clickable_list,"_");	//execution on right click
																					xref +=0.5;	
																					
																					if xref > _max_menu_size_x-0.5	{xref = _max_menu_size_x -_right_buton_sum; yref+=0.5;};
																				}
																		}
																	
																}
														}
													yref +=0.5;	
													xref = _max_menu_size_x - _selected_tile_shift * _right_buton_sum;
												}
											
											if string_starts_with(string(_city_tile_array[_ii]),"utylity")
												{
													var _number_of = 0;
													var _utylity_of = _city_tile_array[_ii];
													var _city_of = string_delete(_utylity_of,1,string_length("utylity_"));
													var _clip_here = string_pos("_", _city_of);
													_city_of = string_delete(_city_of,_clip_here,20);
													//searchin who works here
													if _keep_reference_to_tile > -1
														{
															var _admin_tile = this_city_administration[_keep_reference_to_tile][4];
															for(var _pp = 1; _pp < array_length(_admin_tile); _pp+=2)
																{
																	var _whois = _admin_tile[_pp];
																	if string(_utylity_of) = string(_whois)
																		{
																			_number_of = _admin_tile[_pp+1];
																		}
																}
														}
													var _pass_thiss = [_keep_reference_to_tile,_utylity_of,-1];
													ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
													ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
													ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
													ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
													ds_list_add(clickable_list,"");//txt
													ds_list_add(clickable_list,"_32x32_negative");//picture
													ds_list_add(clickable_list,_pass_thiss);//txt mouseover rclick in case of "_"
													ds_list_add(clickable_list,"exe_send_pop_to_work_in");	//execution on click	
													ds_list_add(clickable_list,"_");	//execution on right click
													xref +=0.5;	
													if xref > _max_menu_size_x-0.5	{xref = _max_menu_size_x -_selected_tile_shift * _right_buton_sum; yref+=0.5;};
													
													if _number_of > 0
														{
															_city_of = "_32x32_"+string(_city_of)+"_ico";
															for(var _kk = 0; _kk < _number_of; _kk++)
																{
																	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
																	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
																	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
																	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
																	ds_list_add(clickable_list,"");//txt
																	ds_list_add(clickable_list,_city_of);//picture
																	ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
																	ds_list_add(clickable_list,"");	//execution on click	
																	ds_list_add(clickable_list,"_");	//execution on right click
																	xref +=0.5;
																	if xref > _max_menu_size_x-0.5	{xref = _max_menu_size_x - _selected_tile_shift *_right_buton_sum; yref+=0.5;};

																}
														}
													var _pass_thiss = [_keep_reference_to_tile,_utylity_of,1];
													ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
													ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
													ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
													ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
													ds_list_add(clickable_list,"");//txt
													ds_list_add(clickable_list,"_32x32_positive");//picture
													ds_list_add(clickable_list,_pass_thiss);//txt mouseover rclick in case of "_"
													ds_list_add(clickable_list,"exe_send_pop_to_work_in");	//execution on click	
													ds_list_add(clickable_list,"_");	//execution on right click
													xref +=0.5;	
													if xref > _max_menu_size_x-0.5	{xref = _max_menu_size_x - _selected_tile_shift * _right_buton_sum; yref+=0.5;};
													
													yref +=0.5;	
													xref = _max_menu_size_x -_selected_tile_shift * _right_buton_sum;
												}
											if string_starts_with(string(_city_tile_array[_ii]),"city")
												{
													var _number_of = 0;
													var _city_of = _city_tile_array[_ii];
													_city_of = string_delete(_city_of,1,string_length("city_"));
													//searchin who stay at home
													if _keep_reference_to_tile > -1
														{
															var _admin_tile = this_city_administration[_keep_reference_to_tile][4];
															for(var _pp = 1; _pp < array_length(_admin_tile); _pp+=2)
																{
																	var _whois = _admin_tile[_pp];
																	if string_starts_with(_whois,"stayhome")
																		{
																			if string_ends_with(_whois,_city_of)
																				{
																					_number_of = _admin_tile[_pp+1];
																				}
																		}
																}
														}
													if _number_of > 0
														{
															_city_of = "_32x32_"+string(_city_of)+"_ico";
															for(var _kk = 0; _kk < _number_of; _kk++)
																{
																	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
																	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
																	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
																	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
																	ds_list_add(clickable_list,"");//txt
																	ds_list_add(clickable_list,_city_of);//picture
																	ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
																	ds_list_add(clickable_list,"");	//execution on click	
																	ds_list_add(clickable_list,"_");	//execution on right click
																	xref +=0.5;
																	if xref > _max_menu_size_x-0.5	{xref = _max_menu_size_x - _selected_tile_shift * _right_buton_sum; yref+=0.5;};
																}
														}
													yref +=0.5;	
													xref = _max_menu_size_x - _selected_tile_shift * _right_buton_sum;
												}
										 }
											
								}
							//sum road and rivers
							if array_length(_river_found) > 0
								{
									var _text_to_draw = string(_river_found);
									_text_to_draw = string_replace_all(_text_to_draw,"\"","");
									_text_to_draw = string_replace_all(_text_to_draw,"[","");
									_text_to_draw = string_replace_all(_text_to_draw,"]","");
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"rivers : " + string(_text_to_draw));//txt
									ds_list_add(clickable_list,"_256x32_background");//picture
									ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									yref +=0.5;	
								}
							if array_length(_road_found) > 0
								{
									var _text_to_draw = string(_road_found);
									_text_to_draw = string_replace_all(_text_to_draw,"\"","");
									_text_to_draw = string_replace_all(_text_to_draw,"[","");
									_text_to_draw = string_replace_all(_text_to_draw,"]","");
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"roads : " + string(_text_to_draw));//txt
									ds_list_add(clickable_list,"_256x32_background");//picture
									ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									yref +=0.5;	
								}
						}
					//info consumption production
					if array_length(_temp_consption_array) > 4
						{
							yref +=0.5;
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"consumption & production");//txt
							ds_list_add(clickable_list,"_256x32_background");//picture
							ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							yref +=0.5;
							for(var _ii = 4; _ii < array_length(_temp_consption_array); _ii++)
								{
									var _text_to_draw = _temp_consption_array[_ii];
									if is_string(_text_to_draw)	
										{	
											_text_to_draw = string(_temp_consption_array[_ii]) +" : " + string(_temp_consption_array[_ii+1]);
											var _pic_to_draw = "_256x32_background";
											var _yref_to_add = 0.5;
											if string_width(_text_to_draw) > 256
												{
													_text_to_draw = string(_temp_consption_array[_ii]) +" :\n" + string(_temp_consption_array[_ii+1]);
													var _pic_to_draw = "_256x64_background";
													var _yref_to_add = 1;
													if string_width(_text_to_draw) > 256
														{
															var _transform_pos = string_pos("_", _text_to_draw);
															var _transform_text = string_delete(_text_to_draw,1,_transform_pos);
															_transform_pos += string_pos("_", _transform_text);
															_text_to_draw = string_insert("\n",_text_to_draw,_transform_pos);
															var _pic_to_draw = "_256x128_background";
															var _yref_to_add = 2;
														}
												}
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
											ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
											ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ _yref_to_add*game_struct.button_size);//y2	
											ds_list_add(clickable_list,_text_to_draw);//txt
											ds_list_add(clickable_list,_pic_to_draw);//picture
											ds_list_add(clickable_list,"lclick");//txt mouseover rclick in case of "_"
											ds_list_add(clickable_list,"");	//execution on click	
											ds_list_add(clickable_list,"_");	//execution on right click
											_ii++;	
											yref +=_yref_to_add;	
										 }
											
								}
						}
						
				}
		//selected tile info end =====================		
		
		//rclick restriction to see description in menu without closing
			restricted_x1 = xxx;
			restricted_x2 = xxx + _max_menu_size_x*game_struct.button_size;
			restricted_y1 = yyy;
			restricted_y2 = yyy + _max_menu_size_y*game_struct.button_size;

		}
}