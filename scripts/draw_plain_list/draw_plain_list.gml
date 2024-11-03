//subscript of draw_sorted_terrain
function draw_plain_list()
{
	for(var _ii = 0; _ii < ds_list_size(draw_ground_map_p); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_ground_map_p, _ii+0);
			var _yy  = ds_list_find_value(draw_ground_map_p, _ii+1);
			var _pic = ds_list_find_value(draw_ground_map_p, _ii+2);
			switch(_pic)
				{
					case "plain_0":	draw_sprite_ext(plain_0,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "plain_1":	draw_sprite_ext(plain_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "plain_2":	draw_sprite_ext(plain_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "plain_3":	draw_sprite_ext(plain_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "plain_4":	draw_sprite_ext(plain_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "plain_5":	draw_sprite_ext(plain_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "plain_6":	draw_sprite_ext(plain_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "plain_7":	draw_sprite_ext(plain_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "plain_8":	draw_sprite_ext(plain_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "plain_9":	draw_sprite_ext(plain_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
				}	
			
		}

}