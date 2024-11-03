function exe_paint_units_side_choosen_unit(_pass_array)
{
	if lclick_cooldown_counter < 1
		{
			//_pass_array = [[_string_side,_this_unit[1]],_this_unit[0] + "\n",_this_unit[1]];
			var _choosen_side = _pass_array[0][0];
			var _this_unit_1 = _pass_array[0][1];
			var _construct_string1 = "paint_units_" + _choosen_side + "_" + _this_unit_1;
			if mapeditor.terrain_paint_selected = _construct_string1	{mapeditor.terrain_paint_selected = ""}
			else {mapeditor.terrain_paint_selected = _construct_string1};
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}