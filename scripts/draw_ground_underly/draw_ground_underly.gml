//sub script of draw_ground to surface
function draw_ground_underly()
{
	//prepare surface
	surface_free(surface_ground_map_underly);
	if !surface_exists(surface_ground_map_underly)	
		{surface_ground_map_underly = surface_create(	clamp((wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size),1,1920	),	wgh);};
	surface_set_target(surface_ground_map_underly);
	if gpu_get_blendenable() == false
		{
		    gpu_set_blendenable(true);
		}
	draw_clear_alpha(0,0);
	//ad deep_water
	for(iii = 0; iii < ds_list_size(draw_ground_map_d); iii+=dgm_wrap)
		{
			switch(game_struct.zoom_scale)
				{
					case 1: 
						xxx = ds_list_find_value(draw_ground_map_d,iii+0);
						yyy = ds_list_find_value(draw_ground_map_d,iii+1);
						draw_sprite_ext(zhallow_water_0u1,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 2: 
						xxx = ds_list_find_value(draw_ground_map_d,iii+0);
						yyy = ds_list_find_value(draw_ground_map_d,iii+1);
						draw_sprite_ext(zhallow_water_0u2,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 3: 
						xxx = ds_list_find_value(draw_ground_map_d,iii+0);
						yyy = ds_list_find_value(draw_ground_map_d,iii+1);
						draw_sprite_ext(zhallow_water_0u3,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 4: 
						xxx = ds_list_find_value(draw_ground_map_d,iii+0);
						yyy = ds_list_find_value(draw_ground_map_d,iii+1);
						draw_sprite_ext(zhallow_water_0u4,0,xxx,yyy,1,1,0,-1,1);
						break;
				}
		}	
	//ad shallow_water
	for(iii = 0; iii < ds_list_size(draw_ground_map_z); iii+=dgm_wrap)
		{
			switch(game_struct.zoom_scale)
				{
					case 1: 
						xxx = ds_list_find_value(draw_ground_map_z,iii+0);
						yyy = ds_list_find_value(draw_ground_map_z,iii+1);
						draw_sprite_ext(zhallow_water_0u1,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 2: 
						xxx = ds_list_find_value(draw_ground_map_z,iii+0);
						yyy = ds_list_find_value(draw_ground_map_z,iii+1);
						draw_sprite_ext(zhallow_water_0u2,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 3: 
						xxx = ds_list_find_value(draw_ground_map_z,iii+0);
						yyy = ds_list_find_value(draw_ground_map_z,iii+1);
						draw_sprite_ext(zhallow_water_0u3,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 4: 
						xxx = ds_list_find_value(draw_ground_map_z,iii+0);
						yyy = ds_list_find_value(draw_ground_map_z,iii+1);
						draw_sprite_ext(zhallow_water_0u4,0,xxx,yyy,1,1,0,-1,1);
						break;
				}	
		}			
	//ad sand
	for(iii = 0; iii < ds_list_size(draw_ground_map_s); iii+=dgm_wrap)
		{
			switch(game_struct.zoom_scale)
				{
					case 1: 
						xxx = ds_list_find_value(draw_ground_map_s,iii+0);
						yyy = ds_list_find_value(draw_ground_map_s,iii+1);
						draw_sprite_ext(sand_0u1,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 2: 
						xxx = ds_list_find_value(draw_ground_map_s,iii+0);
						yyy = ds_list_find_value(draw_ground_map_s,iii+1);
						draw_sprite_ext(sand_0u2,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 3: 
						xxx = ds_list_find_value(draw_ground_map_s,iii+0);
						yyy = ds_list_find_value(draw_ground_map_s,iii+1);
						draw_sprite_ext(sand_0u3,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 4: 
						xxx = ds_list_find_value(draw_ground_map_s,iii+0);
						yyy = ds_list_find_value(draw_ground_map_s,iii+1);
						draw_sprite_ext(sand_0u4,0,xxx,yyy,1,1,0,-1,1);
						break;
				}	
		}			
	//ad plains
	for(iii = 0; iii < ds_list_size(draw_ground_map_p); iii+=dgm_wrap)
		{
			switch(game_struct.zoom_scale)
				{
					case 1: 
						xxx = ds_list_find_value(draw_ground_map_p,iii+0);
						yyy = ds_list_find_value(draw_ground_map_p,iii+1);
						draw_sprite_ext(plain_0u1,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 2: 
						xxx = ds_list_find_value(draw_ground_map_p,iii+0);
						yyy = ds_list_find_value(draw_ground_map_p,iii+1);
						draw_sprite_ext(plain_0u2,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 3: 
						xxx = ds_list_find_value(draw_ground_map_p,iii+0);
						yyy = ds_list_find_value(draw_ground_map_p,iii+1);
						draw_sprite_ext(plain_0u3,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 4: 
						xxx = ds_list_find_value(draw_ground_map_p,iii+0);
						yyy = ds_list_find_value(draw_ground_map_p,iii+1);
						draw_sprite_ext(plain_0u4,0,xxx,yyy,1,1,0,-1,1);
						break;
				}	
		}
	//ad hills
	for(iii = 0; iii < ds_list_size(draw_ground_map_h); iii+=dgm_wrap)
		{
			switch(game_struct.zoom_scale)
				{
					case 1: 
						xxx = ds_list_find_value(draw_ground_map_h,iii+0);
						yyy = ds_list_find_value(draw_ground_map_h,iii+1);
						draw_sprite_ext(hills_0u1,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 2: 
						xxx = ds_list_find_value(draw_ground_map_h,iii+0);
						yyy = ds_list_find_value(draw_ground_map_h,iii+1);
						draw_sprite_ext(hills_0u2,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 3: 
						xxx = ds_list_find_value(draw_ground_map_h,iii+0);
						yyy = ds_list_find_value(draw_ground_map_h,iii+1);
						draw_sprite_ext(hills_0u3,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 4: 
						xxx = ds_list_find_value(draw_ground_map_h,iii+0);
						yyy = ds_list_find_value(draw_ground_map_h,iii+1);
						draw_sprite_ext(hills_0u4,0,xxx,yyy,1,1,0,-1,1);
						break;
				}	
		}			

	//ad mountains
	for(iii = 0; iii < ds_list_size(draw_ground_map_m); iii+=dgm_wrap)
		{
			switch(game_struct.zoom_scale)
				{
					case 1: 
						xxx = ds_list_find_value(draw_ground_map_m,iii+0);
						yyy = ds_list_find_value(draw_ground_map_m,iii+1);
						draw_sprite_ext(mountains_0u1,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 2: 
						xxx = ds_list_find_value(draw_ground_map_m,iii+0);
						yyy = ds_list_find_value(draw_ground_map_m,iii+1);
						draw_sprite_ext(mountains_0u2,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 3: 
						xxx = ds_list_find_value(draw_ground_map_m,iii+0);
						yyy = ds_list_find_value(draw_ground_map_m,iii+1);
						draw_sprite_ext(mountains_0u3,0,xxx,yyy,1,1,0,-1,1);
						break;
					case 4: 
						xxx = ds_list_find_value(draw_ground_map_m,iii+0);
						yyy = ds_list_find_value(draw_ground_map_m,iii+1);
						draw_sprite_ext(mountains_0u4,0,xxx,yyy,1,1,0,-1,1);
						break;
				}	
		}	
	surface_reset_target();		
}