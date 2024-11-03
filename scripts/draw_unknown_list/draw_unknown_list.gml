//subscript of draw_sorted_terrain
function draw_unknown_list()
{
	for(var _ii = 0; _ii < ds_list_size(draw_ground_map_u); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_ground_map_u, _ii+0);
			var _yy  = ds_list_find_value(draw_ground_map_u, _ii+1);
			var _pic = ds_list_find_value(draw_ground_map_u, _ii+2);
			switch(_pic)
				{
					case "unknown_0":	draw_sprite_ext(unknown_0,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unknown_1":	draw_sprite_ext(unknown_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unknown_2":	draw_sprite_ext(unknown_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unknown_3":	draw_sprite_ext(unknown_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unknown_4":	draw_sprite_ext(unknown_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unknown_5":	draw_sprite_ext(unknown_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unknown_6":	draw_sprite_ext(unknown_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unknown_7":	draw_sprite_ext(unknown_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unknown_8":	draw_sprite_ext(unknown_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unknown_9":	draw_sprite_ext(unknown_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
				}	
		}

}