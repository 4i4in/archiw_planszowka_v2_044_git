function exe_average_values_raw_map(_range)
{
	if ds_exists(raw_editor_minimap, ds_type_grid)
		{
			for(xxx = 0; xxx < game_struct.map_xsize; xxx ++)
					{
						for(yyy = 0; yyy < game_struct.map_ysize; yyy ++)
							{	
								var _valinxy = ds_grid_get(raw_editor_minimap,xxx,yyy);
					
								xxx1 = xxx + _range;
								if xxx1 > game_struct.map_xsize -1	{	xxx1 -= game_struct.map_xsize};
								yyy1 = yyy;
								var _valinxy1 = ds_grid_get(raw_editor_minimap,xxx1,yyy1);
								var _pdist = 1/point_distance(xxx,yyy,xxx1,yyy1);
								_valinxy = lerp(_valinxy,_valinxy1,_pdist)
								
								xxx1 = xxx;
								yyy1 = yyy - _range;
								if yyy1 < 0	{	yyy1 += game_struct.map_ysize};
								_valinxy1 = ds_grid_get(raw_editor_minimap,xxx1,yyy1);
								_pdist = 1/point_distance(xxx,yyy,xxx1,yyy1);
								_valinxy = lerp(_valinxy,_valinxy1,_pdist)
					
								xxx1 = xxx - _range;
								if xxx1 < 0	{	xxx1 += game_struct.map_xsize};
								yyy1 = yyy;
								_valinxy1 = ds_grid_get(raw_editor_minimap,xxx1,yyy1);
								_pdist = 1/point_distance(xxx,yyy,xxx1,yyy1);
								_valinxy = lerp(_valinxy,_valinxy1,_pdist)
					
								xxx1 = xxx;
								yyy1 = yyy + _range;
								if yyy1 > game_struct.map_ysize -1	{	yyy1 -= game_struct.map_ysize};
								_valinxy1 = ds_grid_get(raw_editor_minimap,xxx1,yyy1);
								_pdist = 1/point_distance(xxx,yyy,xxx1,yyy1);
								_valinxy = lerp(_valinxy,_valinxy1,_pdist)
					
								
								ds_grid_set(raw_editor_minimap,xxx,yyy,_valinxy);
							}
					}			
			
		}
}