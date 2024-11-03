//exe_start_editor_step4_city
function exe_start_editor_step4_city()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_paint_selected = "";
			game_struct.current_menu = "editor_step4_city";
			lclick_cooldown_counter = lclick_cooldown;
		}
}