//exe_deep_water_level_minus
function exe_deep_water_level_minus()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.deep_water_level -= mapeditor.terrain_level_step;
			redraw_raw_minimap();
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}