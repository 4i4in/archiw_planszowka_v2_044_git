function exe_check_if_any_unit_call_negative_AP(_execution_AP_cost,_pass_array)
{
	//var _current_x = _pass_array[0];
	//var _current_y = _pass_array[1];
	var _str_chosen_group = _pass_array[2];
	//var _curent_side = _pass_array[3];
	//var _source_x = _pass_array[4];
	//var _source_y = _pass_array[5];
	//var _action = _pass_array[6];
	//var _legal_terrains_array = _pass_array[7];
	
	var _continue = 1;
	var _prompt_string = "";
	for(var _ii = 1; _ii < array_length(_execution_AP_cost); _ii++)
		{
			var _value_found = _execution_AP_cost[_ii][0];
			if _value_found < 0
				{
					_continue = 0;		
					_prompt_string += _str_chosen_group[_ii][1] + ", pos " + string(_ii) + " in stack lacks " + string(_value_found) + " AP \n";
					
				}
			if _execution_AP_cost[_ii][1] != ""
				{
					_prompt_string += _execution_AP_cost[_ii][1] + "\n";
				}
		}
	if _prompt_string != ""
		{
			mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y; mo_string = _prompt_string;	
		}
	return(_continue)
}