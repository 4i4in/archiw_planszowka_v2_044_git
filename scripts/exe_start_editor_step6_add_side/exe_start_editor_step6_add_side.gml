//exe_start_editor_step6_add_side
function exe_start_editor_step6_add_side()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_paint_selected = "";
			game_struct.current_menu = "editor_step6_add_side";
			lclick_cooldown_counter = lclick_cooldown;
		}
}