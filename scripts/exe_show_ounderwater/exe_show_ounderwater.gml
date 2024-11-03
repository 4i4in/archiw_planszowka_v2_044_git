//exe_show_ounderwater
function exe_show_ounderwater()
{
	if lclick_cooldown_counter < 1
		{
			game_struct.show_underwater	=	!game_struct.show_underwater;
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
			force_redraw = 1;
		}
}