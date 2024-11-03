//subscript of draw_sorted_terrain
function draw_roads()
{
	for(var _ii = 0; _ii < ds_list_size(draw_roads_map); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_roads_map, _ii+0);
			var _yy  = ds_list_find_value(draw_roads_map, _ii+1);
			var _pic = ds_list_find_value(draw_roads_map, _ii+2);
			switch(_pic)
				{
					
					case "roads_0":	draw_sprite_ext(roads_0,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "roads_1":	draw_sprite_ext(roads_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "roads_2":	draw_sprite_ext(roads_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "roads_3":	draw_sprite_ext(roads_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "roads_4":	draw_sprite_ext(roads_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "roads_5":	draw_sprite_ext(roads_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "roads_6":	draw_sprite_ext(roads_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "roads_7":	draw_sprite_ext(roads_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "roads_8":	draw_sprite_ext(roads_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
				}	
			
		}

}