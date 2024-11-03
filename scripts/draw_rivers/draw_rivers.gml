//subscript of draw_sorted_terrain
function draw_rivers()
{
	for(var _ii = 0; _ii < ds_list_size(draw_rivers_map); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_rivers_map, _ii+0);
			var _yy  = ds_list_find_value(draw_rivers_map, _ii+1);
			var _pic = ds_list_find_value(draw_rivers_map, _ii+2);
			switch(_pic)
				{
					
					case "rivers_0":	draw_sprite_ext(rivers_0,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_1":	draw_sprite_ext(rivers_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_2":	draw_sprite_ext(rivers_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_3":	draw_sprite_ext(rivers_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_4":	draw_sprite_ext(rivers_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_5":	draw_sprite_ext(rivers_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_6":	draw_sprite_ext(rivers_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_7":	draw_sprite_ext(rivers_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_8":	draw_sprite_ext(rivers_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "rivers_10":	draw_sprite_ext(rivers_10,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_11":	draw_sprite_ext(rivers_11,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_12":	draw_sprite_ext(rivers_12,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_13":	draw_sprite_ext(rivers_13,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_14":	draw_sprite_ext(rivers_14,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_15":	draw_sprite_ext(rivers_15,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_16":	draw_sprite_ext(rivers_16,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rivers_17":	draw_sprite_ext(rivers_17,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
				}	
			
		}

}