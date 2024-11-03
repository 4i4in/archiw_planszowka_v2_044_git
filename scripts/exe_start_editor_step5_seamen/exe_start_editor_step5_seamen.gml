//exe_start_editor_step5_seamen
function exe_start_editor_step5_seamen()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_paint_selected = "";
			game_struct.current_menu = "editor_step5_seamen";
			lclick_cooldown_counter = lclick_cooldown;
		}
}