function sort_terrain_to_drwing_lists(_array1,_xx,_yy,_tt)
{
	var _str = _array1[_xx][_yy][$ _tt][@ 0];
	var _any_match = 0;
	switch(string_char_at(string(_str), 1))
		{
			case "d":	ds_list_add(draw_ground_map_d,xref);
						ds_list_add(draw_ground_map_d,yref);
						ds_list_add(draw_ground_map_d,_str);
						_any_match = 1;
				break;
			case "z":	ds_list_add(draw_ground_map_z,xref);
						ds_list_add(draw_ground_map_z,yref);
						ds_list_add(draw_ground_map_z,_str);
						_any_match = 1;
				break;
			case "s":	ds_list_add(draw_ground_map_s,xref);
						ds_list_add(draw_ground_map_s,yref);
						ds_list_add(draw_ground_map_s,_str);
						_any_match = 1;
				break;
			case "p":	ds_list_add(draw_ground_map_p,xref);
						ds_list_add(draw_ground_map_p,yref);
						ds_list_add(draw_ground_map_p,_str);
						_any_match = 1;
				break;
			case "h":	ds_list_add(draw_ground_map_h,xref);
						ds_list_add(draw_ground_map_h,yref);
						ds_list_add(draw_ground_map_h,_str);
						_any_match = 1;
				break;
			case "m":	ds_list_add(draw_ground_map_m,xref);
						ds_list_add(draw_ground_map_m,yref);
						ds_list_add(draw_ground_map_m,_str);
						_any_match = 1;
				break;
			case "u":	ds_list_add(draw_ground_map_u,xref);
						ds_list_add(draw_ground_map_u,yref);
						ds_list_add(draw_ground_map_u,_str);
						_any_match = 1;
				break;
				
		}
		
	if _any_match = 0
		{
			ds_list_add(draw_ground_map_u,xref);
			ds_list_add(draw_ground_map_u,yref);
			ds_list_add(draw_ground_map_u,"unknown_0");
		}
}