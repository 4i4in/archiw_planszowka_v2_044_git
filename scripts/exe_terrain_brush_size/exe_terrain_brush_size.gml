//exe_terrain_brush_size
function exe_terrain_brush_size()
{
	if lclick_cooldown_counter < 1
		{
			
			mapeditor.terrain_brush_size	++;
			if mapeditor.terrain_brush_size > mapeditor.terrain_brush_size_max	{mapeditor.terrain_brush_size = 0}
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}