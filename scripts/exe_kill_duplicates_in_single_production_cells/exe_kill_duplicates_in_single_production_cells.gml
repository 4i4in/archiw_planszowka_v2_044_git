function exe_kill_duplicates_in_single_production_cells(_cons_prod_full_array)
{
	var _array_to_return = [];
	for(var _ii = 0; _ii < array_length(_cons_prod_full_array); _ii++)
		{
			var _current_part_of_array = _cons_prod_full_array[_ii];
			var _temp_array = [];
			array_push(_temp_array,_current_part_of_array[0],_current_part_of_array[1],_current_part_of_array[2],_current_part_of_array[3]);
			
			for(var _kk = 4; _kk < array_length(_current_part_of_array); _kk +=2)
				{
					var _current_name = _current_part_of_array[_kk];
					var _current_value = _current_part_of_array[_kk+1];
					
					var _pp = _kk+2;
					while(_pp < array_length(_current_part_of_array))
						{
							var _compare_name = _current_part_of_array[_pp];
							var _compare_value = _current_part_of_array[_pp+1];
							
							if _current_name = _compare_name
								{
									_current_value += _compare_value;
									array_delete(_current_part_of_array,_pp,2);
								}
							else	{	_pp+=2	}
						}
					array_push(_temp_array,_current_name,_current_value);
				}
			array_push(_array_to_return,_temp_array);
		}

	return(_array_to_return);
}