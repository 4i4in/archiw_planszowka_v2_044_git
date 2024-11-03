function exe_activate_avilable_buff(_carry_array)
{
	//_carry_array = [[_xx,_yy,_chosen_group,_chosen_unit,_ii,_buff_timing],_buff_found];
	var _xx = _carry_array[0][0];
	var _yy = _carry_array[0][1];
	var _chosen_group = _carry_array[0][2];
	var _chosen_unit = _carry_array[0][3];
	var _buff_num = _carry_array[0][4];
	var _buff_timing = _carry_array[0][5];
	var _buff_name = _carry_array[1];
	
	var _continue = 0;
	
	var _this_unit = game_board_array[_xx][_yy][$ "units"][_chosen_group][_chosen_unit];
	var _avilable_buffs_reference = -1;
	for(var _ii = 2; _ii < array_length(_this_unit); _ii +=2)
		{
			if _this_unit[_ii] = "buff_list"
				{
					_avilable_buffs_reference = _ii+1; _continue = 1; break;
				}
		}
	if _avilable_buffs_reference < 0	{_continue = 0;};
	
	if _continue > 0
		{
			var _avilable_buff_array = _this_unit[_avilable_buffs_reference];
			if _avilable_buff_array[_buff_num] = _buff_name	{_continue = 1;}
			else
				{
					_continue = 0;
					mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; mo_string = "ALERT!!! something wrong \n with unit array \n att buff list";	
				}
		}
	if _continue > 0
		{
			var _active_buffs_reference = -1;
			for(var _ii = 2; _ii < array_length(_this_unit); _ii +=2)
				{
					if _this_unit[_ii] = "active_buffs"
						{
							_active_buffs_reference = _ii+1; _continue = 1; break;
						}
				}
			if _active_buffs_reference < 0	
				{
					_continue = 0;
					mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; mo_string = "ALERT!!! something wrong \n with unit array \n no active buff list \n in unit array";	
				};
		}
	//exemtions
	if _continue > 0
		{
			if _buff_name == "embark_overwater"
				{
					for(var _ii = 0; _ii < array_length(_this_unit[_active_buffs_reference]); _ii+=2)
						{
							if _this_unit[_active_buffs_reference][_ii] == "embarked"
								{
									_continue = 0;
									mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; mo_string = "no! this unit is embarked!";	
								}
						}
				}
		}
	
	if _continue > 0
		{
			var _buff_already_exist = -1;
			var _existing_value = 0;
			var _active_buff_array = _this_unit[_active_buffs_reference];
			for(var _ii = 0; _ii < array_length(_active_buff_array); _ii +=2)
				{
					if _active_buff_array[_ii] == _buff_name
						{
							_buff_already_exist = _ii; 
							_existing_value = _active_buff_array[_ii+1];
							break;
						}
					
				}
		}
	if _continue > 0	&& _buff_already_exist < 0
		{
			//push buff to active
			var _value_to_push = _buff_timing;
			if _buff_timing > 0
				{
					array_set(game_board_array[_xx][_yy][$ "units"][_chosen_group][_chosen_unit][_avilable_buffs_reference],_buff_num+1,_buff_timing-1);
					_value_to_push = 1;
				}
			array_push(game_board_array[_xx][_yy][$ "units"][_chosen_group][_chosen_unit][_active_buffs_reference],_buff_name,_value_to_push);
		}
	if _continue > 0	&& _buff_already_exist > -1
		{
			if _buff_timing > 0
				{
					array_set(game_board_array[_xx][_yy][$ "units"][_chosen_group][_chosen_unit][_active_buffs_reference],_buff_already_exist+1,_existing_value+1);
					array_set(game_board_array[_xx][_yy][$ "units"][_chosen_group][_chosen_unit][_avilable_buffs_reference],_buff_num+1,_buff_timing-1);
				}
			else
				{
					_continue = 0;
					mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; mo_string = string(_buff_name)+ " already on active list";
				}
		}
	if _continue > 0
		{
			//check if any buff have value of zero to be deleted
			var _check_active_array = game_board_array[_xx][_yy][$ "units"][_chosen_group][_chosen_unit][_active_buffs_reference];
			for(var _ii = array_length(_check_active_array)-1; _ii > 0; _ii-=2)
				{
					if _check_active_array[_ii] == 0
						{
							array_delete(_check_active_array,_ii-1,2)
						}
				}
			var _check_avilable_array = game_board_array[_xx][_yy][$ "units"][_chosen_group][_chosen_unit][_avilable_buffs_reference];
			for(var _ii = array_length(_check_avilable_array)-1; _ii > 0; _ii-=2)
				{
					if _check_avilable_array[_ii] == 0
						{
							array_delete(_check_avilable_array,_ii-1,2)
						}
				}	
			
		}
	if _continue > 0
		{
			exe_update_info_for_tile(_xx,_yy);
		}
}