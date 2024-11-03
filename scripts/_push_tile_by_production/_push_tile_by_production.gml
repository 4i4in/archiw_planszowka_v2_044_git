function _push_tile_by_production(_push_this,_utylity_array_here,_find_pop_here,_array_all_resource_here)
{
	/*
	//find population for work
	var _unused_population = array_create(0);
	for(var _ii = 0; _ii < array_length(_find_pop_here); _ii+=2)
		{
			var _resource_here = _find_pop_here[_ii];
			var _value_here = _find_pop_here[_ii+1];
			if string_starts_with(_resource_here,"unused_")
				{
					array_push(_unused_population,_resource_here,_value_here);
				}
		}
	*/
	//find utylity
	
	for(var _ii = 0; _ii < array_length(_utylity_array_here); _ii+=2)
		{
			var _utylity_name_here = _utylity_array_here[_ii];
			var _utylity_value_here = _utylity_array_here[_ii+1];
			
			//mining
			for(var _ss = 0; _ss < array_length(sides_array); _ss++)
				{
					var _consumption_array_here = 	sides_array[_ss][$ "mining"];
					for(var _pp = 0; _pp < array_length(_consumption_array_here); _pp+=2)
						{
							var _production_name_here = 	_consumption_array_here[_pp];
							var _production_value_here = 	_consumption_array_here[_pp+1];
							
							if string(_production_name_here) = string(_utylity_name_here)
								{
									for(var _tt = 0; _tt < array_length(_array_all_resource_here); _tt +=2)
										{
											var _resurce_name_here = _array_all_resource_here[_tt];
											var _resurce_value_here = _array_all_resource_here[_tt+1];
											var _mining_ability_here = sides_array[_ss][$ "mining_mine_ability"];
											for(var _jj = 0; _jj < array_length(_mining_ability_here); _jj++)
												{
													var _we_mine_here = _mining_ability_here[_jj];
													if _resurce_name_here = _we_mine_here
														{
															var _pop_reduction = "unused_"+string(sides_array[_ss][$ "side_name"]);
															var _resurce_name_here = "mined_" + string(_resurce_name_here);
															var _resurce_value_here = _production_value_here * _resurce_value_here * _utylity_value_here;
															array_push(_push_this,_resurce_name_here,_resurce_value_here,_pop_reduction,-_utylity_value_here);
														}
												}
										}
								}
						}
				}
			//food supply
			for(var _ss = 0; _ss < array_length(sides_array); _ss++)
				{
					var _consumption_array_here = 	sides_array[_ss][$ "food_supply"];
					var _terrain_here = operational_array[_push_this[0]][_push_this[1]][$ "tile_terrain"];
					_terrain_here = _terrain_here[0];
					var _props_here = operational_array[_push_this[0]][_push_this[1]][$ "tile_props"];
					var _prod_base_value = 0;
					var _prod_multipler_value = 1;
					var _water_usage = 0;
					for(var _pp = 0; _pp < array_length(_consumption_array_here); _pp+=2)
						{
							var _production_name_here = 	_consumption_array_here[_pp];
							var _production_value_here = 	_consumption_array_here[_pp+1];
							
							if string_starts_with(_production_name_here,_utylity_name_here)
								{
									var _prod_terrain_prop =  string_delete(_production_name_here,1,string_length(_utylity_name_here)+1);
									if string_starts_with(_terrain_here,_prod_terrain_prop)	{	_prod_base_value = 	_production_value_here;};
									// props - mostly wood, forest
									for(var _kk = 0; _kk < array_length(_props_here); _kk++)
										{
											var _check_prop = _props_here[_kk];
											if string_starts_with(_check_prop,_prod_terrain_prop)
												{
													var _prop_value = string_delete(_check_prop,1,string_length(_prod_terrain_prop)+1);
													if string_length(_prop_value) = 1
														{
															_prop_value = real(_prop_value);
															_prod_multipler_value *= _production_value_here*_prop_value;
														}
												}
										}
									//resurce animals, crops
									for(var _kk = 0; _kk < array_length(_array_all_resource_here); _kk+=2)
										{
											var _check_prop = _array_all_resource_here[_kk];
											var _prop_value = _array_all_resource_here[_kk+1];
											if string_starts_with(_check_prop,_prod_terrain_prop)
												{
													_prod_multipler_value *= _production_value_here*_prop_value;
													_water_usage += _prop_value;
												}
										}
								}
						}
					if _prod_base_value * _prod_multipler_value > 0
						{
							var _resurce_name_here = "food";
							var _resurce_value_here = _prod_base_value * _prod_multipler_value * _utylity_value_here;
							var _pop_reduction = "unused_"+string(sides_array[_ss][$ "side_name"]);
							array_push(_push_this,_resurce_name_here,_resurce_value_here,_pop_reduction,-_utylity_value_here);
							if _water_usage != 0
								{
									array_push(_push_this,"water",-_water_usage);
								}
						}
				}
			//water supply
			for(var _ss = 0; _ss < array_length(sides_array); _ss++)
				{
					var _consumption_array_here = 	sides_array[_ss][$ "water_supply"];
					var _terrain_here = operational_array[_push_this[0]][_push_this[1]][$ "tile_terrain"];
					_terrain_here = _terrain_here[0];
					var _props_here = operational_array[_push_this[0]][_push_this[1]][$ "tile_props"];
					var _river_here = operational_array[_push_this[0]][_push_this[1]][$ "river"];
					_river_here = array_length(_river_here);
					var _prod_base_value = 0;
					var _prod_multipler_value = 1;
					for(var _pp = 0; _pp < array_length(_consumption_array_here); _pp+=2)
						{
							var _production_name_here = 	_consumption_array_here[_pp];
							var _production_value_here = 	_consumption_array_here[_pp+1];
							
							if string_starts_with(_production_name_here,_utylity_name_here)
								{
									var _prod_terrain_prop =  string_delete(_production_name_here,1,string_length(_utylity_name_here)+1);
									if string_starts_with(_terrain_here,_prod_terrain_prop)	{	_prod_base_value = 	_production_value_here;};
									// props - mostly wood, forest
									for(var _kk = 0; _kk < array_length(_props_here); _kk++)
										{
											var _check_prop = _props_here[_kk];
											if string_starts_with(_check_prop,_prod_terrain_prop)
												{
													var _prop_value = string_delete(_check_prop,1,string_length(_prod_terrain_prop)+1);
													_prop_value = real(_prop_value);
													_prod_multipler_value *= _production_value_here*_prop_value;
												}
										}
									//resurce animals, crops
									for(var _kk = 0; _kk < array_length(_array_all_resource_here); _kk+=2)
										{
											var _check_prop = _array_all_resource_here[_kk];
											var _prop_value = _array_all_resource_here[_kk+1];
											if string_starts_with(_check_prop,_prod_terrain_prop)
												{
													_prod_multipler_value *= _production_value_here*_prop_value;
												}
										}
									if _river_here > 0
										{
											var _check_prop = "rivers";
											var _prop_value = _river_here;
											if string_starts_with(_check_prop,_prod_terrain_prop)
												{
													_prod_multipler_value *= _production_value_here*_prop_value;
												}
										}
								}
						}
					if _prod_base_value * _prod_multipler_value > 0
						{
							var _resurce_name_here = "water";
							var _resurce_value_here = _prod_base_value * _prod_multipler_value * _utylity_value_here;
							var _pop_reduction = "unused_"+string(sides_array[_ss][$ "side_name"]);
							array_push(_push_this,_resurce_name_here,_resurce_value_here,_pop_reduction,-_utylity_value_here);
						}
				}
			//mining without mine - stones for home and similiar
			if string_starts_with(_utylity_name_here,"city_")
				{
					for(var _ss = 0; _ss < array_length(sides_array); _ss++)
						{
							var _test_string_for_name = string_delete(_utylity_name_here,1,string_length("city_"));
							var _side_name = sides_array[_ss][$ "side_name"];
							if string(_side_name) = string(_test_string_for_name)
								{
									for(var _tt = 0; _tt < array_length(_array_all_resource_here); _tt +=2)
										{
											var _resurce_name_here = _array_all_resource_here[_tt];
											var _resurce_value_here = _array_all_resource_here[_tt+1];
											var _mining_ability_here = sides_array[_ss][$ "mining_nomine_ability"];
											for(var _jj = 0; _jj < array_length(_mining_ability_here); _jj++)
												{
													var _we_mine_here = _mining_ability_here[_jj];
													if _resurce_name_here = _we_mine_here
														{
															var _pop_reduction = "unused_"+string(sides_array[_ss][$ "side_name"]);
															var _resurce_name_here = "mined_" + string(_resurce_name_here);
															var _resurce_value_here = _resurce_value_here * _utylity_value_here;
															array_push(_push_this,_resurce_name_here,_resurce_value_here,_pop_reduction,-_utylity_value_here);
														}
												}
										}
								}
						}
				}
			//wood production
			for(var _ss = 0; _ss < array_length(sides_array); _ss++)
				{
					var _consumption_array_here = 	sides_array[_ss][$ "lumberjack"];
					for(var _pp = 0; _pp < array_length(_consumption_array_here); _pp+=2)
						{
							var _production_name_here = 	_consumption_array_here[_pp];
							var _production_value_here = 	_consumption_array_here[_pp+1];
							
							if string_starts_with(_production_name_here,_utylity_name_here)
								{
									//search for wood forest on tile
									var _wood_forest_here = 0;
									var _tile_props = operational_array[_push_this[0]][_push_this[1]][$ "tile_props"];
									for(var _tt = 0; _tt < array_length(_tile_props); _tt++)
										{
											var _props_name = _tile_props[_tt];
											if string_starts_with(_props_name,"forest")
												{
													_props_name = string_delete(_props_name,1,string_length("forest_"));
													_wood_forest_here += real(_props_name);
												}
										}
									for(var _tt = 0; _tt < array_length(_tile_props); _tt++)
										{
											var _props_name = _tile_props[_tt];
											if string_starts_with(_props_name,"wood")
												{
													_props_name = string_delete(_props_name,1,string_length("wood_"));
													_wood_forest_here += real(_props_name);
												}
										}	
									if _wood_forest_here > 0
										{
											//chopping wood
											var _chopped_wood = _utylity_value_here * _production_value_here * _wood_forest_here;
											var _pop_reduction = "unused_"+string(sides_array[_ss][$ "side_name"]);
											//case of city taking resource for free
											if string_starts_with(_utylity_name_here,"city_")
												{
													array_push(_push_this,"mined_wood",_chopped_wood);
												}
											else	//case no city using labor
												{
													array_push(_push_this,"mined_wood",_chopped_wood,_pop_reduction,-_utylity_value_here);
												}
										}
								}
						}
				}
		}
	//cleaning _push_this
	for (var _ii = 4; _ii < array_length(_push_this); _ii += 2)
		{
		    var _current_name = _push_this[_ii];
		    var _current_value = _push_this[_ii + 1];
    
		    var _kk = _ii + 2;
		    while (_kk < array_length(_push_this))
			    {
			        var _current_2name = _push_this[_kk];
			        var _current_2value = _push_this[_kk + 1];
        
			        if (_current_name == _current_2name)
				        {
				            _current_value += _current_2value;
				            array_set(_push_this, _ii + 1, _current_value);
				            array_delete(_push_this, _kk, 2);
				        }
			        else
				        {
				            _kk += 2;
				        }
			    }
		}
	//delete(_unused_population);
	return(_push_this);
}