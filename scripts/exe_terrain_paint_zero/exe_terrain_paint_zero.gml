//exe_terrain_paint_zero
function exe_terrain_paint_zero()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_paint_sign	= 0;
			mapeditor.terrain_paint_selected = "";
			
			ds_list_destroy(draw_highlite_map);
			draw_highlite_map = ds_list_create();
		
		
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}