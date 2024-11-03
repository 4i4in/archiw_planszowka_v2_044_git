function exe_city_paint_(_choosen_side)
{
	if lclick_cooldown_counter < 1
		{
			var _construct_string1 = "paint_city_" + _choosen_side
			if mapeditor.terrain_paint_selected = _construct_string1	{mapeditor.terrain_paint_selected = ""}
			else {mapeditor.terrain_paint_selected = _construct_string1};
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}