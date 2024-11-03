//exe_hills_level_plus
function exe_hills_level_plus()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.hills_level += mapeditor.terrain_level_step;
			redraw_raw_minimap();
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}