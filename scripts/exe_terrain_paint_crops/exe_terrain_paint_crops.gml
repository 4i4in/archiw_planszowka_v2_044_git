//exe_terrain_paint_crops
function exe_terrain_paint_crops()
{
	if lclick_cooldown_counter < 1
		{
			if mapeditor.terrain_paint_selected = "paint_crops"	{mapeditor.terrain_paint_selected = ""}
			else {mapeditor.terrain_paint_selected = "paint_crops"};
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}