//exe_start_editor_step5_miners
function exe_start_editor_step5_miners()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_paint_selected = "";
			game_struct.current_menu = "editor_step5_miners";
			lclick_cooldown_counter = lclick_cooldown;
		}
}