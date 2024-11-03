//subscript of draw_sorted_terrain
function draw_unknown_list_black()
{
	for(var _ii = 0; _ii < ds_list_size(draw_ground_map_u); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_ground_map_u, _ii+0);
			var _yy  = ds_list_find_value(draw_ground_map_u, _ii+1);
			draw_sprite_ext(unknown_black_0,0,_xx,_yy,sss,sss,0,-1,1);
		}

}