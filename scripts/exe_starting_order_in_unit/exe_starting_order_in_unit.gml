function exe_starting_order_in_unit(_read_in_unit)
{
	var _base_values = undefined;
	var _base_number = undefined;
	var _base_Abuffs = undefined;
	var _base_buff_list = undefined;
	for(var _ii = 2; _ii < array_length(_read_in_unit); _ii+=2)
		{
			if _read_in_unit[_ii] == "base_values"		{_base_values = _read_in_unit[_ii+1];};
			if _read_in_unit[_ii] == "number"			{_base_number = _read_in_unit[_ii+1][0];};
			if _read_in_unit[_ii] == "active_buffs"		{_base_Abuffs = _read_in_unit[_ii+1];};
			if _read_in_unit[_ii] == "buff_list"		{_base_buff_list = _read_in_unit[_ii+1];};
		}
	
	//setting visibility order ground, overwater, underwater
	var _vis_order = [0,1,2];
	for(var _ii = 0; _ii < array_length(_base_Abuffs);	_ii+=2)
		{
			if _base_Abuffs[_ii] == "overwater"
				{
					var _underwater_found = 0;
					for(var _kk = 0; _kk < array_length(_base_buff_list); _kk+=2)
						{
							if _base_buff_list[_kk] = "underwater"	{_underwater_found=1;};
						}
					if _underwater_found > 0	{_vis_order = [2,1,0];}
					else						{_vis_order = [1,0,2];};
				}
			if _base_Abuffs[_ii] == "underwater"	{_vis_order = [2,1,0];};
		}
	
	
	var _base_place_taken = undefined;
	var _base_hitpoints = undefined;
	var _base_detection_value = undefined;
	var _base_visibility = undefined;
	var _base_carry_max = undefined;
	
	if _base_values != undefined
		{
			for(var _ii = 0; _ii < array_length(_base_values);	_ii+=2)
				{
					var _name_found = _base_values[_ii];
					var _value_found = _base_values[_ii+1];
					if _name_found == "place_taken"		{_base_place_taken = _value_found;};
					if _name_found == "hitpoints"		{_base_hitpoints = _value_found;};
					if _name_found == "detection_value"	{_base_detection_value = _value_found;};
					if _name_found == "visibility"		{_base_visibility = _value_found;};
					if _name_found == "carry_max"		{_base_carry_max = _value_found;};
				}
		}
	if _base_values != undefined
		{
			for(var _ii = 2; _ii < array_length(_read_in_unit); _ii+=2)
				{
					if _read_in_unit[_ii] == "hitpoints"
						{
							if _base_hitpoints != undefined	&&	_base_number != undefined
								{
									_read_in_unit[_ii+1][0] = _base_hitpoints * _base_number;
									_read_in_unit[_ii+1][1] = _base_hitpoints * _base_number;
								}
						}
					if _read_in_unit[_ii] == "carry_transport"
						{
							var _carry_transport = _read_in_unit[_ii+1];
							for(var _kk = 0; _kk < array_length(_carry_transport); _kk+=2)
								{
									if _carry_transport[_kk] == "carry_max"
										{
											if _base_carry_max != undefined	&&	_base_number != undefined
												{
													_carry_transport[_kk+1] = _base_carry_max * _base_number;
												}
										}
								}
						}
					if _read_in_unit[_ii] == "detection_value"	&& _base_detection_value != undefined
						{
							var _detection_array = _read_in_unit[_ii+1];
							for(var _kk = 0; _kk < array_length(_vis_order); _kk++)
								{
									var _ref_found = _vis_order[_kk];
									_detection_array[_ref_found] = _base_detection_value[_kk];
								}
						}
					if _read_in_unit[_ii] == "visibility"	&&	_base_visibility != undefined
						{
							//_read_in_unit[_ii+1][0] = _base_visibility; max is set
							_read_in_unit[_ii+1][1] = _base_visibility;
						}
				}
		}
	return(_read_in_unit);
}