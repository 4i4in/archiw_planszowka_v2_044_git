//exe_raw_to_array_treshold_minus
function exe_raw_to_array_treshold_minus()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_raw_to_array_treshold -= mapeditor.terrain_level_step;
			if mapeditor.terrain_raw_to_array_treshold < mapeditor.terrain_level_step
				{	mapeditor.terrain_raw_to_array_treshold = mapeditor.terrain_level_step;	};
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}