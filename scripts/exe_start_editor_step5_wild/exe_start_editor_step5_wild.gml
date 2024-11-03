//exe_start_editor_step5_wild
function exe_start_editor_step5_wild()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_paint_selected = "";
			game_struct.current_menu = "editor_step5_wild";
			lclick_cooldown_counter = lclick_cooldown;
		}
}