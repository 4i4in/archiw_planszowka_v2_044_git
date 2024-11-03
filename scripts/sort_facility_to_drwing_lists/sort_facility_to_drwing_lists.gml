function sort_facility_to_drwing_lists(_array1,_xx,_yy,_tt)
{
	//sort wood forest
	var _wood_num = 0;
	var _forest_num = 0;
	if game_struct.show_trees = 1
		{
			var _props_array_id1 = _array1[_xx][_yy][$ "tile_props"];
			var _props_array_id1_length = array_length(_props_array_id1);
			for(var _ii = 0; _ii < _props_array_id1_length; _ii++)
				{
					var _props_found = _array1[_xx][_yy][$ "tile_props"][@ _ii];
					if string_starts_with(_props_found, "forest_")
						{
							var _str_num = string_delete(_props_found,1,7);
							_forest_num = real(_str_num);
							
						}
					if string_starts_with(_props_found, "wood_")
						{
							var _str_num = string_delete(_props_found,1,5);
							_wood_num = real(_str_num);
						}
				}
		}
		
		
	var _array_id1 = _array1[_xx][_yy][$ _tt];
	var _props_array_length = array_length(_array_id1);
	
	//case only wood forest
	if _props_array_length < 1 && (_forest_num + _wood_num) > 0
		{	var _start_x = 0;
			var _base_x = _start_x;
			var _start_y = 0;
			var _pos_shift = (game_struct.cell_size/4)/game_struct.zoom_scale;
			if game_struct.zoom_scale = 1
					{
						_start_y += _pos_shift;
						for(var _pp = _forest_num + _wood_num; _pp > 0; _pp--)
							{
								//wood forest part
								if _wood_num > 0
									{
										var _create_string = "wood_" + string(_wood_num) + "_draw_on_map";
										ds_list_add(draw_facility_map,xref + _start_x);
										ds_list_add(draw_facility_map,yref + _start_y);
										ds_list_add(draw_facility_map,string(_create_string));
										_start_x += _pos_shift;
										if _start_x > game_struct.cell_size/game_struct.zoom_scale
											{	_start_x = _base_x;  _start_y += _pos_shift;	};
										_wood_num --;
									}
								//wood forest part
								if _forest_num > 0
									{
										var _create_string = "forest_" + string(_forest_num) + "_draw_on_map";
										ds_list_add(draw_facility_map,xref + _start_x);
										ds_list_add(draw_facility_map,yref + _start_y);
										ds_list_add(draw_facility_map,string(_create_string));
										_start_x += _pos_shift;
										if _start_x > game_struct.cell_size/game_struct.zoom_scale
											{	_start_x = _base_x;  _start_y += _pos_shift;	};
										_forest_num --;
									}
							}
					}
				else
					{
						//wood forest part
						_start_x += 2*_pos_shift;
						_start_y += 2*_pos_shift;
						if _wood_num > 0
							{
								var _create_string = "wood_" + string(_wood_num) + "_draw_on_map";
								ds_list_add(draw_facility_map,xref + _start_x);
								ds_list_add(draw_facility_map,yref + _start_y);
								ds_list_add(draw_facility_map,string(_create_string));
								_start_x += _pos_shift;
								if _start_x > game_struct.cell_size/game_struct.zoom_scale
									{	_start_x = _base_x;  _start_y += _pos_shift;	};
							}
						//wood forest part
						if _forest_num > 0
							{
								var _create_string = "forest_" + string(_forest_num) + "_draw_on_map";
								ds_list_add(draw_facility_map,xref + _start_x);
								ds_list_add(draw_facility_map,yref + _start_y);
								ds_list_add(draw_facility_map,string(_create_string));
								_start_x += _pos_shift;
								if _start_x > game_struct.cell_size/game_struct.zoom_scale
									{	_start_x = _base_x;  _start_y += _pos_shift;	};
							}
					}
		}
	//sorting facilities with cities
	if _props_array_length > 0
		{
		var _city_number_array = array_create(	array_length(sides_array)	);
	
		var _utylity_number_array = array_create(	array_length(sides_array)	);
		for(var _ii = 0; _ii <array_length( _utylity_number_array); _ii++)
			{	_utylity_number_array[_ii] = array_create(0);};
		
		var _watchtower_number_array = array_create(	array_length(sides_array)	);
	
		var _ruins_number_array = array_create(0);
	
	
		for(var _ii = 0; _ii < _props_array_length; _ii++)
			{
				var _props_found = _array1[_xx][_yy][$ _tt][@ _ii];
			
				if string_starts_with(_props_found,"fortyfication_")
					{
						ds_list_add(draw_fortyfications_map,xref + (game_struct.cell_size/2)/game_struct.zoom_scale	);
						ds_list_add(draw_fortyfications_map,yref + game_struct.cell_size/game_struct.zoom_scale);
						ds_list_add(draw_fortyfications_map,string(_props_found) + "_mini");
					}
				//counting cities
				if string_starts_with(_props_found,"city_")
					{
						var _string_length = string_length(string(_props_found)	);
						var _city_value = string_delete(_props_found,1,_string_length-1);
						_city_value = real(_city_value);
					
						var _city_side = string_delete(_props_found,_string_length-1,2);
						_city_side = string_delete(_city_side,1,string_length("city_"));
					
						for(var _kk = 0; _kk < array_length(sides_array); _kk++)
							{
								var _side_in_array = sides_array[@ _kk][$ "side_name"];
								if _city_side = _side_in_array
									{array_set(_city_number_array,_kk,_city_value);};
							}
					}
				//counting utylities
				if string_starts_with(_props_found,"utylity_")
					{
						var _utylity_side = string_delete(_props_found,1, string_length("utylity_")	);
					
						var _string_length = string_length(string(_utylity_side)	);
						var _delete_begin = string_pos("_",_utylity_side);
						var _utylity_found = string_delete(_utylity_side,1,_delete_begin);
						_utylity_side = string_delete(_utylity_side,_delete_begin,_string_length);
						for(var _kk = 0; _kk < array_length(sides_array); _kk++)
							{
								var _side_in_array = sides_array[@ _kk][$ "side_name"];
								if _utylity_side = _side_in_array
									{
										if string_starts_with(_utylity_found,"watchtower")
											{	array_set(_watchtower_number_array,_kk,1);	}
										else
											{	
												var _subarray_id = _utylity_number_array[@ _kk];
												array_push(_subarray_id,string(_props_found));
											};
									}
							}
					}
				//counting utylities
				if string_starts_with(_props_found,"ruins_")
					{
						array_push(_ruins_number_array,string(_props_found));
					}
			}
		//drawing cities
		var _city_total_sides = 0;
		var _total_cities = 0;
		for(var _ii = 0; _ii < array_length(_city_number_array); _ii++)
			{	
				var  _cities_found = _city_number_array[@ _ii];
				var  _utylities_found = array_length(_utylity_number_array[@ _ii])
				var  _watchtower_found = _watchtower_number_array[@ _ii];
			
				var _value_found = _cities_found + _utylities_found + _watchtower_found;

				if _value_found != 0	
					{	_city_total_sides++;	};	
				_total_cities += _value_found;
			};
		var _ruins_found = array_length(_ruins_number_array);
		if _ruins_found > 0
			{
				if _total_cities = 0 {_total_cities = 1};
				if _city_total_sides = 0 {_city_total_sides = 1};
			}
		//case of ruins
		if array_length(_ruins_number_array) > 0 {_city_total_sides ++};
		
		//case wood forest
		if _wood_num > 0	{_city_total_sides++};
		if _forest_num > 0	{_city_total_sides++};
		//pipelinf for prepare drawing
		if _total_cities + _wood_num + _forest_num > 0
			{
				var _start_x = 0;
				var _base_x = _start_x;
				var _start_y = 0;
				var _pos_shift = (game_struct.cell_size/4)/game_struct.zoom_scale;
				if game_struct.zoom_scale = 1
					{
					
						if _wood_num + _forest_num < 2
							{
								_start_x += _pos_shift;
								_base_x = _start_x;
								_start_y += _pos_shift;
							}
						if _wood_num + _forest_num > 1
							{
								_start_y += _pos_shift;
							}
						for(var _ii = 0; _ii < array_length(_city_number_array); _ii++)
							{
								//watchtowers
								var  _value_found = _watchtower_number_array[@ _ii];
								while(_value_found > 0)
									{
										//wood forest part
										if _wood_num > 0
											{
												var _create_string = "wood_" + string(_wood_num) + "_draw_on_map";
												ds_list_add(draw_facility_map,xref + _start_x);
												ds_list_add(draw_facility_map,yref + _start_y);
												ds_list_add(draw_facility_map,string(_create_string));
												_start_x += _pos_shift;
												if _start_x > game_struct.cell_size/game_struct.zoom_scale
													{	_start_x = _base_x;  _start_y += _pos_shift;	};
												_wood_num --;
											}
										//wood forest part
										if _forest_num > 0
											{
												var _create_string = "forest_" + string(_forest_num) + "_draw_on_map";
												ds_list_add(draw_facility_map,xref + _start_x);
												ds_list_add(draw_facility_map,yref + _start_y);
												ds_list_add(draw_facility_map,string(_create_string));
												_start_x += _pos_shift;
												if _start_x > game_struct.cell_size/game_struct.zoom_scale
													{	_start_x = _base_x;  _start_y += _pos_shift;	};
												_forest_num --;
											}
										
										//watchtower part
										var _side_name = sides_array[@ _ii][$ "side_name"];
										var _create_string = "utylity_" + string(_side_name) + "_watchtower_draw_on_map";
										ds_list_add(draw_facility_map,xref + _start_x);
										ds_list_add(draw_facility_map,yref + _start_y);
										ds_list_add(draw_facility_map,string(_create_string));
										_start_x += 2*_pos_shift;
										if _start_x > game_struct.cell_size/game_struct.zoom_scale
											{	_start_x = _base_x;  _start_y += _pos_shift;	};
										_value_found --;
									}
								
								//homes
								var  _value_found = _city_number_array[@ _ii];
								if _value_found > 4	
									{
										//wood forest part
										if _wood_num > 0
											{
												var _create_string = "wood_" + string(_wood_num) + "_draw_on_map";
												ds_list_add(draw_facility_map,xref + _start_x);
												ds_list_add(draw_facility_map,yref + _start_y);
												ds_list_add(draw_facility_map,string(_create_string));
												_start_x += _pos_shift;
												if _start_x > game_struct.cell_size/game_struct.zoom_scale
													{	_start_x = _base_x;  _start_y += _pos_shift;	};
												_wood_num --;
											}
										//wood forest part
										if _forest_num > 0
											{
												var _create_string = "forest_" + string(_forest_num) + "_draw_on_map";
												ds_list_add(draw_facility_map,xref + _start_x);
												ds_list_add(draw_facility_map,yref + _start_y);
												ds_list_add(draw_facility_map,string(_create_string));
												_start_x += _pos_shift;
												if _start_x > game_struct.cell_size/game_struct.zoom_scale
													{	_start_x = _base_x;  _start_y += _pos_shift;	};
												_forest_num --;
											}
										
										//big home part
										var _side_name = sides_array[@ _ii][$ "side_name"];
										var _create_string = "city_" + string(_side_name) + "_5";
										ds_list_add(draw_facility_map,xref + _start_x);
										ds_list_add(draw_facility_map,yref + _start_y);
										ds_list_add(draw_facility_map,string(_create_string));
										_start_x += _pos_shift;
										if _start_x > game_struct.cell_size/game_struct.zoom_scale
											{	_start_x = _base_x;  _start_y += _pos_shift;	};
										_value_found -= 5;
									}
								
								//homes again
								while(_value_found > 0)
									{
										//wood forest part
										if _wood_num > 0
											{
												var _create_string = "wood_" + string(_wood_num) + "_draw_on_map";
												ds_list_add(draw_facility_map,xref + _start_x);
												ds_list_add(draw_facility_map,yref + _start_y);
												ds_list_add(draw_facility_map,string(_create_string));
												_start_x += _pos_shift;
												if _start_x > game_struct.cell_size/game_struct.zoom_scale
													{	_start_x = _base_x;  _start_y += _pos_shift;	};
												_wood_num --;
											}
										//wood forest part
										if _forest_num > 0
											{
												var _create_string = "forest_" + string(_forest_num) + "_draw_on_map";
												ds_list_add(draw_facility_map,xref + _start_x);
												ds_list_add(draw_facility_map,yref + _start_y);
												ds_list_add(draw_facility_map,string(_create_string));
												_start_x += _pos_shift;
												if _start_x > game_struct.cell_size/game_struct.zoom_scale
													{	_start_x = _base_x;  _start_y += _pos_shift;	};
												_forest_num --;
											}
										//small home part	
										var _side_name = sides_array[@ _ii][$ "side_name"];
										var _create_string = "city_" + string(_side_name) + "_" + string(_value_found);
										ds_list_add(draw_facility_map,xref + _start_x);
										ds_list_add(draw_facility_map,yref + _start_y);
										ds_list_add(draw_facility_map,string(_create_string));
										_start_x += _pos_shift;
										if _start_x > game_struct.cell_size/game_struct.zoom_scale
											{	_start_x = _base_x;  _start_y += _pos_shift;	};
										_value_found --;
									}
								//utylity
								for(var _kk = 0; _kk < array_length(_utylity_number_array[@ _ii]); _kk++)
									{
										//wood forest part
										if _wood_num > 0
											{
												var _create_string = "wood_" + string(_wood_num) + "_draw_on_map";
												ds_list_add(draw_facility_map,xref + _start_x);
												ds_list_add(draw_facility_map,yref + _start_y);
												ds_list_add(draw_facility_map,string(_create_string));
												_start_x += _pos_shift;
												if _start_x > game_struct.cell_size/game_struct.zoom_scale
													{	_start_x = _base_x;  _start_y += _pos_shift;	};
												_wood_num --;
											}
										//wood forest part
										if _forest_num > 0
											{
												var _create_string = "forest_" + string(_forest_num) + "_draw_on_map";
												ds_list_add(draw_facility_map,xref + _start_x);
												ds_list_add(draw_facility_map,yref + _start_y);
												ds_list_add(draw_facility_map,string(_create_string));
												_start_x += _pos_shift;
												if _start_x > game_struct.cell_size/game_struct.zoom_scale
													{	_start_x = _base_x;  _start_y += _pos_shift;	};
												_forest_num --;
											}
										//utylity part
										var _utylity_name = _utylity_number_array[@ _ii][@ _kk];
										_utylity_name = string(_utylity_name) + "_draw_on_map";
										ds_list_add(draw_facility_map,xref + _start_x);
										ds_list_add(draw_facility_map,yref + _start_y);
										ds_list_add(draw_facility_map,string(_utylity_name));
										_start_x += _pos_shift;
										if _start_x > game_struct.cell_size/game_struct.zoom_scale
											{	_start_x = _base_x;  _start_y += _pos_shift;	};
										_value_found --;
									}
								
							}
						for(var _ii = 0; _ii < array_length(_ruins_number_array); _ii++)
							{
								var _ruin_name = _ruins_number_array[@ _ii];
								_ruin_name = string(_ruin_name) + "_draw_on_map";
								ds_list_add(draw_facility_map,xref + _start_x);
								ds_list_add(draw_facility_map,yref + _start_y);
								ds_list_add(draw_facility_map,string(_ruin_name));
								_start_x += _pos_shift;
								if _start_x > game_struct.cell_size/game_struct.zoom_scale
									{	_start_x = _base_x;  _start_y += _pos_shift;	};
							}
						//wood forest part
						while(_wood_num > 0)
							{
								var _create_string = "wood_" + string(_wood_num) + "_draw_on_map";
								ds_list_add(draw_facility_map,xref + _start_x);
								ds_list_add(draw_facility_map,yref + _start_y);
								ds_list_add(draw_facility_map,string(_create_string));
								_start_x += _pos_shift;
								if _start_x > game_struct.cell_size/game_struct.zoom_scale
									{	_start_x = _base_x;  _start_y += _pos_shift;	};
								_wood_num --;
							}
						//wood forest part
						while(_forest_num > 0)
							{
								var _create_string = "forest_" + string(_forest_num) + "_draw_on_map";
								ds_list_add(draw_facility_map,xref + _start_x);
								ds_list_add(draw_facility_map,yref + _start_y);
								ds_list_add(draw_facility_map,string(_create_string));
								_start_x += _pos_shift;
								if _start_x > game_struct.cell_size/game_struct.zoom_scale
									{	_start_x = _base_x;  _start_y += _pos_shift;	};
								_forest_num --;
							}
					}
				else
					{
					
						_start_x += _pos_shift;
						_start_y += _pos_shift;
						//wood forest part
						if _wood_num > 0
							{
								var _create_string = "wood_" + string(_wood_num) + "_draw_on_map";
								ds_list_add(draw_facility_map,xref + _start_x);
								ds_list_add(draw_facility_map,yref + _start_y);
								ds_list_add(draw_facility_map,string(_create_string));
								_start_x += _pos_shift;
								if _start_x > game_struct.cell_size/game_struct.zoom_scale
									{	_start_x = _base_x;  _start_y += _pos_shift;	};
							}
						//wood forest part
						if _forest_num > 0
							{
								var _create_string = "forest_" + string(_forest_num) + "_draw_on_map";
								ds_list_add(draw_facility_map,xref + _start_x);
								ds_list_add(draw_facility_map,yref + _start_y);
								ds_list_add(draw_facility_map,string(_create_string));
								_start_x += _pos_shift;
								if _start_x > game_struct.cell_size/game_struct.zoom_scale
									{	_start_x = _base_x;  _start_y += _pos_shift;	};
							}
						//buildings
						for(var _ii = 0; _ii < array_length(_city_number_array); _ii++)
							{
								//watchtowers
								var  _value_found = _watchtower_number_array[@ _ii];
								while(_value_found > 0)
									{
										var _side_name = sides_array[@ _ii][$ "side_name"];
										var _create_string = "utylity_" + string(_side_name) + "_watchtower_draw_on_map";
										ds_list_add(draw_facility_map,xref + _start_x);
										ds_list_add(draw_facility_map,yref + _start_y);
										ds_list_add(draw_facility_map,string(_create_string));
										_start_x += _pos_shift;
										if _start_x > game_struct.cell_size/game_struct.zoom_scale
											{	_start_x = _base_x;  _start_y += _pos_shift;	};
										_value_found --;
									}
								//homes
								var  _value_found = _city_number_array[@ _ii] + array_length(_utylity_number_array[@ _ii]);
								if _value_found > 4	
									{
										var _side_name = sides_array[@ _ii][$ "side_name"];
										var _create_string = "city_" + string(_side_name) + "_5";
										ds_list_add(draw_facility_map,xref + _start_x);
										ds_list_add(draw_facility_map,yref + _start_y);
										ds_list_add(draw_facility_map,string(_create_string));
									}
								else if _value_found > 0 && _value_found < 5
									{
										var _side_name = sides_array[@ _ii][$ "side_name"];
										var _create_string = "city_" + string(_side_name) +"_" + string(_value_found);
										ds_list_add(draw_facility_map,xref + _start_x);
										ds_list_add(draw_facility_map,yref + _start_y);
										ds_list_add(draw_facility_map,string(_create_string));
									}
								if _value_found > 0
									{	
										_start_x += _pos_shift;
										if _start_x + _pos_shift > game_struct.cell_size/game_struct.zoom_scale
											{ _start_x = (game_struct.cell_size/2)/game_struct.zoom_scale; _start_y += _pos_shift};
									}
							}
						if array_length(_ruins_number_array) > 0
							{
								ds_list_add(draw_facility_map,xref + _start_x);
								ds_list_add(draw_facility_map,yref + _start_y);
								ds_list_add(draw_facility_map,"ruins_marker_draw_on_map");
							}
					}
			}
		}
}