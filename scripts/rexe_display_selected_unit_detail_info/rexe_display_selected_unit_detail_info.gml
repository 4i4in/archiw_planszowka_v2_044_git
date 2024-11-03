function rexe_display_selected_unit_detail_info(_array_info)
{
	if rclick_cooldown_counter < 1
		{	
			_array_info = _array_info[0];
			if array_length(_array_info) > 0
				{
					var _same_array = 1;
					if array_length(this_city_resources) == array_length(_array_info)
						{
							for(var _ii = 0; _ii < array_length(this_city_resources);_ii++)
								{
									if this_city_resources[_ii] != _array_info[_ii]	{_same_array = 0;break;};
								}
						}
					else	{_same_array = 0;};
					
					if _same_array = 1
						{
							this_city_resources = [];
						}
					else
						{
							this_city_resources = _array_info;
						}
				}
			rclick_cooldown_counter = lclick_cooldown;	
		}
}