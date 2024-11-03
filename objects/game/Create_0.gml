randomise();
surface_depth_disable(1);
math_set_epsilon(0.001);
#region//starting game scrren mode

	//room_set_viewport(room, 0, 1, 0, 0, 800, 600);
	//window_set_size(800, 600);
	//window_center();
	window_set_fullscreen(true);

#endregion
aaa = 0; iii = 0;	kkk =0;
sss = 0;

xxx = 0; xxx1 = 0; xxx2 = 0; xxx3 = 0; xxx4 = 0;
yyy = 0; yyy1 = 0; yyy2 = 0; yyy3 = 0; yyy4 = 0;

dgw = display_get_width();	dgh = display_get_height();
wgw = window_get_width();	wgh = window_get_height();

//mousever info
mouseover_info = 0;	mo_xpos = 0; mo_ypos = 0; mo_string = "";	
sequence_proceeding = -1;	sequence_exe = "";	
rclick_cooldown = 15;	rclick_cooldown_counter = 0;
lclick_cooldown = 15;	lclick_cooldown_counter = 0;
screen_move_by_mouse = 1;
mouse_action = 0;

display_terrain_menu = 0;
display_terrain_menu_x = -1;
display_terrain_menu_y = -1;
display_terrain_menu_xpos = 0;
display_terrain_menu_ypos = 0;

show_ground_map = 1;

display_xscale = 0;	display_yscale = 0;
cam_xcell = 0;		cam_ycell = 0;
mouse_xcell = 0;	mouse_ycell = 0;
cam_xscope = 0;		cam_yscope = 0;

xref = 0; yref = 0;	xref1 = 0; yref1 = 0;
cam_xshift = 0; cam_yshift = 0;

create_random_map = 1;
//text_writing
writing_on = 0;
text_input_x = 0;
text_input_y = 0;
text_writer_string = "";
pretext_writer_string = "";
input_length = 30;

force_redraw = 0;
regenerate_minimap = 0;

operational_array = 0;
#region//game_struct
game_struct =
{
	rnd_seed : random_get_seed(),
	game_time : 0,
	cell_size : 64,
	button_size : 64,
	current_menu : "start_menu",
	current_turn : 0,
	current_player : -1,
	
	turn_order :	[],	turn_order_rule : "order", //"random" would be another one
		
	map_name : "test_map",	map_xsize : 128,	map_ysize : 128,		
	right_side_menu_cell_size : 4,
		
	cam_xpos : 0,	cam_ypos : 0,
	past_cam_xpos : 0,	past_cam_ypos : 0,	zoom_scale : 1,	zoom_max : 4,
	past_zoom : 1,
	screen_border_mouse : 2,
	screen_speed : 30,
	redraw_ground_layer : 1,
		
	show_grid : 0, show_trees : 2,	show_resources : 1,	show_underwater : 1,	show_FOW : 1,	FOW_alpha : 0.5,

	show_minimap : 0,	minimap_scale : 4,	mimimap_xpos : 0,	mimimap_ypos : 0,	minimap_scale_max : 4,
	max_sides : 7,
	
	visibility_level_struct : exe_return_visibility_levels_structs(),
	buffs_values : exe_return_buffs_struct(),
	base_visibility_value : 1,
	max_units_groups_per_tile : 4,
};
#endregion

#region//mapeditor
mapeditor =
{
	map_x_min_size : 32,	map_x_max_size : 256,	map_y_min_size : 32,	map_y_max_size : 256, map_size_step : 16,
	terrain_paint_selected : "",	terrain_paint_sign : 1,	terrain_brush_size : 1,	terrain_brush_size_max : 3,
	max_random_terrain : 9,
	seamles_raw_minimap_show : 0,
	
	hills_level	: 4.5,	plain_level	: 4,	sand_level	: 2.2,	water_level	: 2,	deep_water_level	: 1,
	terrain_level_step : 0.1,	terrain_raw_to_array_treshold : 0.2,
	chance : 2,
	paint_continuos : 0, paint_continuos_x : 0,	paint_continuos_y : 0,
}
#endregion

#region//game map
game_board_array = array_create(game_struct.map_xsize);
create_game_board_array_new();
checklist_for_gameboard_eoturn = array_create(0);

avilable_sides = array_create(0);
create_sides(avilable_sides,"infinity");

sides_array = array_create(0);
create_sides(sides_array,game_struct.max_sides);



//drawing resource declaration	
surface_ground_map = surface_create(wgw,wgh);	dgm_wrap = 3; 
draw_ground_map_d = ds_list_create();	draw_ground_map_z = ds_list_create();
draw_ground_map_s = ds_list_create();	draw_ground_map_p = ds_list_create();
draw_ground_map_h = ds_list_create();	draw_ground_map_m = ds_list_create();
draw_ground_map_u = ds_list_create();

draw_highlite_map = ds_list_create();

draw_props_map_underwater = ds_list_create();
draw_props_map_overwater = ds_list_create();
draw_props_map_wood_forest = ds_list_create();
draw_props_map_resources = ds_list_create();
draw_rivers_map = ds_list_create();	draw_roads_map = ds_list_create();
draw_facility_map = ds_list_create();
draw_fortyfications_map = ds_list_create();
draw_units_map = ds_list_create();
draw_FOW_map = ds_list_create();

surface_ground_map_underly = surface_create(wgw,wgh);
surface_highlite = surface_create(wgw,wgh);
surface_unknown = surface_create(wgw,wgh);
surface_FOW = surface_create(wgw,wgh);
surface_FOW_inv = surface_create(wgw,wgh);

surface_minimap = surface_create(game_struct.map_xsize,game_struct.map_ysize);
minimap_show = surface_create(game_struct.map_xsize,game_struct.map_ysize);

//game editor releted
raw_editor_minimap = ds_grid_create(game_struct.map_xsize,game_struct.map_ysize);
raw_minimap_surface = surface_create(game_struct.map_xsize,game_struct.map_ysize);

//city close view
city_conected = array_create(0);
city_surface = surface_create(1,1);
city_map_list = ds_list_create();
city_text_list = ds_list_create();

this_city_xy_reference = array_create(0);
this_city_resources = array_create(0);
this_city_homes = array_create(0);
this_city_utylites = array_create(0);
this_city_fortyfication = array_create(0);
this_city_consumption_production = array_create(0);
this_city_cons_prod_short = array_create(0);
this_city_administration = array_create(0);
this_city_admin_set = 0;

restricted_x1 = -1;	restricted_x2 = -1;	restricted_y1 = -1;	restricted_y2 = -1;

city_menu_option = array_create(0);
city_menu_option = reset_city_menu_option(city_menu_option);
city_menu_xy_list = array_create(0);
#endregion
							
							
#region//clickable list
clickable_surface = surface_create(wgw,wgh);
clickable_list = ds_list_create(); cl_wrap = 9;
txt1 = "";	_exe = "";	_rexe = "";	pic1 = "";
clickable_loaded = 1;
yes_no_srceen = 0;	yes_no_prompt = ""; yes_no_exe = "";	yes_no_pic = "";	yes_no_cover_background = "";
#endregion

#region//ascii menu
newline = 20;	newclmn = 200;	nxtline = 0;	nxtclmn = 0;
ascii_pause = array_create(128);
ascii_call = array_create(128);
key_pause = 30;
txt_background_darken = 0.7;
ascii_supress = 0;
#endregion

