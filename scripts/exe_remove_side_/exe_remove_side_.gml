function exe_remove_side_(_ff)
{	if lclick_cooldown_counter < 1
		{
			array_delete(sides_array, _ff, 1);
			
			lclick_cooldown_counter = 3*lclick_cooldown;
		}
	
}