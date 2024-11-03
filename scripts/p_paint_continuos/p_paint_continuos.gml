function p_paint_continuos(_xx,_yy,_prop_string)
{
	if _prop_string = "river"	{var _choice = "rivers_";};
	if _prop_string = "road"	{var _choice = "roads_";};
	//this value show how much of given prop is legal in given terrain condition
	//var _legal = check_if_prop_is_legal_on_terrain(_xx,_yy,_choice);

	if _prop_string = "river"	{var _id_props_xy = game_board_array[_xx][_yy][$ "river"];};
	if _prop_string = "road"	{var _id_props_xy = game_board_array[_xx][_yy][$ "road"];};
	
	if mapeditor.terrain_paint_sign = -1
		{
			var _values_found = [];
			for(var _ff = 0; _ff < array_length(_id_props_xy); _ff++)
				{
					var _str1 = array_get(_id_props_xy,_ff);	
					if string_starts_with(_str1, _choice)
						{
							var _str2 = string_delete(_str1,1, string_length(_choice)	);
							var _val2 = real(_str2);
							array_push(_values_found,_val2);
							array_delete(_id_props_xy, _ff, 1); 
							_ff--;
							if _ff < 0	{_ff = 0};
						}
				}		
			if array_length(_values_found) > 0
				{
					for(var _ff = 0; _ff < array_length(_values_found); _ff++)
						{
							var _direction = array_get(_values_found,_ff);
							var _oposite_direction = 99;
							var _xx1 = _xx;	var _yy1 = _yy;
							switch(_direction)
								{
									case 0:	_xx1 += 1;				_oposite_direction = 4;	break;
									case 1:	_xx1 += 1;	_yy1 -= 1;	_oposite_direction = 5;	break;
									case 2:				_yy1 -= 1;	_oposite_direction = 6;	break;
									case 3:	_xx1 -= 1;	_yy1 -= 1;	_oposite_direction = 7;	break;
									case 4:	_xx1 -= 1;				_oposite_direction = 0;	break;
									case 5:	_xx1 -= 1;	_yy1 += 1;	_oposite_direction = 1;	break;
									case 6:				_yy1 += 1;	_oposite_direction = 2;	break;
									case 7:	_xx1 += 1;	_yy1 += 1;	_oposite_direction = 3;	break;
								}
							if _xx1 < 0 {_xx1 += game_struct.map_xsize;};
							if _xx1 > game_struct.map_xsize-1	{_xx1 -= game_struct.map_xsize;};
							if _yy1 < 0 {_yy1 += game_struct.map_ysize;};
							if _yy1 > game_struct.map_ysize-1	{_yy1 -= game_struct.map_ysize;};
							if _oposite_direction < 8
								{
									var _id_props_2 = game_board_array[_xx1][_yy1][$ _choice];
									for(var _nn = 0; _nn < array_length(_id_props_2); _nn++)
										{
											var _str1 = array_get(_id_props_2,_nn);	
											var _str2 = string_delete(_str1,1, string_length(_choice)	);
											var _val2 = real(_str2);
											if _val2 = _oposite_direction
												{
													array_delete(_id_props_2, _nn, 1); 
													_nn--;
													if _nn < 0	{_nn = 0};
												}
												
										}		
								}
						}
				}
		}
	if mapeditor.terrain_paint_sign = 1
		{
			if mapeditor.paint_continuos = 1
				{
					if !(_xx = mapeditor.paint_continuos_x && _yy = mapeditor.paint_continuos_y)
						{
							//check if nearbay
							var _nearbay_x = 0;	var _nearbay_y = 0;
							var _xx1 = _xx; var _yy1 = _yy;
							var _dir_x_reversed = 0;	var _dir_y_reversed = 0;
							//check for x
							if point_distance(_xx1,0,mapeditor.paint_continuos_x,0) < 1	{_nearbay_x = 1;};
							_xx1 = _xx-1; if _xx1 < 0 {_xx1 += game_struct.map_xsize;	};
							if point_distance(_xx1,0,mapeditor.paint_continuos_x,0) < 1	{_nearbay_x = 1;};
							_xx1 = _xx+1; if _xx1 > game_struct.map_xsize-1 {_xx1 -= game_struct.map_xsize;};
							if point_distance(_xx1,0,mapeditor.paint_continuos_x,0) < 1	{_nearbay_x = 1;};
							//check for y
							if point_distance(0,_yy1,0,mapeditor.paint_continuos_y) < 1	{_nearbay_y = 1;};
							_yy1 = _yy-1; if _yy1 < 0 {_yy1 += game_struct.map_ysize;};
							if point_distance(0,_yy1,0,mapeditor.paint_continuos_y) < 1	{_nearbay_y = 1;};
							_yy1 = _yy+1; if _yy1 > game_struct.map_ysize-1 {_yy1 -= game_struct.map_ysize;};
							if point_distance(0,_yy1,0,mapeditor.paint_continuos_y) < 1	{_nearbay_y = 1;};
							//checks ends
							
							if _xx = 0 &&	mapeditor.paint_continuos_x = game_struct.map_xsize - 1	{_dir_x_reversed = - game_struct.map_xsize};
							if _xx = game_struct.map_xsize - 1 &&	mapeditor.paint_continuos_x = 0	{_dir_x_reversed =	 game_struct.map_xsize};
							if _yy = 0 &&	mapeditor.paint_continuos_y = game_struct.map_ysize - 1	{_dir_y_reversed = - game_struct.map_ysize};
							if _yy = game_struct.map_ysize - 1 &&	mapeditor.paint_continuos_y = 0	{_dir_y_reversed =   game_struct.map_ysize};
					
							if _nearbay_x = 1 &&	_nearbay_y = 1
								{
									var _my_direction = point_direction(_xx,_yy,
																		mapeditor.paint_continuos_x + _dir_x_reversed,
																		mapeditor.paint_continuos_y + _dir_y_reversed);
									var _target_direction = _my_direction - 180;
									if _target_direction < 0 {_target_direction += 360};
									_my_direction = floor(_my_direction/45); if _my_direction = 8 {_my_direction = 0};
									_target_direction = floor(_target_direction/45); if _target_direction = 8 {_target_direction = 0};
										
									var _check_for_water = game_board_array[_xx][_yy][$ "tile_terrain"][@ 0];
									var _check_water_char = string_char_at(string(_check_for_water), 1);
									var _water_found = 0;
									if _check_water_char = "d" || _check_water_char = "z"	{_water_found = 10};
									
									//push object on painted tille
									for(var _ff = 0; _ff < array_length(_id_props_xy); _ff++)
										{
											var _str1 = array_get(_id_props_xy,_ff);	
											if string_starts_with(_str1, _choice)
												{
													var _str2 = string_delete(_str1,1, string_length(_choice)	);
													var _val2 = real(_str2); if _val2 > 9 {_val2 -=10};
													if _val2 = _my_direction
														{
															array_delete(_id_props_xy, _ff, 1); 
															_ff--;
															if _ff < 0	{_ff = 0};
														}
												}
										}
									_my_direction += _water_found;
									var _string_combine = string(_choice) + string(_my_direction); 
									array_push(_id_props_xy,_string_combine);
									
									var _break_continuity = _water_found;
									
									//push object on continued tille
									if _prop_string = "river"	{var _id_props_2_xy = game_board_array[mapeditor.paint_continuos_x][mapeditor.paint_continuos_y][$ "river"];};
									if _prop_string = "road"	{var _id_props_2_xy = game_board_array[mapeditor.paint_continuos_x][mapeditor.paint_continuos_y][$ "road"];};
									
									var _check_for_water = game_board_array[mapeditor.paint_continuos_x][mapeditor.paint_continuos_y][$ "tile_terrain"][@ 0];
									var _check_water_char = string_char_at(string(_check_for_water), 1);
									var _water_found = 0;
									if _check_water_char = "d" || _check_water_char = "z"	{_water_found = 10};
									
									for(var _ff = 0; _ff < array_length(_id_props_2_xy); _ff++)
										{
											var _str1 = array_get(_id_props_2_xy,_ff);	
											if string_starts_with(_str1, _choice)
												{
													var _str2 = string_delete(_str1,1, string_length(_choice)	);
													var _val2 = real(_str2); if _val2 > 9 {_val2 -=10};
													if _val2 = _target_direction
														{
															array_delete(_id_props_2_xy, _ff, 1); 
															_ff--;
															if _ff < 0	{_ff = 0};
														}
												}
										}
									_target_direction += _water_found;
									var _string_combine = string(_choice) + string(_target_direction); 
									array_push(_id_props_2_xy,_string_combine);
									
									_break_continuity += _water_found;
									
									if _break_continuity < 1
										{
											mapeditor.paint_continuos_x = _xx;	mapeditor.paint_continuos_y = _yy;
											mapeditor.paint_continuos = 1;
										}
									else {mapeditor.paint_continuos = 0;};
								}
							else {mapeditor.paint_continuos = 0;};
							
						}
				}
			//start continuos
			if mapeditor.paint_continuos = 0
				{
					var _check_for_water = game_board_array[_xx][_yy][$ "tile_terrain"][@ 0];
					var _check_water_char = string_char_at(string(_check_for_water), 1);
					var _water_found = 0;
					if _check_water_char = "d" || _check_water_char = "z"{mapeditor.paint_continuos = 0;};
					else
						{
							mapeditor.paint_continuos_x = _xx;
							mapeditor.paint_continuos_y = _yy;
							mapeditor.paint_continuos = 1;
						}
				}
		}
}