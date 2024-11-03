//exe_terrain_paint_woods
function exe_terrain_paint_woods()
{
	if lclick_cooldown_counter < 1
		{
			if mapeditor.terrain_paint_selected = "paint_woods"	{mapeditor.terrain_paint_selected = ""}
			else {mapeditor.terrain_paint_selected = "paint_woods"};
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}