function sort_units_to_drwing_lists(_array1,_xx,_yy,_tt)
{
	var _array_id1 = _array1[_xx][_yy][$ _tt];
	if array_length(_array_id1) > 0
		{
			var _curent_side = "";
			var _current_side_unit_exist = -1;
			if game_struct.current_player > -1
				{
					_curent_side = sides_array[game_struct.current_player][$ "side_name"];
				}
			//searching groups on tile
			var _sides_on_tile = [];
			for(var _ii = 0; _ii < array_length(_array_id1); _ii++)
				{
					//counting sides
					var _array_string = _array_id1[_ii][0];
					for(var _kk = 0; _kk < array_length(_array_string);_kk+=2)
						{
							var _1string = _array_string[_kk];
							if string_starts_with(_1string,"group_control")
								{
									var _this_group_side = _array_string[_kk+1];
									var _match_found = 0;
									for(var _pp = 0; _pp < array_length(_sides_on_tile);_pp++)
										{
											var _name_found = _sides_on_tile[_pp];
											if string_starts_with(_name_found,_this_group_side)
												{
													_match_found = 1; break;
												}
										}
									if _match_found = 0
										{
											array_push(_sides_on_tile,_this_group_side);	
										}
									if _current_side_unit_exist < 0
										{
											if string_starts_with(_this_group_side,_curent_side)
												{
													_current_side_unit_exist = _ii;
												}
										}
								}
						}
				}
			//prompting unit picture
			var _unit_pic = "";
			if _current_side_unit_exist < 0	{	_current_side_unit_exist = 0;	};
			var _array_string = _array_id1[_current_side_unit_exist][1];
			for(var _kk = 0; _kk < array_length(_array_string);_kk+=2)
				{
					var _1string = _array_string[_kk];
					if string_starts_with(_1string,"picture")
						{
							_unit_pic = _array_string[_kk+1];
						}
				}
			ds_list_add(draw_units_map,xref);
			ds_list_add(draw_units_map,yref);
			ds_list_add(draw_units_map,_unit_pic);
			
			
			//prompting sides ico
			if array_length(_sides_on_tile) = 1
				{
					var _props_found = "_64x64_" + string(_sides_on_tile[0]) + "_ico_transparent";
					ds_list_add(draw_units_map,xref);
					ds_list_add(draw_units_map,yref);
					ds_list_add(draw_units_map,_props_found);
				}
			if array_length(_sides_on_tile) > 1
				{
					var _temp_xx = xref;
					var _temp_yy = yref;
					var _step = game_struct.cell_size/2;
					for(var _ii = 0; _ii < array_length(_sides_on_tile); _ii++)
						{
							var _props_found = "_32x32_" + string(_sides_on_tile[_ii]) + "_ico_transparent";
							ds_list_add(draw_units_map,_temp_xx);
							ds_list_add(draw_units_map,_temp_yy);
							ds_list_add(draw_units_map,_props_found);
							_temp_xx += _step;
							if _temp_xx > (xref + _step)	{	_temp_yy += _step;	_temp_xx = xref;	};
						}
				}
			
		}

}