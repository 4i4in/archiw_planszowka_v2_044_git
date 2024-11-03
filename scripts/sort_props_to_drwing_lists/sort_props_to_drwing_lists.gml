function sort_props_to_drwing_lists(_array1,_xx,_yy,_tt)
{
	var _array_id1 = _array1[_xx][_yy][$ _tt];
	var _terrain_id = _array1[_xx][_yy][$ "tile_terrain"][@ 0];
	_terrain_id = string_char_at(string(_terrain_id), 1);
	var _props_array_length = array_length(_array_id1);
	for(var _ii = 0; _ii < _props_array_length; _ii++)
		{
			var _props_found = _array1[_xx][_yy][$ _tt][@ _ii];
			if string_starts_with(_props_found, "shallow_")
				{
					ds_list_add(draw_props_map_underwater,xref);
					ds_list_add(draw_props_map_underwater,yref);
					ds_list_add(draw_props_map_underwater,_props_found);
				}
			if string_starts_with(_props_found, "reefs_rocks_")
				{
					ds_list_add(draw_props_map_overwater,xref);
					ds_list_add(draw_props_map_overwater,yref);
					ds_list_add(draw_props_map_overwater,_props_found);
				}
			if string_starts_with(_props_found, "swamps_")
				{
					ds_list_add(draw_props_map_overwater,xref);
					ds_list_add(draw_props_map_overwater,yref);
					ds_list_add(draw_props_map_overwater,_props_found);
				}
			if string_starts_with(_props_found, "salt_lake_")
				{
					ds_list_add(draw_props_map_overwater,xref);
					ds_list_add(draw_props_map_overwater,yref);
					ds_list_add(draw_props_map_overwater,_props_found);
				}
			if string_starts_with(_props_found, "oasis_")
				{
					ds_list_add(draw_props_map_overwater,xref);
					ds_list_add(draw_props_map_overwater,yref);
					ds_list_add(draw_props_map_overwater,_props_found);
				}
			if game_struct.show_trees = 2
				{
					if string_starts_with(_props_found, "forest_")
						{
							ds_list_add(draw_props_map_wood_forest,xref);
							ds_list_add(draw_props_map_wood_forest,yref);
							ds_list_add(draw_props_map_wood_forest,_props_found);
						}
					if string_starts_with(_props_found, "wood_")
						{
							ds_list_add(draw_props_map_wood_forest,xref);
							ds_list_add(draw_props_map_wood_forest,yref);
							ds_list_add(draw_props_map_wood_forest,_props_found);
						}
				}
			if string_starts_with(_props_found, "vulcano_")
				{
					if _terrain_id = "d" ||	 _terrain_id = "z"
						{
							ds_list_add(draw_props_map_underwater,xref);
							ds_list_add(draw_props_map_underwater,yref);
							ds_list_add(draw_props_map_underwater,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_overwater,xref);
							ds_list_add(draw_props_map_overwater,yref);
							ds_list_add(draw_props_map_overwater,_props_found);
						}
				}
			if string_starts_with(_props_found, "rifts_")
				{
					if _terrain_id = "d" ||	 _terrain_id = "z"
						{
							ds_list_add(draw_props_map_underwater,xref);
							ds_list_add(draw_props_map_underwater,yref);
							ds_list_add(draw_props_map_underwater,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_overwater,xref);
							ds_list_add(draw_props_map_overwater,yref);
							ds_list_add(draw_props_map_overwater,_props_found);
						}
				}
			if string_starts_with(_props_found, "craters_")
				{
					if _terrain_id = "d" ||	 _terrain_id = "z"
						{
							ds_list_add(draw_props_map_underwater,xref);
							ds_list_add(draw_props_map_underwater,yref);
							ds_list_add(draw_props_map_underwater,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_overwater,xref);
							ds_list_add(draw_props_map_overwater,yref);
							ds_list_add(draw_props_map_overwater,_props_found);
						}
				}
			if string_starts_with(_props_found, "pollution_")
				{
					if _terrain_id = "d" ||	 _terrain_id = "z"
						{
							ds_list_add(draw_props_map_underwater,xref);
							ds_list_add(draw_props_map_underwater,yref);
							ds_list_add(draw_props_map_underwater,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_overwater,xref);
							ds_list_add(draw_props_map_overwater,yref);
							ds_list_add(draw_props_map_overwater,_props_found);
						}
				}
			if string_starts_with(_props_found, "deasise_")
				{
					if _terrain_id = "d" ||	 _terrain_id = "z"
						{
							ds_list_add(draw_props_map_underwater,xref);
							ds_list_add(draw_props_map_underwater,yref);
							ds_list_add(draw_props_map_underwater,_props_found);
						}
					else
						{
							ds_list_add(draw_props_map_overwater,xref);
							ds_list_add(draw_props_map_overwater,yref);
							ds_list_add(draw_props_map_overwater,_props_found);
						}
				}

		}
}