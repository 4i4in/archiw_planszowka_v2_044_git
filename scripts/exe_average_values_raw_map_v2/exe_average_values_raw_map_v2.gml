function exe_average_values_raw_map_v2(_range)
{
	if ds_exists(raw_editor_minimap, ds_type_grid)
		{
			for(xxx = 0; xxx < game_struct.map_xsize; xxx ++)
					{
						for(yyy = 0; yyy < game_struct.map_ysize; yyy ++)
							{	
								var _valinxy = ds_grid_get(raw_editor_minimap,xxx,yyy);
								var _valxy2 = _valinxy;
								var _counter = 1;
								for(xxx2 = xxx -_range+1; xxx2 < xxx +_range; xxx2++)
									{
										for(yyy2 = yyy -_range+1; yyy2 < yyy +_range; yyy2++)
											{
												var _pdist = point_distance(xxx,yyy,xxx2,yyy2);
												if  _pdist < _range+1
													{
														xxx1 = xxx2; yyy1 = yyy2;
														if xxx1<0{xxx1+=game_struct.map_xsize};
														if xxx1>game_struct.map_xsize-1{xxx1-=game_struct.map_xsize};
														if yyy1<0{yyy1+=game_struct.map_ysize};
														if yyy1>game_struct.map_ysize-1{yyy1-=game_struct.map_ysize};
														_valxy2 += ds_grid_get(raw_editor_minimap,xxx1,yyy1);
														_counter ++;
														
													}
											}
									}
								_valinxy = _valxy2 / _counter;
								ds_grid_set(raw_editor_minimap,xxx,yyy,_valinxy);
								
								
								
							}
					}			
			
		}
}