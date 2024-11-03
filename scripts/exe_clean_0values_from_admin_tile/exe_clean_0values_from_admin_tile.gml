function exe_clean_0values_from_admin_tile(_keep_reference_to_tile)
{
	var _target_array = this_city_administration[_keep_reference_to_tile][4];
	var _array_to_set = [];
	array_push(_array_to_set,"set");
	for(var _ii = 1; _ii < array_length(_target_array); _ii +=2)
		{
			var _current_name = _target_array[_ii];
			var _current_value = _target_array[_ii + 1];
			if string_starts_with(_current_name,"stayhome_")
				{
					array_push(_array_to_set,_current_name,_current_value);
				}
			if !string_starts_with(_current_name,"stayhome_")	&& _current_value != 0
				{
					array_push(_array_to_set,_current_name,_current_value);
				}
		}
	this_city_administration[_keep_reference_to_tile][4] = _array_to_set;
}