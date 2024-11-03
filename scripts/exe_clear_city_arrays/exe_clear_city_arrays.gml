function exe_clear_city_arrays()
{
	delete(this_city_xy_reference);
	this_city_xy_reference = array_create(0);
	
	delete(city_conected);
	city_conected = array_create(0);
	
	delete(this_city_resources);
	this_city_resources = array_create(0);
	
	delete(this_city_homes);
	this_city_homes = array_create(0);
	
	delete(this_city_utylites);
	this_city_utylites = array_create(0);
	
	delete(this_city_fortyfication);
	this_city_fortyfication = array_create(0);
	
	delete(city_menu_xy_list);
	city_menu_xy_list = array_create(0);
	
	delete(this_city_consumption_production);
	this_city_consumption_production = array_create(0);
	
	delete(this_city_cons_prod_short);
	this_city_cons_prod_short = array_create(0);
	
	delete(this_city_administration);
	this_city_administration = array_create(0);
	
	ds_list_destroy(draw_highlite_map);
	draw_highlite_map = ds_list_create();
					
	ds_list_destroy(city_map_list);
	city_map_list = ds_list_create();
	
	surface_free(city_surface);
	
	
	this_city_admin_set = 0;
}