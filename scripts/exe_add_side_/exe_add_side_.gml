function exe_add_side_(_side_num)
{
	if lclick_cooldown_counter < 1
		{
			var _add_side =  avilable_sides[@ _side_num];
			if array_length(sides_array) < game_struct.max_sides
				{
					var _duplicate_found = 0;
					for(var _nn = 0; _nn < array_length(sides_array); _nn++)
						{
							var _current_side = sides_array[@ _nn];
							if _current_side = _add_side
								{
									_duplicate_found = 1; break;
								}
						}
					if _duplicate_found = 0	{	array_push(sides_array,_add_side);	};
					else
						{
							mouseover_info = 1;
							mo_xpos = mouse_x;
							mo_ypos = mouse_y;
							mo_string = "Side already on list. \n Choose diferent.";
						}
					
				}
			else
				{
					mouseover_info = 1;
					mo_xpos = mouse_x;
					mo_ypos = mouse_y;
					mo_string = "Too many sides! \n Remove someone first";
				}
				
			mapeditor.terrain_paint_selected = "";
			game_struct.current_menu = "editor_step6";
			lclick_cooldown_counter = lclick_cooldown;	
		}
}