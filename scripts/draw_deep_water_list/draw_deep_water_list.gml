//subscript of draw_sorted_terrain
function draw_deep_water_list()
{
	for(var _ii = 0; _ii < ds_list_size(draw_ground_map_d); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_ground_map_d, _ii+0);
			var _yy  = ds_list_find_value(draw_ground_map_d, _ii+1);
			var _pic = ds_list_find_value(draw_ground_map_d, _ii+2);
			switch(_pic)
				{
					case "deep_water_0":	draw_sprite_ext(deep_water_0,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deep_water_1":	draw_sprite_ext(deep_water_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deep_water_2":	draw_sprite_ext(deep_water_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deep_water_3":	draw_sprite_ext(deep_water_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deep_water_4":	draw_sprite_ext(deep_water_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deep_water_5":	draw_sprite_ext(deep_water_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deep_water_6":	draw_sprite_ext(deep_water_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deep_water_7":	draw_sprite_ext(deep_water_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deep_water_8":	draw_sprite_ext(deep_water_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deep_water_9":	draw_sprite_ext(deep_water_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
				}	
			
		}

}