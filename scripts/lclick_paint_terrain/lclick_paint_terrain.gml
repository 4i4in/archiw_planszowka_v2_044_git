function lclick_paint_terrain()
{
	if mouse_check_button(mb_left)	&&	lclick_cooldown_counter <1
		{
			if point_in_rectangle(mouse_x,mouse_y,0,0,wgw - game_struct.right_side_menu_cell_size * game_struct.cell_size,	wgh)	&&
				!point_in_rectangle(mouse_x,mouse_y,game_struct.mimimap_xpos,game_struct.mimimap_ypos,
									game_struct.mimimap_xpos	+	game_struct.map_xsize*game_struct.minimap_scale,
									game_struct.mimimap_ypos	+	game_struct.map_ysize*game_struct.minimap_scale,
									)
				{
					if mapeditor.terrain_paint_selected != ""	&& mapeditor.terrain_brush_size > 0
						{
							for(xxx = mouse_xcell +1 - mapeditor.terrain_brush_size; xxx < mouse_xcell + mapeditor.terrain_brush_size; xxx++)
								{
									for(yyy = mouse_ycell +1 - mapeditor.terrain_brush_size; yyy < mouse_ycell + mapeditor.terrain_brush_size; yyy++)
										{
											xxx1 = xxx; yyy1 = yyy;
											if xxx1 < 0 {xxx1 += game_struct.map_xsize}; //map wraper
											if xxx1 > game_struct.map_xsize-1 {xxx1 -= game_struct.map_xsize};
											if yyy1 < 0 {yyy1 += game_struct.map_ysize};
											if yyy1 > game_struct.map_ysize-1 {yyy1 -= game_struct.map_ysize};
											
											switch(mapeditor.terrain_paint_selected)
												{
													case "paint_mountains":			paint_mountains();	break;
													case "paint_hills":				paint_hills();	break;	
													case "paint_plains":			paint_plains();	break;	
													case "paint_sands":				paint_sands();	break;
													case "paint_shallow_waters":	paint_shallow_waters();	break;	
													case "paint_deep_waters":		paint_deep_waters();	break;
													case "paint_craters":		paint_props(xxx1,yyy1,"craters_");	break;
													case "paint_oasis":			paint_props(xxx1,yyy1,"oasis_");	break;
													case "paint_reef_rocks":	paint_props(xxx1,yyy1,"reefs_rocks_");	break;
													case "paint_rifts":			paint_props(xxx1,yyy1,"rifts_");	break;
													case "paint_shallows":			paint_props(xxx1,yyy1,"shallow_");	break;
													case "paint_swamps":			paint_props(xxx1,yyy1,"swamps_");	break;
													case "paint_vulcano":			paint_props(xxx1,yyy1,"vulcano_");	break;
													
													case "paint_deasise":		paint_props(xxx1,yyy1,"deasise_");	break;
													case "paint_pollution":		paint_props(xxx1,yyy1,"pollution_");	break;
													
													case "paint_forest":		paint_props(xxx1,yyy1,"forest_");	break;
													case "paint_woods":			paint_props(xxx1,yyy1,"wood_");	break;
													
													//special case salt lake need  shallow
													case "paint_salt_lakes":	paint_props(xxx1,yyy1,"salt_lake_");
															if mapeditor.terrain_paint_sign > 0
																			{	paint_props(xxx1,yyy1,"shallow_");	};
															break;
													case "paint_animals":			paint_resource(xxx1,yyy1,"animals_");	break;
													case "paint_coal":				paint_resource(xxx1,yyy1,"coal_");	break;
													case "paint_crops":				paint_resource(xxx1,yyy1,"crops_");	break;
													case "paint_gems":				paint_resource(xxx1,yyy1,"gems_");	break;
													case "paint_granite":			paint_resource(xxx1,yyy1,"granite_");	break;
													case "paint_iron":				paint_resource(xxx1,yyy1,"iron_");	break;
													case "paint_marble":			paint_resource(xxx1,yyy1,"marble_");	break;
													case "paint_precious_metals":	paint_resource(xxx1,yyy1,"precious_metals_");	break;
													case "paint_rare_metals":		paint_resource(xxx1,yyy1,"rare_metals_");	break;
													case "paint_salt":				paint_resource(xxx1,yyy1,"salt_");	break;
													case "paint_stones":			paint_resource(xxx1,yyy1,"stones_");	break;
													case "paint_water":				paint_resource(xxx1,yyy1,"water_");	break;
													
													case "paint_rivers":			p_paint_continuos(xxx1,yyy1,"river");	break;
													case "paint_roads":				p_paint_continuos(xxx1,yyy1,"road");	break;
													
												}
											//city paints
											if string_starts_with(mapeditor.terrain_paint_selected,"paint_city_")
												{
													var _delete_string = string_length("paint_city_");
													var _side_string = string_delete(mapeditor.terrain_paint_selected,1,11);
													paint_city(xxx1,yyy1,_side_string);
												}
											//fortyfications paints
											if string_starts_with(mapeditor.terrain_paint_selected,"paint_fortyfication_")
												{
													var _delete_string = string_length("paint_fortyfication_");
													var _side_string = string_delete(mapeditor.terrain_paint_selected,1,_delete_string);
													paint_fortyfication(xxx1,yyy1,_side_string);
												}
											//utylity paints
											if string_starts_with(mapeditor.terrain_paint_selected,"paint_utylity_")
												{
													var _delete_string = string_length("paint_");
													var _utylity_string = string_delete(mapeditor.terrain_paint_selected,1,_delete_string);
													paint_utylity(xxx1,yyy1,_utylity_string);
												}
											//ruins paints
											if string_starts_with(mapeditor.terrain_paint_selected,"paint_ruins_")
												{
													var _delete_string = string_length("paint_");
													var _utylity_string = string_delete(mapeditor.terrain_paint_selected,1,_delete_string);
													paint_ruins(xxx1,yyy1,_utylity_string);
												}
											//cover unkower paints
											if string_starts_with(mapeditor.terrain_paint_selected,"paint_visibility_")
												{
													var _delete_string = string_length("paint_visibility_");
													var _utylity_string = string_delete(mapeditor.terrain_paint_selected,1,_delete_string);
													paint_visibility(xxx1,yyy1,_utylity_string);
												}
											//unit paints
											if string_starts_with(mapeditor.terrain_paint_selected,"paint_units_")
												{
													var _side_string = string_delete(mapeditor.terrain_paint_selected,1,string_length("paint_units_"));
													var _unit_string = _side_string;
													var _clip_here = string_pos("_",_side_string);
													_side_string = string_delete(_side_string,_clip_here,99);
													_unit_string = string_delete(_unit_string,1,_clip_here);
													if _side_string != "" && _unit_string != ""
														{
															var _pass_array = [_side_string,_unit_string];
															paint_units(xxx1,yyy1,_pass_array);
														}
												}
										}
								}
							force_redraw = 1;
							//check consistency
							lclick_cooldown_counter = lclick_cooldown/3;
						}
					//revoke_right_click_results();//att least cities have something to tell 
				}
		}
	//continuos painting for roads and rivers
	if mapeditor.paint_continuos = 1	&&	mouse_check_button(mb_right)
		{
			mapeditor.paint_continuos = 0;
		}
}