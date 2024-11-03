function exe_yes_no_srceen_no()
{
	if lclick_cooldown_counter < 1
		{
			yes_no_cover_background = "";
			yes_no_srceen = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}