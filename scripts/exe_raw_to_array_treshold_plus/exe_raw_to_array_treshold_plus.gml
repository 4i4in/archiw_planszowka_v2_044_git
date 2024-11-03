//exe_raw_to_array_treshold_plus
function exe_raw_to_array_treshold_plus()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_raw_to_array_treshold += mapeditor.terrain_level_step;
			if mapeditor.terrain_raw_to_array_treshold > 0.9
				{	mapeditor.terrain_raw_to_array_treshold = 0.9;	};
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}