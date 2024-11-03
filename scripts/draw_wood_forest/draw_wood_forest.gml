//subscript of draw_sorted_terrain
function draw_wood_forest()
{
	for(var _ii = 0; _ii < ds_list_size(draw_props_map_wood_forest); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_props_map_wood_forest, _ii+0);
			var _yy  = ds_list_find_value(draw_props_map_wood_forest, _ii+1);
			var _pic = ds_list_find_value(draw_props_map_wood_forest, _ii+2);
			switch(_pic)
				{
					
					case "wood_1":	draw_sprite_ext(wood_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_2":	draw_sprite_ext(wood_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_3":	draw_sprite_ext(wood_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_4":	draw_sprite_ext(wood_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_5":	draw_sprite_ext(wood_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_6":	draw_sprite_ext(wood_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_7":	draw_sprite_ext(wood_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_8":	draw_sprite_ext(wood_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_9":	draw_sprite_ext(wood_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "forest_1":	draw_sprite_ext(forest_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_2":	draw_sprite_ext(forest_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_3":	draw_sprite_ext(forest_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_4":	draw_sprite_ext(forest_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_5":	draw_sprite_ext(forest_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_6":	draw_sprite_ext(forest_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_7":	draw_sprite_ext(forest_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_8":	draw_sprite_ext(forest_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_9":	draw_sprite_ext(forest_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
				}	
			
		}

}