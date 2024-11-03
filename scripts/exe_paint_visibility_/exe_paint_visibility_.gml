function exe_paint_visibility_(_choosen_side)
{
	if lclick_cooldown_counter < 1
		{
			var _construct_string1 = "paint_visibility_" + _choosen_side
			if mapeditor.terrain_paint_selected = _construct_string1	{mapeditor.terrain_paint_selected = ""}
			else {mapeditor.terrain_paint_selected = _construct_string1};
			
			if string_starts_with(mapeditor.terrain_paint_selected,"paint_visibility_")
				{
					//automatise in case maps are not created
					exe_generator_side_operational_map();
					
					if _choosen_side = "editor"	
						{	
							game_struct.current_player = -1;
							force_redraw = 1;
						}
					else
						{
							for(var _ii = 0; _ii < array_length(sides_array); _ii++)
								{
									var _side_name_current = sides_array[_ii][$ "side_name"];
									if _choosen_side == _side_name_current
										{
											game_struct.current_player = _ii;
											force_redraw = 1;
										}
								}
						}
				}

			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}