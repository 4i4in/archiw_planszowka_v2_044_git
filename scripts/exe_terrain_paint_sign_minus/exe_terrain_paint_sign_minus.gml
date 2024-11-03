//exe_terrain_paint_sign_minus
function exe_terrain_paint_sign_minus()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_paint_sign	= -1;
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}