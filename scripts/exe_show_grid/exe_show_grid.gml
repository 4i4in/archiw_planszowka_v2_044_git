//exe_show_grid
function exe_show_grid()
{
	if lclick_cooldown_counter < 1
		{
			game_struct.show_grid	=	!game_struct.show_grid;
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
			force_redraw = 1;
		}
}