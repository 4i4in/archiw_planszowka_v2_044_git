function paint_fortyfication(_xx,_yy,_side)
{
	var _terrain_first_letter = game_board_array[@ _xx][@ _yy][$ "tile_terrain"][@ 0];
	_terrain_first_letter = string_char_at(_terrain_first_letter, 1);
	var _side_id = undefined;
	var _terrain_is_legal = 0;
	var _terrain_legal_value = 0;
	
	var _legal_terrains = undefined;
	var _side_name = undefined;
	var _side_id = undefined;
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
			_legal_terrains = sides_array[@ _side_id][$ "fortyfications_legal"];
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
					var _city_name_searching_for = "fortyfication_" +string(_side) + "_";
					var _delete_length = string_length(_city_name_searching_for);
					var _city_values_found = 1;
					for(var _ff = 0; _ff < array_length(_current_cities_array); _ff++)
						{
							var _facility_string_found = _current_cities_array[@ _ff];
							if string_starts_with(_facility_string_found, _city_name_searching_for)
								{
									var _city_value = string_delete(_facility_string_found,1,_delete_length);
									var _city_value = real(_city_value);
									_city_values_found += _city_value;
									array_delete(_current_cities_array, _ff, 1); 
									_ff--;
									if _ff < 0	{_ff = 0};
								}
						}
					if _city_values_found > _terrain_legal_value
						{	
							mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
							mo_string = string(_side) + " fortyfication limit in this terrain is : " + string(_terrain_legal_value);
							
							_city_values_found = _terrain_legal_value;
						};
					var _string_city_to_push = _city_name_searching_for + string(_city_values_found);
					array_push(_current_cities_array,_string_city_to_push);
				}
			else
				{
					mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; 
					mo_string = string(_side) + " do not preffer this terrain for fortyfication ";
				}
		}
	//removing city, it can easily be set by terrain_paint_sign in adding, but will not cover case if city is misplaced on illegal terrain
	if _side_id != undefined	&&	mapeditor.terrain_paint_sign = -1
		{
			var _current_cities_array = game_board_array[@ _xx][@ _yy][$ "facility"];
			var _city_name_searching_for = "fortyfication_" +string(_side) + "_";
			var _delete_length = string_length(_city_name_searching_for);
			var _city_values_found = -1;
			for(var _ff = 0; _ff < array_length(_current_cities_array); _ff++)
				{
					var _facility_string_found = _current_cities_array[@ _ff];
					if string_starts_with(_facility_string_found, _city_name_searching_for)
						{
							var _city_value = string_delete(_facility_string_found,1,_delete_length);
							var _city_value = real(_city_value);
							_city_values_found += _city_value;
							array_delete(_current_cities_array, _ff, 1); 
							_ff--;
							if _ff < 0	{_ff = 0};
						}
				}
			if _city_values_found > 0
				{
					var _string_city_to_push = _city_name_searching_for + string(_city_values_found);
					array_push(_current_cities_array,_string_city_to_push);
				}
		}
}