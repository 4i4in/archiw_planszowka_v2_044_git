function create_circle_on_noise_map(_noise_scale)
{
	var _cuurent_x = irandom(game_struct.map_xsize-1);
	var _cuurent_y = irandom(game_struct.map_ysize-1);
	var _isl_size = irandom(_noise_scale)+_noise_scale;
	var _isle_param = random(10)-5;
	for(xxx = _cuurent_x - _isl_size+1; xxx < _cuurent_x + _isl_size; xxx ++)
		{
			for(yyy = _cuurent_y - _isl_size+1; yyy < _cuurent_y + _isl_size; yyy ++)
				{
					//round version
					if point_distance(xxx,yyy,_cuurent_x,_cuurent_y) < _isl_size
						{
							xxx1 = xxx; yyy1 = yyy;
							if xxx1 < 0 {xxx1 += game_struct.map_xsize}; //map wraper
							if xxx1 > game_struct.map_xsize-1 {xxx1 -= game_struct.map_xsize};
							if yyy1 < 0 {yyy1 += game_struct.map_ysize};
							if yyy1 > game_struct.map_ysize-1 {yyy1 -= game_struct.map_ysize};
							var _val0 = ds_grid_get(raw_editor_minimap,xxx1,yyy1);
							_val0 = _val0 + sign(_isle_param) * (random(_isle_param) + 1);
							if _val0 > 8 { _val0 = random(2)+4;	};
							if _val0 < 2 { _val0 = random(3)-3;	};
							ds_grid_set(raw_editor_minimap,xxx1,yyy1,_val0);
						}
				}
		}	
}