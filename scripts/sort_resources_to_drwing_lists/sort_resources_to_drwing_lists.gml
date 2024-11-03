function sort_resources_to_drwing_lists(_array1,_xx,_yy,_tt)
{
	var _items_found = 0;
	var _shift_x = 16 / game_struct.zoom_scale;
	var _shift_y = 16 / game_struct.zoom_scale;
	var _array_id1 = _array1[_xx][_yy][$ _tt];
	var _props_array_length = array_length(_array_id1);
	for(var _ii = 0; _ii < _props_array_length; _ii++)
		{
			var _props_found = _array1[_xx][_yy][$ _tt][@ _ii];
			if string_starts_with(_props_found, "animals_")
				{
					_items_found ++;
					if game_struct.zoom_scale = 1
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,"animals_5");
						}
				}
			if string_starts_with(_props_found, "coal_")
				{
					_items_found++;
					if game_struct.zoom_scale = 1
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,"coal_5");
						}
				}
			if string_starts_with(_props_found, "crops_")
				{
					_items_found++;
					if game_struct.zoom_scale = 1
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,"crops_5");
						}
				}
			if string_starts_with(_props_found, "gems_")
				{
					_items_found++;
					if game_struct.zoom_scale = 1
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,"gems_5");
						}
				}
			if string_starts_with(_props_found, "granite_")
				{
					_items_found++;
					if game_struct.zoom_scale = 1
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,"granite_5");
						}
				}
			if string_starts_with(_props_found, "iron_")
				{
					_items_found++;
					if game_struct.zoom_scale = 1
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,"iron_5");
						}
				}
			if string_starts_with(_props_found, "marble_")
				{
					_items_found++;
					if game_struct.zoom_scale = 1
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,"marble_5");
						}
				}
			if string_starts_with(_props_found, "precious_metals_")
				{
					_items_found++;
					if game_struct.zoom_scale = 1
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,"precious_metals_5");
						}
				}
			if string_starts_with(_props_found, "rare_metals_")
				{
					_items_found++;
					if game_struct.zoom_scale = 1
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,"rare_metals_5");
						}
				}
			if string_starts_with(_props_found, "salt_")
				{
					_items_found++;
					if game_struct.zoom_scale = 1
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,"salt_5");
						}
				}
			if string_starts_with(_props_found, "stones_")
				{
					_items_found++;
					if game_struct.zoom_scale = 1
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,"stones_5");
						}
				}
			if string_starts_with(_props_found, "water_")
				{
					_items_found++;
					if game_struct.zoom_scale = 1
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_resources,xref +_shift_x);
							ds_list_add(draw_props_map_resources,yref +_shift_y * _items_found);
							ds_list_add(draw_props_map_resources,"water_5");
						}
				}
		}
}