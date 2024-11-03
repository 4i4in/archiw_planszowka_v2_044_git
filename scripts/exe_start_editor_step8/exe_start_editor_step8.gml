//exe_start_editor_step8
function exe_start_editor_step8()
{
	if lclick_cooldown_counter < 1
		{
			mapeditor.terrain_paint_selected = "removing_tool_";
			game_struct.current_menu = "editor_step8";
			lclick_cooldown_counter = lclick_cooldown;
		}
}