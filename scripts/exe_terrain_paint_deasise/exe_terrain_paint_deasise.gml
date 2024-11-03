//exe_terrain_paint_deasise
function exe_terrain_paint_deasise()
{
	if lclick_cooldown_counter < 1
		{
			if mapeditor.terrain_paint_selected = "paint_deasise"	{mapeditor.terrain_paint_selected = ""}
			else {mapeditor.terrain_paint_selected = "paint_deasise"};
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}