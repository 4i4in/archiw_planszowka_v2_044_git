//subscript of draw_sorted_terrain
function draw_hills_list()
{
	for(var _ii = 0; _ii < ds_list_size(draw_ground_map_h); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_ground_map_h, _ii+0);
			var _yy  = ds_list_find_value(draw_ground_map_h, _ii+1);
			var _pic = ds_list_find_value(draw_ground_map_h, _ii+2);
			switch(_pic)
				{
					case "hills_0":	draw_sprite_ext(hills_0,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "hills_1":	draw_sprite_ext(hills_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "hills_2":	draw_sprite_ext(hills_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "hills_3":	draw_sprite_ext(hills_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "hills_4":	draw_sprite_ext(hills_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "hills_5":	draw_sprite_ext(hills_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "hills_6":	draw_sprite_ext(hills_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "hills_7":	draw_sprite_ext(hills_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "hills_8":	draw_sprite_ext(hills_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "hills_9":	draw_sprite_ext(hills_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
				}	
			
		}

}