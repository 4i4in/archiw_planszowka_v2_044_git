//subscript of draw_sorted_terrain
function draw_resources()
{
	for(var _ii = 0; _ii < ds_list_size(draw_props_map_resources); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_props_map_resources, _ii+0);
			var _yy  = ds_list_find_value(draw_props_map_resources, _ii+1);
			var _pic = ds_list_find_value(draw_props_map_resources, _ii+2);
			switch(_pic)
				{
					
					case "animals_1":	draw_sprite_ext(animals_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "animals_2":	draw_sprite_ext(animals_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "animals_3":	draw_sprite_ext(animals_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "animals_4":	draw_sprite_ext(animals_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "animals_5":	draw_sprite_ext(animals_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "animals_6":	draw_sprite_ext(animals_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "animals_7":	draw_sprite_ext(animals_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "animals_8":	draw_sprite_ext(animals_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "animals_9":	draw_sprite_ext(animals_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "coal_1":	draw_sprite_ext(coal_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "coal_2":	draw_sprite_ext(coal_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "coal_3":	draw_sprite_ext(coal_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "coal_4":	draw_sprite_ext(coal_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "coal_5":	draw_sprite_ext(coal_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "coal_6":	draw_sprite_ext(coal_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "coal_7":	draw_sprite_ext(coal_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "coal_8":	draw_sprite_ext(coal_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "coal_9":	draw_sprite_ext(coal_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "crops_1":	draw_sprite_ext(crops_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "crops_2":	draw_sprite_ext(crops_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "crops_3":	draw_sprite_ext(crops_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "crops_4":	draw_sprite_ext(crops_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "crops_5":	draw_sprite_ext(crops_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "crops_6":	draw_sprite_ext(crops_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "crops_7":	draw_sprite_ext(crops_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "crops_8":	draw_sprite_ext(crops_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "crops_9":	draw_sprite_ext(crops_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "gems_1":	draw_sprite_ext(gems_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "gems_2":	draw_sprite_ext(gems_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "gems_3":	draw_sprite_ext(gems_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "gems_4":	draw_sprite_ext(gems_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "gems_5":	draw_sprite_ext(gems_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "gems_6":	draw_sprite_ext(gems_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "gems_7":	draw_sprite_ext(gems_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "gems_8":	draw_sprite_ext(gems_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "gems_9":	draw_sprite_ext(gems_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "granite_1":	draw_sprite_ext(granite_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "granite_2":	draw_sprite_ext(granite_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "granite_3":	draw_sprite_ext(granite_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "granite_4":	draw_sprite_ext(granite_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "granite_5":	draw_sprite_ext(granite_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "granite_6":	draw_sprite_ext(granite_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "granite_7":	draw_sprite_ext(granite_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "granite_8":	draw_sprite_ext(granite_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "granite_9":	draw_sprite_ext(granite_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "iron_1":	draw_sprite_ext(iron_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "iron_2":	draw_sprite_ext(iron_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "iron_3":	draw_sprite_ext(iron_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "iron_4":	draw_sprite_ext(iron_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "iron_5":	draw_sprite_ext(iron_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "iron_6":	draw_sprite_ext(iron_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "iron_7":	draw_sprite_ext(iron_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "iron_8":	draw_sprite_ext(iron_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "iron_9":	draw_sprite_ext(iron_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "marble_1":	draw_sprite_ext(marble_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "marble_2":	draw_sprite_ext(marble_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "marble_3":	draw_sprite_ext(marble_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "marble_4":	draw_sprite_ext(marble_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "marble_5":	draw_sprite_ext(marble_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "marble_6":	draw_sprite_ext(marble_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "marble_7":	draw_sprite_ext(marble_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "marble_8":	draw_sprite_ext(marble_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "marble_9":	draw_sprite_ext(marble_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "precious_metals_1":	draw_sprite_ext(precious_metals_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "precious_metals_2":	draw_sprite_ext(precious_metals_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "precious_metals_3":	draw_sprite_ext(precious_metals_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "precious_metals_4":	draw_sprite_ext(precious_metals_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "precious_metals_5":	draw_sprite_ext(precious_metals_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "precious_metals_6":	draw_sprite_ext(precious_metals_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "precious_metals_7":	draw_sprite_ext(precious_metals_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "precious_metals_8":	draw_sprite_ext(precious_metals_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "precious_metals_9":	draw_sprite_ext(precious_metals_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "rare_metals_1":	draw_sprite_ext(rare_metals_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rare_metals_2":	draw_sprite_ext(rare_metals_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rare_metals_3":	draw_sprite_ext(rare_metals_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rare_metals_4":	draw_sprite_ext(rare_metals_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rare_metals_5":	draw_sprite_ext(rare_metals_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rare_metals_6":	draw_sprite_ext(rare_metals_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rare_metals_7":	draw_sprite_ext(rare_metals_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rare_metals_8":	draw_sprite_ext(rare_metals_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "rare_metals_9":	draw_sprite_ext(rare_metals_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "salt_1":	draw_sprite_ext(salt_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_2":	draw_sprite_ext(salt_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_3":	draw_sprite_ext(salt_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_4":	draw_sprite_ext(salt_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_5":	draw_sprite_ext(salt_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_6":	draw_sprite_ext(salt_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_7":	draw_sprite_ext(salt_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_8":	draw_sprite_ext(salt_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_9":	draw_sprite_ext(salt_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "stones_1":	draw_sprite_ext(stones_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "stones_2":	draw_sprite_ext(stones_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "stones_3":	draw_sprite_ext(stones_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "stones_4":	draw_sprite_ext(stones_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "stones_5":	draw_sprite_ext(stones_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "stones_6":	draw_sprite_ext(stones_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "stones_7":	draw_sprite_ext(stones_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "stones_8":	draw_sprite_ext(stones_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "stones_9":	draw_sprite_ext(stones_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "water_1":	draw_sprite_ext(water_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "water_2":	draw_sprite_ext(water_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "water_3":	draw_sprite_ext(water_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "water_4":	draw_sprite_ext(water_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "water_5":	draw_sprite_ext(water_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "water_6":	draw_sprite_ext(water_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "water_7":	draw_sprite_ext(water_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "water_8":	draw_sprite_ext(water_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "water_9":	draw_sprite_ext(water_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
				}	
			
		}

}