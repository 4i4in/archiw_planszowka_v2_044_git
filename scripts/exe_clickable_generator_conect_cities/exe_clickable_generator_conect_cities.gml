function exe_clickable_generator_conect_cities()
{
	if lclick_cooldown_counter < 1
		{
			var _time_current = -current_time;
			
			exe_generator_conect_cities();
			
			_time_current += current_time;
			_time_current /= 1000;
			
			yes_no_srceen = 1;
			yes_no_prompt = "report \n conecting cities done \n click whatever \n execution time : " + string(_time_current) + " second";
			yes_no_exe = "exe_yes_no_srceen_no";
			
			lclick_cooldown_counter = lclick_cooldown;
		}
}