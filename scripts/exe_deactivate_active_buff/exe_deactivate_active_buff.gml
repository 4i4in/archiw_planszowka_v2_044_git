function exe_deactivate_active_buff(_carry_array)
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
	if _buff_timing > -2	{_continue = 1;}
	else 
		{
			mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; mo_string = "This buff is compulsory. \n It must be undone other way. \n Probably it is a curse.";	
		}
	
	if _continue > 0
		{
			var _this_unit = game_board_array[_xx][_yy][$ "units"][_chosen_group][_chosen_unit];
			var _active_buffs_reference = -1;
			for(var _ii = 2; _ii < array_length(_this_unit); _ii +=2)
				{
					if _this_unit[_ii] = "active_buffs"
						{
							_active_buffs_reference = _ii+1; _continue = 1; break;
						}
				}
			if _active_buffs_reference < 0	{_continue = 0;};
		}
	if _continue > 0
		{
			var _active_buff_array = _this_unit[_active_buffs_reference];
			if _active_buff_array[_buff_num] = _buff_name	{_continue = 1;}
			else
				{
					_continue = 0;
					mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; mo_string = "ALERT!!! something wrong \n with unit array \n att active buffs";	
				}
		}
	if _continue > 0	&&	_buff_timing == -1
		{
			array_delete(game_board_array[_xx][_yy][$ "units"][_chosen_group][_chosen_unit][_active_buffs_reference],_buff_num,2);
			//deactivating execution
		}
	if _continue > 0	&&	_buff_timing > 0
		{
			//cast spell	deactivating execution
		}
	if _continue > 0
		{
			exe_update_info_for_tile(_xx,_yy);	
		}
}