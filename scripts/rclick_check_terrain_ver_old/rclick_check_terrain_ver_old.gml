//utylity
function rclick_check_terrain_ver_old()
{
	if mouse_check_button_pressed(mb_right)	&&	rclick_cooldown_counter <1	&&	screen_move_by_mouse == 1
		{
			if mo_string = ""
				{
					if point_in_rectangle(mouse_x,mouse_y,0,0,wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size,wgh)
						{
							mo_xpos = mouse_x;
							mo_ypos = mouse_y;
							mo_string = "";
							
							
							mo_string += "Terrain button is conected for debug \n and shows whole terrain array \n choose props or any !terrain \n to see gameplay prompt \n";
							mo_string += "x_cell : " + string(mouse_xcell)	+ " | y_cell : " + string(mouse_ycell) + "\n";
							aaa = operational_array[mouse_xcell][@ mouse_ycell];
							aaa = string_replace_all(aaa,"{","");
							aaa = string_replace_all(aaa,"}","");
							aaa = string_replace_all(aaa,"[","");
							aaa = string_replace_all(aaa,"]","");
							aaa = string_replace_all(aaa,",","\n");
							aaa = string_replace_all(aaa,":",":\n");
							mo_string += string(aaa);	
			
							mouseover_info = 1;
							rclick_cooldown_counter = rclick_cooldown;
						}
					else	{mo_xpos = 0;	mo_ypos = 0; mo_string = "";};
				}
			else {mo_xpos = 0;	mo_ypos = 0;	mo_string = "";}
		}
}