function regenerate_drawing_arrays()
{
	ds_list_destroy(draw_ground_map_d);
	draw_ground_map_d = ds_list_create();	
	
	ds_list_destroy(draw_ground_map_z);
	draw_ground_map_z = ds_list_create();
	
	ds_list_destroy(draw_ground_map_s);
	draw_ground_map_s = ds_list_create();
	
	ds_list_destroy(draw_ground_map_p);
	draw_ground_map_p = ds_list_create();
	
	ds_list_destroy(draw_ground_map_h);
	draw_ground_map_h = ds_list_create();
	
	ds_list_destroy(draw_ground_map_m);
	draw_ground_map_m = ds_list_create();
	
	ds_list_destroy(draw_ground_map_u);
	draw_ground_map_u = ds_list_create();
	
	
	ds_list_destroy(draw_props_map_underwater);
	draw_props_map_underwater = ds_list_create();
	
	ds_list_destroy(draw_props_map_overwater);
	draw_props_map_overwater = ds_list_create();
	
	ds_list_destroy(draw_props_map_wood_forest);
	draw_props_map_wood_forest = ds_list_create();
	
	ds_list_destroy(draw_props_map_resources);
	draw_props_map_resources = ds_list_create();
	
	ds_list_destroy(draw_rivers_map);
	draw_rivers_map = ds_list_create();
	
	ds_list_destroy(draw_roads_map);
	draw_roads_map = ds_list_create();
	
	ds_list_destroy(draw_facility_map);
	draw_facility_map = ds_list_create();
	
	ds_list_destroy(draw_fortyfications_map);
	draw_fortyfications_map = ds_list_create();
	
	ds_list_destroy(draw_units_map);
	draw_units_map = ds_list_create();
	
	ds_list_destroy(draw_FOW_map);
	draw_FOW_map = ds_list_create();

}