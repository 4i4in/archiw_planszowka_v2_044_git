//exe_terrain_paint_reefs_rocks
function exe_terrain_paint_reefs_rocks()
{
	if lclick_cooldown_counter < 1
		{
			if mapeditor.terrain_paint_selected = "paint_reef_rocks"	{mapeditor.terrain_paint_selected = ""}
			else {mapeditor.terrain_paint_selected = "paint_reef_rocks"};
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}