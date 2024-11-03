//exe_start_editor_step5_sheppards
function exe_start_editor_step5_sheppards()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_paint_selected = "";
			game_struct.current_menu = "editor_step5_sheppards";
			lclick_cooldown_counter = lclick_cooldown;
		}
}