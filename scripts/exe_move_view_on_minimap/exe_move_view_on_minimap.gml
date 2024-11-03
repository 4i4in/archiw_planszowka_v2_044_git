// click on minimap to move screen
function exe_move_view_on_minimap()
{
	if mouse_check_button(mb_left)	&&	lclick_cooldown_counter <1
		{
			
			var _x_click = (mouse_x - game_struct.mimimap_xpos) / game_struct.minimap_scale;
			var _y_click = (mouse_y - game_struct.mimimap_ypos) / game_struct.minimap_scale;
			
			_x_click = floor(_x_click - game_struct.map_xsize/2);
			_y_click = floor(_y_click - game_struct.map_ysize/2);
			
			_x_click *= game_struct.cell_size/game_struct.zoom_scale;
			_y_click *= game_struct.cell_size/game_struct.zoom_scale;
			
			game_struct.cam_xpos += _x_click;
			game_struct.cam_ypos += _y_click;
			
			force_redraw = 1;
			lclick_cooldown_counter = lclick_cooldown;
		}
}