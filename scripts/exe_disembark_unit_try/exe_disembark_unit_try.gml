function exe_disembark_unit_try(_source_x,_source_y,_chosen_group,_choosen_unit)
{
	var _ships_reference = [];
	var _source_group = game_board_array[_source_x][_source_y][$ "units"][_chosen_group];

	//grabing unit data
	var _source_unit = game_board_array[_source_x][_source_y][$ "units"][_chosen_group][_choosen_unit];
	var _unit_name = _source_unit[1];
	var _unit_place_taken = 0;
	var _unit_numbers = 0;
	var _unit_cargo = 0;
	for(var _ii = 2; _ii < array_length(_source_unit); _ii +=2)
		{
			if _source_unit[_ii] == "number"	{_unit_numbers = _source_unit[_ii+1][1];};
			if _source_unit[_ii] == "base_values"	
				{
					var _base_array = _source_unit[_ii+1];
					for(var _kk = 0; _kk < array_length(_base_array); _kk+=2)
						{
							if _base_array[_kk] == "place_taken"	{_unit_place_taken = _base_array[_kk+1];};
						}
				};
			if _source_unit[_ii] == "carry_transport"	
				{
					var _cargo_array = _source_unit[_ii+1];
					for(var _kk = 0; _kk < array_length(_cargo_array); _kk+=2)
						{
							if _cargo_array[_kk] != "carry_max"	{_unit_cargo += _cargo_array[_kk+1];};
						}
				}
		}
	_unit_place_taken *= _unit_numbers;
	_unit_place_taken += _unit_cargo;
	
	var _unit_removed_from_cargo = 0;
	for(var _ii = 1; _ii < array_length(_source_group); _ii++)
		{
			if _unit_removed_from_cargo > 0 {break;};
			var _carrier_unit = _source_group[_ii];
			for(var _kk = 2; _kk < array_length(_carrier_unit); _kk+=2)
				{
					if _unit_removed_from_cargo > 0 {break;};
					if _carrier_unit[_kk] == "carry_transport"	
						{
							if _unit_removed_from_cargo > 0 {break;};
							var _cargo_array = _carrier_unit[_kk+1];
							for(var _nn = 0; _nn < array_length(_cargo_array); _nn+=2)
								{
									if _unit_removed_from_cargo > 0 {break;};
									if _cargo_array[_nn] == _unit_name &&	_cargo_array[_nn+1] == _unit_place_taken
										{
											_unit_removed_from_cargo = 1;
											array_delete(_cargo_array,_nn,2);
											if mouseover_info != 1	{mouseover_info=1; mo_xpos = mouse_x; mo_ypos = mouse_y;};
											mo_string += "\n"+string(_unit_name)+" disembarked";
											break;
										}
									if _unit_removed_from_cargo > 0 {break;};
								}
						}
				}
		}
		
	if _unit_removed_from_cargo
		{
			var _disembark_result = variable_clone(game_board_array[_source_x][_source_y][$ "units"][_chosen_group][_choosen_unit]);
			array_delete(game_board_array[_source_x][_source_y][$ "units"][_chosen_group],_choosen_unit,1);
		}
	else	{	var _disembark_result = undefined;	};
	
	return(_disembark_result);
}