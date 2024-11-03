//exe_show_trees
function exe_show_trees()
{
	if lclick_cooldown_counter < 1
		{
			game_struct.show_trees++;
			if game_struct.show_trees > 2 {game_struct.show_trees=0};
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
			force_redraw = 1;
		}
}