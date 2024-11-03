//exe_start_editor_step4_ruins
function exe_start_editor_step4_ruins()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_paint_selected = "";
			game_struct.current_menu = "editor_step4_ruins";
			lclick_cooldown_counter = lclick_cooldown;
		}
}