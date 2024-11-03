function exe_send_pop_to_work_in(_carry_array)
{
	if lclick_cooldown_counter < 1
		{
			var _keep_reference_to_tile = _carry_array[0];
			var _utylity_name = _carry_array[1];
			var _pop_to_transfer_value = _carry_array[2];
			
			var _admin_tile = this_city_administration[_keep_reference_to_tile][4];
			var _order_exist = -1;
			var _avilable_pop = 0;	var _keep_stayhome_name = -1;
			//searching for stayhome population of this side
			for(var _ii = 1; _ii < array_length(_admin_tile); _ii+=2)
				{
					var _admin_order_found = _admin_tile[_ii];
					var _admin_order_value = _admin_tile[_ii+1];
					if string_starts_with(string(_admin_order_found),"stayhome")
						{
							_admin_order_found = string_delete(_admin_order_found,1,string_length("stayhome_"));
							var _corect_side = string_count(string(_admin_order_found),string(_utylity_name));
							if _corect_side > 0
								{
									_avilable_pop = _admin_order_value;
									_keep_stayhome_name = _ii+1;
								}
						}
				}	
			//searching for correspondent armin utylity order
			for(var _ii = 1; _ii < array_length(_admin_tile); _ii+=2)
				{
					var _admin_order_found = _admin_tile[_ii];
					if string(_admin_order_found) = string(_utylity_name)	{_order_exist = _ii;};
				}
			//not found, adding
			if (_pop_to_transfer_value > 0	&&	_order_exist < 0	&& _keep_stayhome_name > -1	&&	_avilable_pop >	0)
				{
					_avilable_pop -= _pop_to_transfer_value;
					var _target_array = this_city_administration[_keep_reference_to_tile][4];
					array_push(_admin_tile,_utylity_name,_pop_to_transfer_value);
					array_set(_target_array,_keep_stayhome_name,_avilable_pop);
				}
			//found
			if (_order_exist > -1	&&	_keep_stayhome_name > -1	&&	_avilable_pop - _pop_to_transfer_value > -1)
				{
					var _value = _admin_tile[_order_exist+1];
					_value += _pop_to_transfer_value;
					var _target_array = this_city_administration[_keep_reference_to_tile][4];
					_avilable_pop -= _pop_to_transfer_value;
					if _value > -1	&&	_avilable_pop > -1
						{
							array_set(_target_array,_order_exist+1,_value);
							array_set(_target_array,_keep_stayhome_name,_avilable_pop);
						}
				}
			//cleaning 0 values
			exe_clean_0values_from_admin_tile(_keep_reference_to_tile);
			//saveing tile
			exe_save_tile_administration_on_map(_keep_reference_to_tile);
			this_city_admin_set = 0;
			
			lclick_cooldown_counter = lclick_cooldown;
		}
	
}