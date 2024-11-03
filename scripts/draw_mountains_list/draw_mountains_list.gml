//subscript of draw_sorted_terrain
function draw_mountains_list()
{
	for(var _ii = 0; _ii < ds_list_size(draw_ground_map_m); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_ground_map_m, _ii+0);
			var _yy  = ds_list_find_value(draw_ground_map_m, _ii+1);
			var _pic = ds_list_find_value(draw_ground_map_m, _ii+2);
			switch(_pic)
				{
					case "mountains_0":	draw_sprite_ext(mountains_0,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "mountains_1":	draw_sprite_ext(mountains_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "mountains_2":	draw_sprite_ext(mountains_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "mountains_3":	draw_sprite_ext(mountains_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "mountains_4":	draw_sprite_ext(mountains_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "mountains_5":	draw_sprite_ext(mountains_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "mountains_6":	draw_sprite_ext(mountains_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "mountains_7":	draw_sprite_ext(mountains_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "mountains_8":	draw_sprite_ext(mountains_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "mountains_9":	draw_sprite_ext(mountains_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
				}	
			
		}

}