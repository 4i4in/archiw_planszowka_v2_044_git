//subscript of draw_sorted_terrain
function draw_sand_list()
{
	for(var _ii = 0; _ii < ds_list_size(draw_ground_map_s); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_ground_map_s, _ii+0);
			var _yy  = ds_list_find_value(draw_ground_map_s, _ii+1);
			var _pic = ds_list_find_value(draw_ground_map_s, _ii+2);
			switch(_pic)
				{
					case "sand_0":	draw_sprite_ext(sand_0,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "sand_1":	draw_sprite_ext(sand_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "sand_2":	draw_sprite_ext(sand_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "sand_3":	draw_sprite_ext(sand_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "sand_4":	draw_sprite_ext(sand_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "sand_5":	draw_sprite_ext(sand_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "sand_6":	draw_sprite_ext(sand_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "sand_7":	draw_sprite_ext(sand_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "sand_8":	draw_sprite_ext(sand_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "sand_9":	draw_sprite_ext(sand_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
				}	
			
		}

}