//sub script of draw_ground to surface
function draw_surface_FOW()
{	
	draw_set_alpha(1);
	//prepare surface inv
	surface_free(surface_FOW_inv);
	if !surface_exists(surface_FOW_inv)	
		{surface_FOW_inv = surface_create(	clamp((wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size),1,1920	),	wgh);};
	surface_set_target(surface_FOW_inv);
	if gpu_get_blendenable() == false
		{
		    gpu_set_blendenable(true);
		}
	draw_clear_alpha(0,0);
	gpu_set_blendmode(bm_add);
	draw_set_alpha(1);
	draw_FOW();
	gpu_set_blendmode(bm_normal);
	surface_reset_target();		
	
	
	//prepare surface FoWar
	surface_free(surface_FOW);
	if !surface_exists(surface_FOW)	
		{surface_FOW = surface_create(	clamp((wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size),1,1920	),	wgh);};
	surface_set_target(surface_FOW);
	if gpu_get_blendenable() == false
		{
		    gpu_set_blendenable(true);
		}
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	draw_sprite_tiled_ext(	FOW_0_s1,0,
							-(game_struct.cam_xpos mod 1024),
							-(game_struct.cam_ypos mod 1024),
							1,1,-1,1);
	
	gpu_set_blendmode_ext(bm_zero,bm_inv_src_alpha);
	if !surface_exists(surface_FOW_inv)	
			{surface_FOW_inv = surface_create(	clamp((wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size),1,1920	),	wgh);};	
			draw_surface(surface_FOW_inv,0,0);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();		
	
	draw_set_alpha(1);
	//prepare surface unknown
	surface_free(surface_unknown);
	if !surface_exists(surface_unknown)	
		{surface_unknown = surface_create(	clamp((wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size),1,1920	),	wgh);};
	surface_set_target(surface_unknown);
	if gpu_get_blendenable() == false
		{
		    gpu_set_blendenable(true);
		}
	draw_clear_alpha(0,0);
	draw_set_alpha(1);
	draw_unknown_list();
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_one);
	draw_sprite_tiled_ext(	FOW_0_s1,0,
							-(game_struct.cam_xpos mod 1024),
							-(game_struct.cam_ypos mod 1024),
							1,1,-1,1);
	gpu_set_blendmode(bm_normal);
	
	//draw surface_FOW
	if !surface_exists(surface_FOW)	
	{surface_FOW = surface_create(	clamp((wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size),1,1920	),	wgh);};	
	draw_set_alpha(game_struct.FOW_alpha);
	draw_surface(surface_FOW,0,0);
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();		
	
	//surface_free(surface_FOW_inv);	surface_free(surface_FOW);
	
}