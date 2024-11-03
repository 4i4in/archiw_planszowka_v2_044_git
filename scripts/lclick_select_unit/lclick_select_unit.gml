function lclick_select_unit()
{
	if mouse_check_button(mb_left)	&&	lclick_cooldown_counter <1	&&	yes_no_srceen < 1
		{
			if point_in_rectangle(mouse_x,mouse_y,0,0,wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size,	wgh)	&&
				!point_in_rectangle(mouse_x,mouse_y,game_struct.mimimap_xpos,game_struct.mimimap_ypos,
									game_struct.mimimap_xpos	+	game_struct.map_xsize*game_struct.minimap_scale,
									game_struct.mimimap_ypos	+	game_struct.map_ysize*game_struct.minimap_scale,
									)
				{
					if display_terrain_menu = 0
						{
							var _own_group_exist = -1;
							//checking control side
							var _curent_side = "";
							if game_struct.current_player > -1
								{
									_curent_side = sides_array[game_struct.current_player][$ "side_name"];
								}
							//groups
							var _str_units_groups = operational_array[mouse_xcell][mouse_ycell][$ "units"];
							for(var _ii = 0; _ii < array_length(_str_units_groups); _ii++)
								{
									var _this_group_array = _str_units_groups[_ii];
									var _group_control = _this_group_array[0][1];
									if string_starts_with(_group_control,_curent_side)
										{
											_own_group_exist = _ii;
											this_city_xy_reference = [[_ii,-1]];
											break;
										}
								}
							if _own_group_exist > -1
								{
									//loading selection already loaded
									display_terrain_menu_x = mouse_xcell;
									display_terrain_menu_y = mouse_ycell;
									display_terrain_menu = 21;
									exe_refresh_group_values(display_terrain_menu_x,display_terrain_menu_y,_own_group_exist);
								}
							lclick_cooldown_counter = lclick_cooldown;
						}
				}
		}
}