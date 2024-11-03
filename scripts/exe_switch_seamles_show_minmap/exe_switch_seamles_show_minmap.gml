//exe_switch_seamles_show_minmap
function exe_switch_seamles_show_minmap()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.seamles_raw_minimap_show	=	!mapeditor.seamles_raw_minimap_show;
			
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}