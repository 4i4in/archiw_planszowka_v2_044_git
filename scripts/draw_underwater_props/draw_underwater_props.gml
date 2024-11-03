//subscript of draw_sorted_terrain
function draw_underwater_props()
{
	for(var _ii = 0; _ii < ds_list_size(draw_props_map_underwater); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_props_map_underwater, _ii+0);
			var _yy  = ds_list_find_value(draw_props_map_underwater, _ii+1);
			var _pic = ds_list_find_value(draw_props_map_underwater, _ii+2);
			switch(_pic)
				{
					case "shallow_1":	draw_sprite_ext(shallow_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "shallow_2":	draw_sprite_ext(shallow_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "shallow_3":	draw_sprite_ext(shallow_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "shallow_4":	draw_sprite_ext(shallow_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "shallow_5":	draw_sprite_ext(shallow_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "shallow_6":	draw_sprite_ext(shallow_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "shallow_7":	draw_sprite_ext(shallow_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "shallow_8":	draw_sprite_ext(shallow_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "shallow_9":	draw_sprite_ext(shallow_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "vulcano_1":	draw_sprite_ext(vulcano_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "vulcano_2":	draw_sprite_ext(vulcano_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "vulcano_3":	draw_sprite_ext(vulcano_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "vulcano_4":	draw_sprite_ext(vulcano_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "vulcano_5":	draw_sprite_ext(vulcano_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "vulcano_6":	draw_sprite_ext(vulcano_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "vulcano_7":	draw_sprite_ext(vulcano_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "vulcano_8":	draw_sprite_ext(vulcano_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "vulcano_9":	draw_sprite_ext(vulcano_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "rifts_1":	draw_sprite_ext(rifts_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rifts_2":	draw_sprite_ext(rifts_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rifts_3":	draw_sprite_ext(rifts_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rifts_4":	draw_sprite_ext(rifts_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rifts_5":	draw_sprite_ext(rifts_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rifts_6":	draw_sprite_ext(rifts_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rifts_7":	draw_sprite_ext(rifts_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rifts_8":	draw_sprite_ext(rifts_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rifts_9":	draw_sprite_ext(rifts_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "craters_1":	draw_sprite_ext(craters_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "craters_2":	draw_sprite_ext(craters_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "craters_3":	draw_sprite_ext(craters_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "craters_4":	draw_sprite_ext(craters_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "craters_5":	draw_sprite_ext(craters_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "craters_6":	draw_sprite_ext(craters_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "craters_7":	draw_sprite_ext(craters_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "craters_8":	draw_sprite_ext(craters_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "craters_9":	draw_sprite_ext(craters_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "pollution_1":	draw_sprite_ext(pollution_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "pollution_2":	draw_sprite_ext(pollution_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "pollution_3":	draw_sprite_ext(pollution_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "pollution_4":	draw_sprite_ext(pollution_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "pollution_5":	draw_sprite_ext(pollution_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "pollution_6":	draw_sprite_ext(pollution_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "pollution_7":	draw_sprite_ext(pollution_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "pollution_8":	draw_sprite_ext(pollution_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "pollution_9":	draw_sprite_ext(pollution_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "deasise_1":	draw_sprite_ext(deasise_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deasise_2":	draw_sprite_ext(deasise_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deasise_3":	draw_sprite_ext(deasise_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deasise_4":	draw_sprite_ext(deasise_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deasise_5":	draw_sprite_ext(deasise_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deasise_6":	draw_sprite_ext(deasise_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deasise_7":	draw_sprite_ext(deasise_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deasise_8":	draw_sprite_ext(deasise_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "deasise_9":	draw_sprite_ext(deasise_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
				}	
			
		}

}