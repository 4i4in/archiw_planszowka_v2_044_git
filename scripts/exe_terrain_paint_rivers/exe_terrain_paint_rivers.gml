//exe_terrain_paint_rivers
function exe_terrain_paint_rivers()
{
	if lclick_cooldown_counter < 1
		{
			if mapeditor.terrain_paint_selected = "paint_rivers"	{mapeditor.terrain_paint_selected = ""; mapeditor.paint_continuos = 0;}
			else {mapeditor.terrain_paint_selected = "paint_rivers"; mapeditor.paint_continuos = 0;};
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}