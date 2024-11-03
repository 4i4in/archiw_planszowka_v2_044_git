function exe_check_production_multipler_buffs(_side,_resource,_buff_strin_begin,_xx,_yy)
{
	var _return_buff = 1;
	var _buff_options = sides_array[_side][$ "production_buffs"];
	for(var _ii = 0; _ii < array_length(_buff_options); _ii += 2)
		{
			var _current_buff_name = _buff_options[_ii];
			var _current_buff_value = _buff_options[_ii+1];
			if string_starts_with(_current_buff_name,_buff_strin_begin)
				{
					_current_buff_name = string_delete(_current_buff_name,1,string_length(_buff_strin_begin)+1);
					if string_starts_with(_current_buff_name,"prop")
						{
							_current_buff_name = string_delete(_current_buff_name,1,string_length("prop_"));
							var _props_array_here = operational_array[_xx][_yy][$ "tile_props"];
							for(var _kk = 0; _kk < array_length(_props_array_here); _kk++)
								{
									var _prop_here = _props_array_here[_kk];
									if string_starts_with(_prop_here,_current_buff_name)
										{
											var _prop_value_here = string_digits(_prop_here);
					show_debug_message("buff _prop_value_here : "+ string(_prop_value_here));
											_return_buff *= power(_current_buff_value, _prop_value_here);
					show_debug_message("buff match : "+ string(_current_buff_name) + " | return : " + string(_return_buff) + " | " + string(_current_buff_value) + " ^ " + string(_prop_value_here));
										}
								}
						}
					else if string_starts_with(_current_buff_name,"terrain")
						{
							_current_buff_name = string_delete(_current_buff_name,1,string_length("terrain_"));
							var _terrain_here = operational_array[_xx][_yy][$ "tile_terrain"][0];
							if string_starts_with(_terrain_here,_current_buff_name)
								{
									_return_buff *= _current_buff_value;
								}
						}
				}
		}
	return(_return_buff);
}