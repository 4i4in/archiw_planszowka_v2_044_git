function _push_tile_by_consumption(_push_this,_utylity_array_here)
{
	for(var _ii = 0; _ii < array_length(_utylity_array_here); _ii+=2)
		{
			var _utylity_name_here = _utylity_array_here[_ii];
			var _utylity_value_here = _utylity_array_here[_ii+1];
			
			for(var _ss = 0; _ss < array_length(sides_array); _ss++)
				{
					var _consumption_array_here = 	sides_array[_ss][$ "consumption"];
					for(var _pp = 0; _pp < array_length(_consumption_array_here); _pp+=2)
						{
							var _consumption_name_here = 	_consumption_array_here[_pp];
							var _consumption_value_here = 	_consumption_array_here[_pp+1];
							
							if string_starts_with(_consumption_name_here,_utylity_name_here+"_eat_")
								{
									_consumption_name_here = string_delete(_consumption_name_here,1,string_length(_utylity_name_here+"_eat_"));
									array_push(_push_this,_consumption_name_here,_consumption_value_here*_utylity_value_here);
								}
						}
				}
			if string_starts_with(_utylity_name_here,"city_")
				{
					_utylity_name_here = string_replace(_utylity_name_here,"city","unused");
					array_push(_push_this,_utylity_name_here,_utylity_value_here);
				}
		}
	return(_push_this);
}