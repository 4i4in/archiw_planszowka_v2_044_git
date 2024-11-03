//exe_terrain_paint_shallow_waters
function exe_terrain_paint_shallow_waters()
{
	if lclick_cooldown_counter < 1
		{
			if mapeditor.terrain_paint_selected = "paint_shallow_waters"	{mapeditor.terrain_paint_selected = ""}
			else {mapeditor.terrain_paint_selected = "paint_shallow_waters"};
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}