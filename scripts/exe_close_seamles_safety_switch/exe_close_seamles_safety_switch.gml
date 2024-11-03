//exe_close_seamles_safety_switch
function exe_close_seamles_safety_switch()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.seamles_raw_minimap_show	=	0;
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}