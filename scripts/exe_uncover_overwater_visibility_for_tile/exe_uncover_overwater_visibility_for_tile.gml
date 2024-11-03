function exe_uncover_overwater_visibility_for_tile(_ii,_xx,_yy,_val)
{
	var _local_tile_operational = sides_array[_ii][$ "side_operational_map"][_xx][_yy];
	var _local_tile_gameboard = game_board_array[_xx][_yy];
	var _vis_granted_array = sides_array[_ii][$ "visibility_granted"];
	var _this_side = sides_array[_ii][$ "side_name"];
	var _local_terrain = game_board_array[_xx][_yy][$ "tile_terrain"][0];
	
	var _tile_worth_of_update = 0
		{
			//fog of war update
			var _fog_ow_war = _local_tile_operational[$ "fog_of_war"];
			if _fog_ow_war[0] < game_struct.current_turn	{_tile_worth_of_update = 1;};
			if _fog_ow_war[2] < _val	{_tile_worth_of_update = 1;};
		}
		
	if	_tile_worth_of_update > 0
		{		
			array_set(_fog_ow_war,0,game_struct.current_turn);
			array_set(_fog_ow_war,2,_val);	
			
			//is terrain ground or not
			var _terrain_is_water = string_char_at(_local_terrain,1);
			switch(_terrain_is_water)
				{
					case "z" : _terrain_is_water = 1; break;
					case "d" : _terrain_is_water = 1; break;
				}
			if _terrain_is_water != 1	{	_terrain_is_water = 0;	};
			//check active buffs of own units
			var _str_units_groups = _local_tile_gameboard[$ "units"];
			var _active_own_buffs = exe_check_this_unit_groups_string_for_active_own_buffs(_str_units_groups,_this_side);
			
			var _important_buffs_here = ["curious",0,"inspector",0,"spy",0];
			_important_buffs_here = exe_compare_buffs_and_return_values(_important_buffs_here,_active_own_buffs);
			
			var _curious = 0; var _inspector = 0;	var _spy = 0;
			for(var _ee = 0; _ee < array_length(_important_buffs_here); _ee+=2)
				{
					if _important_buffs_here[_ee] = "curious"	{	_curious += game_struct.buffs_values[$ "curious"][0] * _important_buffs_here[_ee+1];	};
					if _important_buffs_here[_ee] = "inspector"	{	_inspector += game_struct.buffs_values[$ "inspector"][0] * _important_buffs_here[_ee+1];	};
					if _important_buffs_here[_ee] = "spy"		{	_spy += game_struct.buffs_values[$ "spy"][0] * _important_buffs_here[_ee+1];	};
				}
			
			//start checking
			if _local_tile_operational != _local_tile_gameboard
				{
					//fog of war update
					var _fog_ow_war = _local_tile_operational[$ "fog_of_war"];
					array_set(_fog_ow_war,0,game_struct.current_turn);
					array_set(_fog_ow_war,2,_val);
			
					// units
					if _local_tile_operational[$ "units"] != _local_tile_gameboard[$ "units"]
						{
							_local_tile_operational[$ "units"] = [];
							var _str_units_groups = _local_tile_gameboard[$ "units"];
							for(var _ee = 0; _ee < array_length(_str_units_groups); _ee++)
								{
									var _this_group_array = _str_units_groups[_ee];
									var _group_control = _this_group_array[0][1];
									if _group_control == _this_side
										{
											array_push(_local_tile_operational[$ "units"],_this_group_array);
										}
									else
										{
											//counting if enemy unit are visible
											var _temp_group = [];
											var _specific_visibility_array = [0];
											for(var _kk = 1; _kk < array_length(_this_group_array); _kk++)
												{
													var _this_unit_visibility = undefined;
													var _this_unit_array = _this_group_array[_kk];
													for(var _nn = 2; _nn < array_length(_this_unit_array); _nn+=2)
														{
															var _name_found = _this_unit_array[_nn];
															if string_starts_with(_name_found,"visibility")
																{
																	if _this_unit_visibility = undefined
																		{
																			_this_unit_visibility = _this_unit_array[_nn+1][1];
																		}
																	else
																		{
																			if _this_unit_visibility < _this_unit_array[_nn+1][1]
																				{
																					_this_unit_visibility = _this_unit_array[_nn+1][1];
																				}
																		}
																}
															if _terrain_is_water = 1
																{
																	if string_starts_with(_name_found,"active_buffs")
																		{
																			var _buffs_array = _this_unit_array[_nn+1];
																			for(var _curent_buff = 0;_curent_buff < array_length(_buffs_array);_curent_buff+=2)
																				{
																					if string_starts_with(_buffs_array[_curent_buff],"underwater")
																						{
																							if _this_unit_visibility = undefined
																								{
																									_this_unit_visibility = 99;
																								}
																							else
																								{
																									if _this_unit_visibility < 99
																										{
																											_this_unit_visibility = 99
																										}
																								}
																						}
																				}
																		}
																}
														}
													if _this_unit_visibility = undefined	{	_this_unit_visibility = 99;	};
													array_push(_specific_visibility_array,_this_unit_visibility);
												}
											//searching if group is visible
											var _lowest_value = 99; 
											for(var _kk = 1; _kk < array_length(_specific_visibility_array); _kk++)
												{
													if _specific_visibility_array[_kk] < _lowest_value	{	_lowest_value = _specific_visibility_array[_kk];	};
												}
											array_set(_specific_visibility_array,0,_lowest_value);
											//do we recognize group or not
											var _group_recognized = 0;
											if _specific_visibility_array[0] + game_struct.visibility_level_struct[$ "vis_recognize_units_group"] < _val
												{
													_group_recognized = 1;
													array_push(_temp_group,_this_group_array[0]);		
												}
											else //we do not recognize
												{
													_group_recognized = 0;
													array_push(_temp_group,["group_control","unknown"]);
												}
											if _group_recognized > 0
												{
													for(var _kk = 1; _kk < array_length(_specific_visibility_array); _kk++)
														{
															if _specific_visibility_array[_kk] + game_struct.visibility_level_struct[$ "vis_recognize_unit_specyfic"] < _val
																{
																	array_push(_temp_group,_this_group_array[_kk]);
																}
															else
																{
																	var _unit_found = return_unknown_unit();
																	array_push(_temp_group,_unit_found);
																}
														}
												}
											else	//unrecognized group
												{
													for(var _kk = 1; _kk < array_length(_specific_visibility_array); _kk++)
														{
															if _specific_visibility_array[_kk] + game_struct.visibility_level_struct[$ "vis_recognize_units_number"] < _val
																{
																	var _unit_found = return_unknown_unit();
																	array_push(_temp_group,_unit_found);
																}
														}
												}
											//check if group have any units
											if array_length(_temp_group) < 2
												{
													var _unit_found = return_unknown_unit();
													array_push(_temp_group,_unit_found);
												}
											array_push(_local_tile_operational[$ "units"],_temp_group);
										}
								}
						}
					//ground
					if _terrain_is_water = 1
						{
							//show vis_tile_props
							if _val > game_struct.visibility_level_struct[$ "vis_sea_travel_props"]
								{
									if _local_tile_operational[$ "tile_props"] != _local_tile_gameboard[$ "tile_props"]
										{
											var _newly_constructed_prop_list = [];
											var _props_to_search = _local_tile_gameboard[$ "tile_props"];
											var _props_to_find = game_struct.visibility_level_struct[$ "list_sea_travel_props"];
											for(var _pts = 0; _pts < array_length(_props_to_search); _pts++)
												{
													var _prop_on_gameboard =  _props_to_search[_pts];
													for(var _ptf = 0; _ptf < array_length(_props_to_find); _ptf++)
														{
															var _prop_on_list = _props_to_find[_ptf];
															if string_starts_with(_prop_on_gameboard,_prop_on_list)
																{
																	array_push(_newly_constructed_prop_list,_prop_on_gameboard);
																}
														}
												}
											var _operational_props = _local_tile_operational[$ "tile_props"];
											for(var _ncpl = 0; _ncpl < array_length(_newly_constructed_prop_list);_ncpl++)
												{
													var _prop_to_check = _newly_constructed_prop_list[_ncpl];
													var _prop_found = -1;
													for(var _oper_props = 0; _oper_props < array_length(_operational_props); _oper_props++)
														{
															var _operational_prop_found = _operational_props[_oper_props];
															var _checking_substring = string_delete(_operational_prop_found,string_length(_operational_prop_found)-1,2);
															if string_starts_with(_prop_to_check,_checking_substring)
																{
																	_prop_found = _oper_props;
																}
														}
													if _prop_found > -1
														{
															array_set(_operational_props,_prop_found,_prop_to_check);
														}
													else
														{
															array_push(_operational_props,_prop_to_check);	
														}
												}	
										}
								}
				
							//show vis_other_facility	
							var _facilties_on_tile = _local_tile_gameboard[$ "facility"];
							var _num_of_facilities = 0;
							for(var _tt = 0; _tt < array_length(_facilties_on_tile); _tt++)
								{
									var _facility_here = _facilties_on_tile[_tt];
									if string_starts_with(_facility_here,"city_")
										{
											var _city_value = string_char_at(_facility_here, string_length(_facility_here));
											_num_of_facilities += real(_city_value);
										}
									else	{	_num_of_facilities++;	};
								}
							if _val > game_struct.visibility_level_struct[$ "vis_other_facility"] - _num_of_facilities
								{
									_local_tile_operational[$ "facility"] = _local_tile_gameboard[$ "facility"];
								}
						}
					//show vis_own_utylity
					if _val > game_struct.visibility_level_struct[$ "vis_own_utylity"]
						{
							if _local_tile_operational[$ "facility"] != _local_tile_gameboard[$ "facility"]
								{
									var _side_name_to_check = sides_array[_ii][$ "side_name"];
									var _tile_gameboard_facilies = _local_tile_gameboard[$ "facility"];
									var _recognized_own_facilities = [];
									for(var _tt = 0; _tt < array_length(_tile_gameboard_facilies); _tt++)
										{
											var _facility_found = _tile_gameboard_facilies[_tt];
											var _delete_here = string_pos("_",_facility_found);
											var _check_string = string_delete(_facility_found,1,_delete_here);
											if string_starts_with(_check_string,_side_name_to_check)
												{
													array_push(_recognized_own_facilities,_facility_found);
												}
										}
									if array_length(_recognized_own_facilities) > 0
										{
											//show resources for my facilities
											_local_tile_operational[$ "tile_resources"] = _local_tile_gameboard[$ "tile_resources"];
											//proceed
											var _worth_to_push = [];
											var _city_side_string = "city_"+string(_side_name_to_check);
											for(var _tt = 0; _tt < array_length(_recognized_own_facilities); _tt++)
												{
													var _facility_found = _recognized_own_facilities[_tt];
													var _city_check = -1;
													if string_starts_with(_facility_found,_city_side_string)	{	_city_check = 1;	};
													//searching current facilities
													var _tile_operational_facilies = _local_tile_operational[$ "facility"];
													var _already_exist = -1;
													for(var _bb = 0; _bb < array_length(_tile_operational_facilies); _bb++)
														{
															var _facility_compare = _tile_operational_facilies[_bb];
															if _city_check < 0
																{
																	if _facility_found = _facility_compare	{	_already_exist = 1;	};
																}
															else
																{
																	if string_starts_with(_facility_compare,_city_side_string)
																		{
																			if _facility_compare != _facility_found
																				{
																					array_set(_tile_gameboard_facilies,_bb,_facility_found);
																					_already_exist = 1;
																				}
																			else if _facility_compare != _facility_found	{	_already_exist = 1;	};
																		}
																}
														}
													//add to stack
													if _already_exist < 0
														{
															array_push(_worth_to_push, _facility_found);
														}
												}
											if array_length(_worth_to_push) > 0
												{
													for(var _tt = 0; _tt < array_length(_worth_to_push); _tt++)
														{
															array_push(_local_tile_operational[$ "facility"],_worth_to_push[_tt]);
														}
												}
										}
								}
						}
					//ground
					if _terrain_is_water = 1
						{
							//terrain
							_local_tile_operational[$ "tile_terrain"][0] = _local_tile_gameboard[$ "tile_terrain"][0];
							_local_tile_operational[$ "river"] = _local_tile_gameboard[$ "river"];
						}
					if _terrain_is_water = 0
						{
							//show visibility_granted
							if _val > game_struct.visibility_level_struct[$ "vis_granted"]
								{
									//terrain
									_local_tile_operational[$ "tile_terrain"][0] = _local_tile_gameboard[$ "tile_terrain"][0];
									//setings	
									_local_tile_operational[$ "conected_cities"] = _local_tile_gameboard[$ "conected_cities"];
									_local_tile_operational[$ "city_setings"] = _local_tile_gameboard[$ "city_setings"];
									_local_tile_operational[$ "control"] = _local_tile_gameboard[$ "control"];
					
			
									//visibility_granted
									for(var _tt = 0; _tt < array_length(_vis_granted_array); _tt++)
										{
											var _vis_granted_for = _vis_granted_array[_tt];
					
											//river
											if string_starts_with(_vis_granted_for,"river")
												{
													if	_local_tile_operational[$ "river"] != _local_tile_gameboard[$ "river"]
														{
															_local_tile_operational[$ "river"] = _local_tile_gameboard[$ "river"];
														}
												}
											//road
											if string_starts_with(_vis_granted_for,"road")
												{
													if	_local_tile_operational[$ "road"] != _local_tile_gameboard[$ "road"]
														{
															_local_tile_operational[$ "road"] = _local_tile_gameboard[$ "road"];
														}
												}
											//props
											if string_starts_with(_vis_granted_for,"tile_props_")
												{
													if	_local_tile_operational[$ "tile_props"] != _local_tile_gameboard[$ "tile_props"]
														{
															var _search_for = string_delete(_vis_granted_for,1,string_length("tile_props_"));
															var _terrain_props_array = _local_tile_gameboard[$ "tile_props"];
															var _prop_on_gameboard_tile = "";
															for(var _kk = 0; _kk < array_length(_terrain_props_array); _kk++)
																{
																	var _prop_here = _terrain_props_array[_kk];
																	if string_starts_with(_prop_here,_search_for)
																		{
																			_prop_on_gameboard_tile = _prop_here;
																		}
																}
															if string_length(_prop_on_gameboard_tile) > 0
																{
																	var _prop_on_side_map = "";
																	var _keep_index = -1;
																	var _terrain_props_array = _local_tile_operational[$ "tile_props"];
																	for(var _kk = 0; _kk < array_length(_terrain_props_array); _kk++)
																		{
																			var _prop_here = _terrain_props_array[_kk];
																			if string_starts_with(_prop_here,_search_for)
																				{
																					_prop_on_side_map = _prop_here;
																					_keep_index = _kk;
																				}
																		}
																	if string_length(_prop_on_side_map) > 0	&& _keep_index > -1
																		{
																			if _prop_on_gameboard_tile != _prop_on_side_map
																				{
																					array_set(_terrain_props_array,_keep_index,_prop_on_gameboard_tile);
																				}
																		}
																	else
																		{
																			array_push(_terrain_props_array,_prop_on_gameboard_tile);
																		}
																}
														}
												}
										}
								}
						}
				}
		}
}