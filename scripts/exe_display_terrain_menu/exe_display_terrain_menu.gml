function exe_display_terrain_menu()//general first click
{
	if display_terrain_menu = 1
		{
			screen_move_by_mouse = 0;
			
			
			var _str_terrain = operational_array[display_terrain_menu_x][@ display_terrain_menu_y][$ "tile_terrain"];
			var _str_terrain_pic = operational_array[display_terrain_menu_x][@ display_terrain_menu_y][$ "tile_terrain"][@ 0];
			_str_terrain = string_replace_all(_str_terrain,"[","");
			_str_terrain = string_replace_all(_str_terrain,"]","");
			_str_terrain = string_replace_all(_str_terrain," ","");
			_str_terrain = "terrain : \n" + string(_str_terrain);
			
			//adapt background size
			var _total_x_bck =	6; var _total_y_bck =	1;
	
			//if unknown
			if !string_starts_with(_str_terrain_pic,"unknown")
				{
					var _str_props = operational_array[display_terrain_menu_x][@ display_terrain_menu_y][$ "tile_props"];
					var _props_num = array_length(_str_props);
					//adapt background size
					if _props_num = 0 {_total_y_bck +=0.5}
					else	{
								_total_y_bck++;
								var _tempx = 2 + _props_num * 2;
								if _tempx > _total_x_bck {_total_x_bck = _tempx };
							};
			
					var _str_resources = operational_array[display_terrain_menu_x][@ display_terrain_menu_y][$ "tile_resources"];
					var _resources_num = array_length(_str_resources);
					//adapt background size
					if _resources_num = 0 {_total_y_bck +=0.5}
					else	{
								_total_y_bck++;
								var _tempx = 2 + _resources_num * 2;
								if _tempx > _total_x_bck {_total_x_bck = _tempx };
							};
			
					var _str_control = operational_array[display_terrain_menu_x][@ display_terrain_menu_y][$ "control"];
					var _control_num = array_length(_str_control);
					//adapt background size
					if _control_num = 0 {_total_y_bck +=0.5}
					else	{
								_total_y_bck++;
								var _tempx = 2 + _control_num * 2;
								if _tempx > _total_x_bck {_total_x_bck = _tempx };
							};
			
					var _str_facility = operational_array[display_terrain_menu_x][@ display_terrain_menu_y][$ "facility"];
					var _facility_num = array_length(_str_facility);
					var _city_detected = 0;
					for (var _ii = 0; _ii < _facility_num; _ii++)
						{
							var _array_string = _str_facility[@ _ii];
							if string_starts_with(_array_string,"city_")	{	_city_detected = 1;	break;};
							if string_starts_with(_array_string,"fortyfication_")	{	_city_detected = 1;	break;};
							if string_starts_with(_array_string,"utylity_")	{	_city_detected = 1;	break;};
						}
					var _str_conected_city = operational_array[display_terrain_menu_x][display_terrain_menu_y][$ "conected_cities"];
					var _conected_city = array_length(_str_conected_city);
					if _conected_city > 0 {_city_detected = 1; city_conected = _str_conected_city;}
					else {city_conected = [];}
				

					//adapt background size
					if _facility_num = 0 {_total_y_bck +=0.5}
					else	{
								_total_y_bck++;
								var _tempx = 2 + _facility_num * 2;
								if _tempx > _total_x_bck {_total_x_bck = _tempx };
							};
			
					var _str_river = operational_array[display_terrain_menu_x][@ display_terrain_menu_y][$ "river"];
					var _river_num = array_length(_str_river);
					//adapt background size
					if _river_num = 0 {_total_y_bck +=0.5}
					else	{
								_total_y_bck++;
								var _tempx = 4;
								if _tempx > _total_x_bck {_total_x_bck = _tempx };
							};
			
					var _str_road = operational_array[display_terrain_menu_x][@ display_terrain_menu_y][$ "road"];
					var _road_num = array_length(_str_road);
					//adapt background size
					if _road_num = 0 {_total_y_bck +=0.5}
					else	{
								_total_y_bck++;
								var _tempx = 4;
								if _tempx > _total_x_bck {_total_x_bck = _tempx };
							};
			
					var _str_units = operational_array[display_terrain_menu_x][@ display_terrain_menu_y][$ "units"];
					var _units_num = array_length(_str_units);
					//adapt background size
					if _units_num = 0 {_total_y_bck +=0.5}
					else	{
								_total_y_bck++;
								var _tempx = 2 + _units_num * 2;
								if _tempx > _total_x_bck {_total_x_bck = _tempx };
							};
							
					var _str_fow = operational_array[display_terrain_menu_x][@ display_terrain_menu_y][$ "fog_of_war"];
					_total_y_bck++;
				}
			
					
			var _str_position =	"x : " + string(display_terrain_menu_x) + " \n y : " + string (display_terrain_menu_y);
			var _str_bck = "bckx : " + string(_total_x_bck) + " \n bcky : " + string (_total_y_bck);
			
			//repos window
			var _left_border_x = wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size;
			if display_terrain_menu_xpos + (_total_x_bck+ 0.5)*game_struct.button_size> _left_border_x
				{ display_terrain_menu_xpos = _left_border_x - (_total_x_bck+ 0.5)*game_struct.button_size;};
			if display_terrain_menu_ypos + (_total_y_bck+ 0.5)*game_struct.button_size > wgh
				{ display_terrain_menu_ypos = wgh - (_total_y_bck+ 0.5)*game_struct.button_size;};
				
			if display_terrain_menu_xpos - (0.5)*game_struct.button_size < 0
				{ display_terrain_menu_xpos += (0.5)*game_struct.button_size};
			if display_terrain_menu_ypos - (0.5)*game_struct.button_size < 0
				{ display_terrain_menu_ypos += (0.5)*game_struct.button_size};
				
			xxx = display_terrain_menu_xpos;
			yyy = display_terrain_menu_ypos;
			
			xref = 0;
			yref = 0;
			
			
			
			//vackground
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,_total_x_bck*game_struct.button_size);//x2
			ds_list_add(clickable_list,_total_y_bck*game_struct.button_size);//y2	
			ds_list_add(clickable_list,"");//txt
			ds_list_add(clickable_list,"_adaptive_background_0");//picture
			ds_list_add(clickable_list,"");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"");	//execution on right click
			
			//pos
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,_str_position);//txt
			ds_list_add(clickable_list,"_128x64_background");//picture
			ds_list_add(clickable_list,"tile position on map");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			
			xref += 2;
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
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
			ds_list_add(clickable_list,_str_bck);//txt
			ds_list_add(clickable_list,"_128x64_background");//picture
			ds_list_add(clickable_list,"backgroudn size of this menu");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			yref++;
			
			if !string_starts_with(_str_terrain_pic,"unknown")
				{
					//props
					xref = 0;
					if _props_num = 0
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"no props here");//txt
							ds_list_add(clickable_list,"_256x32_background");//picture
							ds_list_add(clickable_list,"information about props");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							yref += 0.5;
						}
					else
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
							ds_list_add(clickable_list,"props number\n" + string(_props_num)	);//txt
							ds_list_add(clickable_list,"_128x64_background");//picture
							ds_list_add(clickable_list,"information about props");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							xref += 2;
							for(var _ii = 0; _ii < _props_num; _ii++)
								{
									var _array_string = _str_props[@ _ii];
									var _pic_string = _array_string;
									_array_string = string_replace(_array_string,"_","\n");
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
									ds_list_add(clickable_list,_array_string);//txt
									ds_list_add(clickable_list,_pic_string);//picture
									ds_list_add(clickable_list,"information about props");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									xref +=2;
								}
							yref++;
						}
				
					//resources
					xref = 0;
					if _resources_num = 0
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"no resources here");//txt
							ds_list_add(clickable_list,"_256x32_background");//picture
							ds_list_add(clickable_list,"information about resources");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							yref += 0.5;
						}
					else
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
							ds_list_add(clickable_list,"resources \n" + string(_resources_num)	);//txt
							ds_list_add(clickable_list,"_128x64_background");//picture
							ds_list_add(clickable_list,"information about resources");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							xref += 2;
							for(var _ii = 0; _ii < _resources_num; _ii++)
								{
									var _array_string = _str_resources[@ _ii];
									var _pic_string = _array_string;
									_array_string = string_replace(_array_string,"_","\n");
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
									ds_list_add(clickable_list,_array_string);//txt
									ds_list_add(clickable_list,_pic_string);//picture
									ds_list_add(clickable_list,"information about resources");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									xref +=2;
								}
							yref++;
						}
			
					//control
					xref = 0;
					if _control_num = 0
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"no control here");//txt
							ds_list_add(clickable_list,"_256x32_background");//picture
							ds_list_add(clickable_list,"information about control");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							yref += 0.5;
						}
					else
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
							ds_list_add(clickable_list,"control \n" + string(_control_num)	);//txt
							ds_list_add(clickable_list,"_128x64_background");//picture
							ds_list_add(clickable_list,"information about control");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							xref += 2;
							for(var _ii = 0; _ii < _control_num; _ii++)
								{
									var _array_string = _str_control[@ _ii];
									var _pic_string = _array_string;
									_array_string = string_replace(_array_string,"_","\n");
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
									ds_list_add(clickable_list,_array_string);//txt
									ds_list_add(clickable_list,_pic_string);//picture
									ds_list_add(clickable_list,"information about control");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									xref +=2;
								}
							yref++;
						}
				
					//facility
					xref = 0;
					if _facility_num = 0
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"no facility here");//txt
							ds_list_add(clickable_list,"_256x32_background");//picture
							ds_list_add(clickable_list,"information about facility");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							yref += 0.5;
						}
					else if _city_detected = 0
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
							ds_list_add(clickable_list,"facility \n" + string(_facility_num)	);//txt
							ds_list_add(clickable_list,"_128x64_background");//picture
							ds_list_add(clickable_list,"information about facility");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							xref += 2;
							for(var _ii = 0; _ii < _facility_num; _ii++)
								{
									var _array_string = _str_facility[@ _ii];
									var _pic_string = _array_string;
									_array_string = string_replace(_array_string,"_","\n");
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
									ds_list_add(clickable_list,_array_string);//txt
									ds_list_add(clickable_list,_pic_string);//picture
									ds_list_add(clickable_list,"information about facility");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									xref +=2;
								}
							yref++;
						}
					else if _city_detected = 1
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
							ds_list_add(clickable_list,"facility \n" + string(_facility_num)	);//txt
							ds_list_add(clickable_list,"_128x64_background");//picture
							ds_list_add(clickable_list,"information about city");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							xref += 2;
					
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
							ds_list_add(clickable_list,"egzamine city ");//txt
							ds_list_add(clickable_list,"_128x64_background");//picture
							ds_list_add(clickable_list,"left click to \n enter city menu");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"exe_display_terrain_menu_city");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							xref += 2;

							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
							ds_list_add(clickable_list,"conected : \n " + string(_conected_city));//txt
							ds_list_add(clickable_list,"_128x64_background");//picture
							ds_list_add(clickable_list,"information about city");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click

							yref++;
						}
			
					//river
					xref = 0;
					if _river_num = 0
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"no river here");//txt
							ds_list_add(clickable_list,"_256x32_background");//picture
							ds_list_add(clickable_list,"information about river");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							yref += 0.5;
						}
					else
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
							ds_list_add(clickable_list,"rivers \n" + string(_river_num)	);//txt
							ds_list_add(clickable_list,"_128x64_background");//picture
							ds_list_add(clickable_list,"information about river");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							xref += 2;
							var _array_river_num = "rivers : \n";
							for(var _ii = 0; _ii < _river_num; _ii++)
								{
									var _array_string = _str_river[@ _ii];
									_array_string = string_delete(_array_string,1,string_length("rivers_"));
									_array_river_num += string(_array_string) + ",";
								}
							for(var _ii = 0; _ii < _river_num; _ii++)
								{
									var _array_string = _str_river[@ _ii];
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_array_string);//picture
									ds_list_add(clickable_list,"information about river");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
							
								}
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
							ds_list_add(clickable_list,_array_river_num);//txt
							ds_list_add(clickable_list,"");//picture
							ds_list_add(clickable_list,"information about river");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click	
							yref++;
						}
				
					//road
					xref = 0;
					if _road_num = 0
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"no road here");//txt
							ds_list_add(clickable_list,"_256x32_background");//picture
							ds_list_add(clickable_list,"information about road");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							yref += 0.5;
						}
					else
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
							ds_list_add(clickable_list,"roads \n" + string(_road_num)	);//txt
							ds_list_add(clickable_list,"_128x64_background");//picture
							ds_list_add(clickable_list,"information about road");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							xref += 2;
							var _array_road_num = "road : \n";
							for(var _ii = 0; _ii < _road_num; _ii++)
								{
									var _array_string = _str_road[@ _ii];
									_array_string = string_delete(_array_string,1,string_length("roads_"));
									_array_road_num += string(_array_string) + ",";
								}
							for(var _ii = 0; _ii < _road_num; _ii++)
								{
									var _array_string = _str_road[@ _ii];
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_array_string);//picture
									ds_list_add(clickable_list,"information about road");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
							
								}
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
							ds_list_add(clickable_list,_array_road_num);//txt
							ds_list_add(clickable_list,"");//picture
							ds_list_add(clickable_list,"information about road");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click	
							yref++;
						}
					//units
					xref = 0;
					if _units_num = 0
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
							ds_list_add(clickable_list,"no units here");//txt
							ds_list_add(clickable_list,"_256x32_background");//picture
							ds_list_add(clickable_list,"information about road");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							yref += 0.5;
						}
					else
						{
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
							ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
							ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
							ds_list_add(clickable_list,"unit groups \n" + string(_units_num)	);//txt
							ds_list_add(clickable_list,"_128x64_background");//picture
							ds_list_add(clickable_list,"information about units");//txt mouseover rclick in case of "_"
							ds_list_add(clickable_list,"");	//execution on click	
							ds_list_add(clickable_list,"_");	//execution on right click
							xref += 2;
							for(var _ii = 0; _ii < _units_num; _ii++)
								{
									var _array_string = _str_units[_ii];
									var _text_string = string(array_length(_array_string)-1);//first is a header not unit
									var _pic_string2 = "_64x64_";
									//creating title screen
									_array_string = _str_units[_ii][0];
									_text_string += " units of \n";
									for(var _kk = 0; _kk < array_length(_array_string);_kk+=2)
										{
											var _1string = _array_string[_kk];
											if string_starts_with(_1string,"group_control")
												{
													_text_string += _array_string[_kk+1];
													_pic_string2 += _array_string[_kk+1];
												}
										}
									_pic_string2 += "_ico";
									//creating rclick string info
									var _rclick_string = _text_string + "\n";
									_array_string = _str_units[_ii];
									for(var _kk = 1; _kk < array_length(_array_string);_kk++)
										{
											_rclick_string += string(_array_string[_kk][1]) + "\n";
										}
									//creating pic string
									var _pic_string1 = "";
									_array_string = _str_units[_ii][1];
									for(var _kk = 0; _kk < array_length(_array_string);_kk+=2)
										{
											var _unit_string = _array_string[_kk];
											if string_starts_with(_unit_string,"picture")
												{
													_pic_string1 = _array_string[_kk+1];
													break;
												}
										}
									//controler ico
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.01*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.01*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_pic_string1);//picture
									ds_list_add(clickable_list,"");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									xref ++;
									//1st unit pic
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.01*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.01*game_struct.button_size);//y2	
									ds_list_add(clickable_list,"");//txt
									ds_list_add(clickable_list,_pic_string2);//picture
									ds_list_add(clickable_list,"");//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									//text and execution
									xref--;
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
									ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
									ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+game_struct.button_size);//y2	
									ds_list_add(clickable_list,_text_string);//txt
									ds_list_add(clickable_list,"");//picture
									ds_list_add(clickable_list,_rclick_string);//txt mouseover rclick in case of "_"
									ds_list_add(clickable_list,"exe_display_terrain_menu_units");	//execution on click	
									ds_list_add(clickable_list,"_");	//execution on right click
									xref+=2;
								}
							yref++;
						}
				
					//fog of war
					xref = 0;
					var _string_last_turn = game_struct.current_turn - _str_fow[0];
					var _string_detection_value = "detection : " + string(_str_fow[1]) + " | " + string(_str_fow[2]) + " | " + string(_str_fow[3]);
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"tile seen last : " + string(_string_last_turn) + " t. ago;");//txt
					ds_list_add(clickable_list,"_256x32_background");//picture
					ds_list_add(clickable_list,"FOV info");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					yref += 0.5;
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,_string_detection_value);//txt
					ds_list_add(clickable_list,"_256x32_background");//picture
					ds_list_add(clickable_list,"detection value in shown turn : \n ground, overwater, underwater");//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"");	//execution on click	
					ds_list_add(clickable_list,"_");	//execution on right click
					yref += 0.5;
				}
				
			restricted_x1 = display_terrain_menu_xpos;
			restricted_x2 = display_terrain_menu_xpos + _total_x_bck*game_struct.button_size;
			restricted_y1 = display_terrain_menu_ypos;
			restricted_y2 = display_terrain_menu_ypos + _total_y_bck*game_struct.button_size;

		}
}