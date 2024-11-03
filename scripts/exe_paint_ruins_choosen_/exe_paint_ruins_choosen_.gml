function exe_paint_ruins_choosen_(_this_utylity)
{
	if lclick_cooldown_counter < 1
		{
			var _construct_string1 = "paint_" + _this_utylity
			if mapeditor.terrain_paint_selected = _construct_string1	{mapeditor.terrain_paint_selected = ""}
			else {mapeditor.terrain_paint_selected = _construct_string1};
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}