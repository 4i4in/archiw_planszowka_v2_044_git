function exe_calculate_this_city_production(_this_city_array,_this_city_admin,_production_array)
{
	for(var _ss = 0; _ss < array_length(_this_city_array); _ss++)
		{
			var _this_tile_array = _this_city_array[_ss];
			var _this_tile_admin = _this_city_admin[_ss][4];
			var _xx = _this_tile_array[0];
			var _yy = _this_tile_array[1];
			for(var _ii = 1; _ii < array_length(_this_tile_admin); _ii +=2)
				{
					var _admin_order_here = _this_tile_admin[_ii];
					var _admin_value_here = _this_tile_admin[_ii+1];
					//stayhome
					if string_starts_with(_admin_order_here,"stayhome")
						{
							for(var _kk = 0; _kk < array_length(sides_array); _kk++)
								{
									var _loop_options = sides_array[_kk][$ "stayhome_production"];
									for(var _gg = 0; _gg < array_length(_loop_options); _gg+=2)
										{
											var _this_side_option = _loop_options[_gg];
											var _this_side_value = _loop_options[_gg+1];
											if string_starts_with(_this_side_option,_admin_order_here)
												{
													var _checking_options = string_delete(_this_side_option,1,string_length(_admin_order_here)+1);
													if string_starts_with(_checking_options,"prop")
														{
															var _reduced_string = string_delete(_checking_options,1,string_length("prop_"));
															var _clip_here = string_pos("_",_reduced_string);
															var _check_prop = string_delete(_reduced_string,_clip_here,20);
															var _production_here = string_delete(_reduced_string,1,_clip_here);
															for(var _nn = 4; _nn < array_length(_this_tile_array); _nn +=2)
																{
																	var _prop_on_tile = _this_tile_array[_nn];
																	var _value_on_prop = _this_tile_array[_nn+1];
																	if string(_check_prop) = string(_prop_on_tile)
																		{
																			//buffing
																			var _mined_resource_name = string_delete(_reduced_string,1,string_length(_check_prop)+1);
																			var _buff_multipler = exe_check_production_multipler_buffs(_kk,_mined_resource_name,"stayhome",_xx,_yy);
																			
																			//pushing to array
																			var _push_value = _admin_value_here * _value_on_prop * _this_side_value * _buff_multipler;
																			var _push_name = "mined_"+string(_mined_resource_name);
																			array_push(_production_array[_ss],_push_name,_push_value);
																		}
																}
														}
													if string_starts_with(_checking_options,"resource")
														{
															var _reduced_string = string_delete(_checking_options,1,string_length("resource_"));
															_production_here = _reduced_string;
															var _number_of_u = string_count("_", _reduced_string);
															if _number_of_u < 1
																{
																	var _clip_here = string_pos("_",_reduced_string);
																	var _check_prop = string_delete(_reduced_string,_clip_here,20);
																}
															else
																{
																	var _clip_here = string_pos("_",_reduced_string);
																	var _check_prop = string_delete(_reduced_string,_clip_here,20);
																	_reduced_string = string_delete(_reduced_string,1,_clip_here);
																	_clip_here = string_pos("_",_reduced_string);
																	_check_prop += "_" + string_delete(_reduced_string,_clip_here,20);
																}
															for(var _nn = 4; _nn < array_length(_this_tile_array); _nn +=2)
																{
																	var _prop_on_tile = _this_tile_array[_nn];
																	var _value_on_prop = _this_tile_array[_nn+1];
																	if string(_check_prop) = string(_prop_on_tile)
																		{
																			//buffing
																			var _buff_multipler = exe_check_production_multipler_buffs(_kk,_production_here,"stayhome",_xx,_yy);
																			
																			//pushing to array
																			var _push_value = _admin_value_here * _value_on_prop * _this_side_value * _buff_multipler;
																			var _push_name = "mined_"+string(_production_here);
																			array_push(_production_array[_ss],_push_name,_push_value);
																		}
																}
																	
														}
													if string_starts_with(_checking_options,"river")
														{
															var _reduced_string = string_delete(_checking_options,1,string_length("river_"));
															var _production_here = string_delete(_checking_options,string_length("river"),20);
															var _river_count = 0;
															for(var _nn = 4; _nn < array_length(_this_tile_array); _nn +=2)
																{
																	var _prop_on_tile = _this_tile_array[_nn];
																	if string_starts_with(_prop_on_tile,"rivers")	{_river_count++};
																}
															if _river_count > 0
																{
																	//buffing
																	var _buff_multipler = exe_check_production_multipler_buffs(_kk,_production_here,"stayhome",_xx,_yy);
																	
																	//pushing to array
																	var _push_value = _river_count * _admin_value_here * _this_side_value * _buff_multipler;
																	array_push(_production_array[_ss],_reduced_string,_push_value);
																}
														}
													if string_starts_with(_checking_options,"road")
														{
																	
														}
													if string_starts_with(_checking_options,"terrain")
														{
																	
														}
												}
										}
								}
						}
					//mining
					if	string_starts_with(_admin_order_here,"utylity")	&&
						string_ends_with(_admin_order_here,"mine")	&&
						_admin_value_here > 0
						{
							for(var _kk = 0; _kk < array_length(sides_array); _kk++)
								{
									var _loop_options = sides_array[_kk][$ "mining"];
									for(var _gg = 0; _gg < array_length(_loop_options); _gg+=2)
										{
											var _this_side_option = _loop_options[_gg];
											if _admin_order_here = _this_side_option
												{
													var _resource_options = sides_array[_kk][$ "mining_mine_ability"];
													for(var _nn = 0; _nn < array_length(_resource_options); _nn++)
														{
															var _option_name = _resource_options[_nn];
															for(var _bb = 4; _bb < array_length(_this_tile_array); _bb +=2)
																{
																	var _resource_found = _this_tile_array[_bb];
																	if _resource_found = _option_name
																		{
																			var _this_side_value = _loop_options[_gg+1];
																			var _resource_value = _this_tile_array[_bb+1];
																			
																			//buffing
																			var _production_here = _resource_found;
																			var _buff_multipler = exe_check_production_multipler_buffs(_kk,_production_here,"mining",_xx,_yy);
																	
																			//pushing to array
																			var _push_value = _admin_value_here * _resource_value * _this_side_value * _buff_multipler;
																			var _push_name = "mined_"+string(_resource_found);
																			array_push(_production_array[_ss],_push_name,_push_value);
																		}
																}
														}
												}
										}
								}
						}
					//lumberjack
					if	string_starts_with(_admin_order_here,"utylity")	&&
						string_ends_with(_admin_order_here,"lumberjack")	&&
						_admin_value_here > 0
						{
							for(var _kk = 0; _kk < array_length(sides_array); _kk++)
								{
									var _loop_options = sides_array[_kk][$ "lumberjack"];
									for(var _gg = 0; _gg < array_length(_loop_options); _gg+=2)
										{
											if _admin_order_here == _loop_options[_gg]
												{
													for(var _bb = 4; _bb < array_length(_this_tile_array); _bb +=2)
														{
															var _resource_found = _this_tile_array[_bb];
															if _resource_found = "forest"	||	_resource_found = "wood"
																{
																	var _this_side_value = _loop_options[_gg+1];
																	var _resource_value = _this_tile_array[_bb+1];
																	
																	//buffing
																	var _production_here = "lumber";
																	var _buff_multipler = exe_check_production_multipler_buffs(_kk,_production_here,"mining",_xx,_yy);
																	
																	//pushing to array
																	var _push_value = _admin_value_here * _resource_value * _this_side_value;
																	var _push_name = "mined_lumber";
																	array_push(_production_array[_ss],_push_name,_push_value);
																}
														}
												}
										}
								}
						}
					//farming?
				}
		}
}