//subscript of draw_sorted_terrain
function draw_FOW()
{
	for(var _ii = 0; _ii < ds_list_size(draw_FOW_map); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_FOW_map, _ii+0);
			var _yy  = ds_list_find_value(draw_FOW_map, _ii+1);
			var _pic = ds_list_find_value(draw_FOW_map, _ii+2);
			switch(_pic)
				{
					case "_FOW_0":	draw_sprite_ext(_FOW_0,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "_FOW_1":	draw_sprite_ext(_FOW_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "_FOW_2":	draw_sprite_ext(_FOW_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "_FOW_3":	draw_sprite_ext(_FOW_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "_FOW_4":	draw_sprite_ext(_FOW_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
				}	
		}
}