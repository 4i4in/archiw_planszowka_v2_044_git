//exe_start_editor_step4_fortyfication
function exe_start_editor_step4_fortyfication()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_paint_selected = "";
			game_struct.current_menu = "editor_step4_fortyfication";
			lclick_cooldown_counter = lclick_cooldown;
		}
}