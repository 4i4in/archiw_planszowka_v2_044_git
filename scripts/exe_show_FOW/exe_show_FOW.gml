//exe_show_FOW
function exe_show_FOW()
{
	if lclick_cooldown_counter < 1
		{
			game_struct.show_FOW	=	!game_struct.show_FOW;
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
			force_redraw = 1;
		}
}