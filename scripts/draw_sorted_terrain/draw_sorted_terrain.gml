//mine drawing pipeline
function draw_sorted_terrain()
{
//prepare surface
	sss = 1/game_struct.zoom_scale;
	if !surface_exists(surface_ground_map)	
	{surface_ground_map = surface_create(	clamp((wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size),1,1920	),	wgh);};
	surface_set_target(surface_ground_map);
	if gpu_get_blendenable() == false
		{
		    gpu_set_blendenable(true);
		}
	
	//drawing background
	draw_background_tilled();	
	
	if game_struct.show_underwater = 1	{	draw_underwater_props();	};
	
	//draw underly
	if !surface_exists(surface_ground_map_underly)	
	{surface_ground_map_underly = surface_create(	clamp((wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size),1,1920	),	wgh);};
	draw_set_alpha(0.3);
	gpu_set_blendmode(bm_add);
	draw_surface(surface_ground_map_underly,0,0);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);	
	
	draw_deep_water_list();
	draw_zhallow_water_list();
	draw_sand_list();
	draw_plain_list();
	draw_hills_list();
	draw_mountains_list();
	//draw_unknown_list_black();
	
	if game_struct.show_underwater = 0	{	draw_underwater_props();	};
	
	draw_overwater_props();
	
	
	if game_struct.show_grid = 1
		{	draw_grid_tilled();	};
		
	if game_struct.show_trees = 2	{	draw_wood_forest();	};	//order for visibility
	
	
	
	draw_rivers();	
	draw_roads();	
	draw_facilites();
	draw_fortyfications();
		
	//if game_struct.show_trees = 2	{	draw_wood_forest();	};	//order for visibility
		
	if game_struct.show_resources = 1	{	draw_resources();	};
	
	draw_units();
	
	if game_struct.show_FOW = 1	&& game_struct.current_player > -1	//{	draw_FOW();	};
		{
			draw_set_alpha(1);
			//draw surface_FOW
			if !surface_exists(surface_unknown)	
			{surface_unknown = surface_create(	clamp((wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size),1,1920	),	wgh);};	
			draw_surface(surface_unknown,0,0);
		};
		
	surface_reset_target();		
}