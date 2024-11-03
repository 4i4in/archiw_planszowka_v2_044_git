//utylity
function rclick_check_terrain()
{
	if mouse_check_button(mb_right)	&&	rclick_cooldown_counter <1
		{
			var _restricted_rclick = 0;
			if point_in_rectangle(mouse_x,mouse_y,restricted_x1,restricted_y1,restricted_x2,restricted_y2)
				{_restricted_rclick = 1;}
			if point_in_rectangle(mouse_x,mouse_y,0,0,wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size,wgh)	&&
				display_terrain_menu == 0	&&	_restricted_rclick = 0
				{
					display_terrain_menu_x = mouse_xcell;
					display_terrain_menu_y = mouse_ycell;
					display_terrain_menu_xpos = mouse_x;
					display_terrain_menu_ypos = mouse_y;
					display_terrain_menu = 1;
					
					exe_terrain_paint_zero();
					rclick_cooldown_counter = rclick_cooldown;
				}
			if point_in_rectangle(mouse_x,mouse_y,0,0,wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size,wgh)	&&
				display_terrain_menu != 0 &&	rclick_cooldown_counter <1	&&	_restricted_rclick = 0
				{
					//save administration?
					exe_clear_city_arrays();
					
					revoke_right_click_results();
					
					restricted_x1 = -1;	restricted_x2 = -1;	restricted_y1 = -1;	restricted_y2 = -1;
					
					display_terrain_menu = 0;
					rclick_cooldown_counter = rclick_cooldown;
				}
		}	
}