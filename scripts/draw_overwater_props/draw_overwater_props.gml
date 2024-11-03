//subscript of draw_sorted_terrain
function draw_overwater_props()
{
	for(var _ii = 0; _ii < ds_list_size(draw_props_map_overwater); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_props_map_overwater, _ii+0);
			var _yy  = ds_list_find_value(draw_props_map_overwater, _ii+1);
			var _pic = ds_list_find_value(draw_props_map_overwater, _ii+2);
			switch(_pic)
				{
					case "reefs_rocks_0":	draw_sprite_ext(reefs_rocks_0,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "reefs_rocks_1":	draw_sprite_ext(reefs_rocks_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "reefs_rocks_2":	draw_sprite_ext(reefs_rocks_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "reefs_rocks_3":	draw_sprite_ext(reefs_rocks_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "reefs_rocks_4":	draw_sprite_ext(reefs_rocks_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "reefs_rocks_5":	draw_sprite_ext(reefs_rocks_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "reefs_rocks_6":	draw_sprite_ext(reefs_rocks_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "reefs_rocks_7":	draw_sprite_ext(reefs_rocks_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "reefs_rocks_8":	draw_sprite_ext(reefs_rocks_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "reefs_rocks_9":	draw_sprite_ext(reefs_rocks_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
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
					
					case "oasis_1":	draw_sprite_ext(oasis_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "oasis_2":	draw_sprite_ext(oasis_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "oasis_3":	draw_sprite_ext(oasis_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "oasis_4":	draw_sprite_ext(oasis_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "oasis_5":	draw_sprite_ext(oasis_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "oasis_6":	draw_sprite_ext(oasis_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "oasis_7":	draw_sprite_ext(oasis_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "oasis_8":	draw_sprite_ext(oasis_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "oasis_9":	draw_sprite_ext(oasis_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "salt_lake_1":	draw_sprite_ext(salt_lake_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_lake_2":	draw_sprite_ext(salt_lake_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_lake_3":	draw_sprite_ext(salt_lake_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_lake_4":	draw_sprite_ext(salt_lake_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_lake_5":	draw_sprite_ext(salt_lake_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_lake_6":	draw_sprite_ext(salt_lake_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_lake_7":	draw_sprite_ext(salt_lake_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_lake_8":	draw_sprite_ext(salt_lake_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "salt_lake_9":	draw_sprite_ext(salt_lake_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "swamps_1":	draw_sprite_ext(swamps_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "swamps_2":	draw_sprite_ext(swamps_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "swamps_3":	draw_sprite_ext(swamps_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "swamps_4":	draw_sprite_ext(swamps_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "swamps_5":	draw_sprite_ext(swamps_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "swamps_6":	draw_sprite_ext(swamps_6,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "swamps_7":	draw_sprite_ext(swamps_7,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "swamps_8":	draw_sprite_ext(swamps_8,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "swamps_9":	draw_sprite_ext(swamps_9,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
				}	
			
		}

}