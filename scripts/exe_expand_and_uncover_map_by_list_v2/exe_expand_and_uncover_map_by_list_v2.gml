function exe_expand_and_uncover_map_by_list_v2(_xyval_tilevalue_list,_sides_num_array)
{
	//visibility input format _xyval_tilevalue_list = [x,y,[_visnum],[detection_modyfier:[],[],[]]];
	//_sides_num_array = [_side_num,s_side_num,...]
	for(var _ii = 0; _ii < array_length(_sides_num_array); _ii++)
		{
			var _current_side_num = _sides_num_array[_ii];
			for(var _kk = 0; _kk < array_length(_xyval_tilevalue_list); _kk++)
				{
					for(var _visnum = 0; _visnum < 3; _visnum++)
						{
							var _center_xx = _xyval_tilevalue_list[_kk][0];
							var _center_yy = _xyval_tilevalue_list[_kk][1];
							var _center_val = _xyval_tilevalue_list[_kk][2][_visnum];
					
							var _temporary_xyval_array = [];
					
							//creating  perimeter array circle
							var _perimeter_array = [];
							var _xx = 0;
							var _yy = _center_val;
							var _dd = 3 - 2*_center_val;
							while(_xx < _yy+1)
								{
									var _push_this = [_xx,_yy];		array_push(_perimeter_array,_push_this);
									var _push_this = [_yy,_xx];		array_push(_perimeter_array,_push_this);
									var _push_this = [_xx,-_yy];	array_push(_perimeter_array,_push_this);
									var _push_this = [_yy,-_xx];	array_push(_perimeter_array,_push_this);
									var _push_this = [-_xx,_yy];	array_push(_perimeter_array,_push_this);
									var _push_this = [-_yy,_xx];	array_push(_perimeter_array,_push_this);
									var _push_this = [-_xx,-_yy];	array_push(_perimeter_array,_push_this);
									var _push_this = [-_yy,-_xx];	array_push(_perimeter_array,_push_this);
									if (_dd < 0)
									    {
									        _dd = _dd + 4 * _xx + 6;
									    }
									else
									    {
									        _dd = _dd + 4 * (_xx - _yy) + 10;
									        _yy = _yy - 1;
									    }
									  _xx = _xx + 1;
								}
					
							for(var _pp = 0; _pp < array_length(_perimeter_array); _pp++)
								{
									var _end_xx = _perimeter_array[_pp][0];
									var _end_yy = _perimeter_array[_pp][1];
									//checking raytracing
									var _visibility_value_here = _center_val;
									var _current_step_xx = 0; var _current_step_yy = 0;
									var _ray_max_length =  point_distance(0,0,_end_xx,_end_yy);
									var _ray_direction = point_direction(0,0,_end_xx,_end_yy);
									var _stepx = lengthdir_x(1,_ray_direction);
									var _stepy = lengthdir_y(1,_ray_direction);
									for(var _step = 0; _step < _ray_max_length; _step++)
										{
											_current_step_xx = _stepx * _step;
											_current_step_yy = _stepy * _step;
													
											xxx1 = round(_center_xx + _current_step_xx);
											yyy1 = round(_center_yy + _current_step_yy);
											if xxx1 < 0 {xxx1 += game_struct.map_xsize};
											if xxx1 > game_struct.map_xsize -1	{xxx1 -= game_struct.map_xsize};
											if yyy1 < 0 {yyy1 += game_struct.map_ysize};
											if yyy1 > game_struct.map_ysize -1	{yyy1 -= game_struct.map_ysize};
											
											var _terrain_modyfiers_array = _xyval_tilevalue_list[_kk][3][_visnum];
											if array_length(_terrain_modyfiers_array) < 2
												{
													_terrain_modyfiers_array = sides_array[_current_side_num][$ "buildings_detection_terrain_modyfier"][@_visnum];
												}
											var _terrain_visibility_modifier = exe_calculate_visibility_modifier_for_xy(xxx1,yyy1,_terrain_modyfiers_array);
											_visibility_value_here += _terrain_visibility_modifier;
											if _visibility_value_here > 0 
												{
													var _duplicate_found = 0;
													for(var _tt = 0; _tt < array_length(_temporary_xyval_array); _tt++)
														{
															var _temp_tile_xyval = _temporary_xyval_array[_tt];
															var _temp_xx = _temp_tile_xyval[0];
															var _temp_yy = _temp_tile_xyval[1];
															var _temp_val = _temp_tile_xyval[2];
															if xxx1 = _temp_xx &&	yyy1 = _temp_yy
																{
																	_duplicate_found = 1;
																	if _visibility_value_here > _temp_val
																		{
																			array_set(_temp_tile_xyval,2,_visibility_value_here)	
																		}
																}
														}
													if _duplicate_found < 1
														{
															var _push_this = [xxx1,yyy1,_visibility_value_here];
															array_push(_temporary_xyval_array,_push_this);
														}
												}
											else	
												{
													var _push_this = [xxx1,yyy1,0.5];
													array_push(_temporary_xyval_array,_push_this);
													break;
												};
										}

								}
							//uncovering for ground
							if _visnum = 0
								{
									for(var _tt = 0; _tt < array_length(_temporary_xyval_array); _tt++)
										{
											var _xx = _temporary_xyval_array[_tt][0];
											var _yy = _temporary_xyval_array[_tt][1];
											var _val = _temporary_xyval_array[_tt][2];
											exe_uncover_ground_visibility_for_tile(_current_side_num,_xx,_yy,_val);
										}
								}
							//uncovering for overwater
							if	_visnum = 1
								{
									for(var _tt = 0; _tt < array_length(_temporary_xyval_array); _tt++)
										{
											var _xx = _temporary_xyval_array[_tt][0];
											var _yy = _temporary_xyval_array[_tt][1];
											var _val = _temporary_xyval_array[_tt][2];
											exe_uncover_overwater_visibility_for_tile(_current_side_num,_xx,_yy,_val);
										}
								}
							//uncovering for underwater
							if	_visnum = 2
								{
									for(var _tt = 0; _tt < array_length(_temporary_xyval_array); _tt++)
										{
											var _xx = _temporary_xyval_array[_tt][0];
											var _yy = _temporary_xyval_array[_tt][1];
											var _val = _temporary_xyval_array[_tt][2];
											exe_uncover_underwater_visibility_for_tile(_current_side_num,_xx,_yy,_val);
										}
								}
						}
				}
		}
}