function paint_utylity(_xx,_yy,_utylity_string)
{
	var _terrain_first_letter = game_board_array[@ _xx][@ _yy][$ "tile_terrain"][@ 0];
	_terrain_first_letter = string_char_at(_terrain_first_letter, 1);
	var _side_id = undefined;
	var _terrain_is_legal = 0;
	var _terrain_legal_value = 0;
	
	var _legal_terrains = undefined;
	var _side_name = undefined;
	var _side_id = undefined;
	
	var _side = mapeditor.terrain_paint_selected;
	var _delete_string = string_length("paint_utylity_");
	_side = string_delete(_side,1,_delete_string);
	var _str_pos = string_pos("_", _side);
	var _str_lngth = string_length(_side) - _str_pos +1;
	_side = string_delete(_side,_str_pos,_str_lngth);
	
	for(var _ff = 0; _ff < array_length(sides_array); _ff++)
		{
			var _this_side_name = sides_array[@ _ff][$ "side_name"];
			if string(_side) = string(_this_side_name)
				{
					_side_name = _this_side_name;
					_side_id = _ff;
				}
		}
	//adding city
	if _side_id != undefined	&&	mapeditor.terrain_paint_sign = 1
		{
			_legal_terrains = sides_array[@ _side_id][$ "city_legal"];
			for(var _ff = 0; _ff < array_length(_legal_terrains); _ff++)
				{
					var _1st_letter = _legal_terrains[@ _ff];
					var _keep_string = _1st_letter;
					_1st_letter = string_char_at(_1st_letter, 1);
					if string(_1st_letter) = string(_terrain_first_letter)	
						{
							_terrain_is_legal = 1;
							
							_terrain_legal_value = string_char_at(_keep_string, 2);
							_terrain_legal_value = real(_terrain_legal_value);
						}
				}
			if _terrain_is_legal = 1
				{
					var _current_cities_array = game_board_array[@ _xx][@ _yy][$ "facility"];
					var _city_name_searching_for = "utylity_" +string(_side) + "_";
					var _city_values_found = 1;
					var _duplicate_found = 0;
					for(var _ff = 0; _ff < array_length(_current_cities_array); _ff++)
						{
							var _facility_string_found = _current_cities_array[@ _ff];
							if string(_facility_string_found) = string(_utylity_string)
								{
									mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
									mo_string = "facility : " + string() + "\n" + "already exist";
									_duplicate_found = 1;
									break;
								}
							if string_starts_with(_facility_string_found, _city_name_searching_for)	&&
								string(_facility_string_found) != string(_utylity_string)
								{
									_city_values_found ++;
								}
						}
					if _city_values_found > _terrain_legal_value	&&	_duplicate_found = 0
						{	
							mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
							mo_string = string(_side) + " facility limit in this terrain is : " + string(_terrain_legal_value);
						};
					if _city_values_found < _terrain_legal_value +1	&&	_duplicate_found = 0
						{
							var _utylity_exist_on_side_list = 0;
							var _avilable_utylity_array = sides_array[@ _side_id][$ "utylity"];
							for(var _ff = 0; _ff < array_length(_avilable_utylity_array); _ff++)
								{
									var _utylit_on_list = _avilable_utylity_array[@ _ff];
									if string(_utylity_string) = string(_utylit_on_list)	{	_utylity_exist_on_side_list = 1;	};
								}
							if _utylity_exist_on_side_list = 1	{array_push(_current_cities_array,_utylity_string);};
							
						}
				}
			else
				{
					mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
					mo_string = string(_side) + " do not preffer this terrain for colonization ";
				}
		}
	//removing city, it can easily be set by terrain_paint_sign in adding, but will not cover case if city is misplaced on illegal terrain
	if mapeditor.terrain_paint_sign = -1
		{
			var _current_cities_array = game_board_array[@ _xx][@ _yy][$ "facility"];
			for(var _ff = 0; _ff < array_length(_current_cities_array); _ff++)
				{
					var _facility_string_found = _current_cities_array[@ _ff];
					if string(_facility_string_found) = string(_utylity_string)
						{
							array_delete(_current_cities_array,_ff,1);
							_ff--;
							if _ff < 0	{_ff = 0};
						}
				}
		}
}