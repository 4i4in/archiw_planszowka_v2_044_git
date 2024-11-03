//exe_plain_level_plus
function exe_plain_level_plus()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.plain_level += mapeditor.terrain_level_step;
			if mapeditor.plain_level > mapeditor.hills_level - mapeditor.terrain_level_step
				{	mapeditor.plain_level = mapeditor.hills_level - mapeditor.terrain_level_step	};

			redraw_raw_minimap();
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}