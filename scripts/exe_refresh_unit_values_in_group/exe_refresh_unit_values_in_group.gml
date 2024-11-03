function exe_refresh_unit_values_in_group(_xx,_yy,_group_num,_unit_num,_group_size)
{
	var _unit_to_update = game_board_array[_xx][_yy][$ "units"][_group_num][_unit_num];
	
	
	var _vis_reference = -1;
	var _detection_value = -1;
	var _base_values = -1;
	var _carry_transport = -1;
	var _active_buffs = -1;
	var _buff_list = -1;
	var _hiding_bonus_arr = -1;
	for(var _ii = 2; _ii < array_length(_unit_to_update); _ii +=2)
		{
			if _unit_to_update[_ii] == "visibility"			{_vis_reference = _ii+1};
			if _unit_to_update[_ii] == "detection_value"	{_detection_value = _ii+1};
			if _unit_to_update[_ii] == "base_values"		{_base_values = _ii+1};
			if _unit_to_update[_ii] == "carry_transport"	{_carry_transport = _ii+1};
			if _unit_to_update[_ii] == "active_buffs"		{_active_buffs = _ii+1};
			if _unit_to_update[_ii] == "buff_list"			{_buff_list = _ii+1};
			if _unit_to_update[_ii] == "hiding_bonus"		{_hiding_bonus_arr = _ii+1};
		}
		
	//update visibility
	if _vis_reference > -1	&&	_base_values > -1
		{
			var _current_vis = 0;
			for(var _ee = 0; _ee < array_length(_unit_to_update[_base_values]); _ee+=2)
				{
					if _unit_to_update[_base_values][_ee] == "visibility"	{_current_vis = _unit_to_update[_base_values][_ee+1];};
				}
			if _hiding_bonus_arr > -1
				{
					var _pass_array = _unit_to_update[_hiding_bonus_arr];
					var _hiding_bonus = exe_calculate_hiding_bonus(_xx,_yy,_pass_array);
					_current_vis += _hiding_bonus;
				}
			if _active_buffs > -1
				{
					var _important_buffs_here = [	"concealed",0	];
					var _own_buff_list = _unit_to_update[_active_buffs];
					var _important_buffs_here = exe_compare_buffs_and_return_values(_important_buffs_here,_own_buff_list);
			
					for(var _ee = 0; _ee < array_length(_important_buffs_here); _ee+=2)
						{
							if _important_buffs_here[_ee] = "concealed"	{	_current_vis += game_struct.buffs_values[$ "concealed"][0] * _important_buffs_here[_ee+1];	};
						}
				}
			_current_vis -= _group_size;
			var _max_vis =		_unit_to_update[_vis_reference][0];
			if _current_vis > _max_vis	{_current_vis = _max_vis};
			
	
			game_board_array[_xx][_yy][$ "units"][_group_num][_unit_num][_vis_reference][1] = _current_vis;
		}
	
}