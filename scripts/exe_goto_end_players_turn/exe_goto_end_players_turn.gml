function exe_goto_end_players_turn()
{
	if lclick_cooldown_counter < 1
		{
			yes_no_srceen = 0;
			exe_end_players_turn();
			lclick_cooldown_counter = lclick_cooldown;
		}
}