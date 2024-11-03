//exe_start_editor_step5_merchants
function exe_start_editor_step5_merchants()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_paint_selected = "";
			game_struct.current_menu = "editor_step5_merchants";
			lclick_cooldown_counter = lclick_cooldown;
		}
}