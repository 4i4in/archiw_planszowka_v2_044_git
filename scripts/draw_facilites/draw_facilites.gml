//subscript of draw_sorted_terrain
function draw_facilites()
{
	for(var _ii = 0; _ii < ds_list_size(draw_facility_map); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_facility_map, _ii+0);
			var _yy  = ds_list_find_value(draw_facility_map, _ii+1);
			var _pic = ds_list_find_value(draw_facility_map, _ii+2);
			switch(_pic)
				{
					//cities
					case "city_dwarf_1":	draw_sprite_ext(city_dwarf_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_dwarf_2":	draw_sprite_ext(city_dwarf_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_dwarf_3":	draw_sprite_ext(city_dwarf_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_dwarf_4":	draw_sprite_ext(city_dwarf_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_dwarf_5":	draw_sprite_ext(city_dwarf_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "city_generic_1":	draw_sprite_ext(city_generic_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_generic_2":	draw_sprite_ext(city_generic_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_generic_3":	draw_sprite_ext(city_generic_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_generic_4":	draw_sprite_ext(city_generic_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_generic_5":	draw_sprite_ext(city_generic_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "city_highelf_1":	draw_sprite_ext(city_highelf_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_highelf_2":	draw_sprite_ext(city_highelf_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_highelf_3":	draw_sprite_ext(city_highelf_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_highelf_4":	draw_sprite_ext(city_highelf_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_highelf_5":	draw_sprite_ext(city_highelf_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "city_human_1":	draw_sprite_ext(city_human_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_human_2":	draw_sprite_ext(city_human_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_human_3":	draw_sprite_ext(city_human_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_human_4":	draw_sprite_ext(city_human_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_human_5":	draw_sprite_ext(city_human_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "city_triton_1":	draw_sprite_ext(city_triton_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_triton_2":	draw_sprite_ext(city_triton_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_triton_3":	draw_sprite_ext(city_triton_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_triton_4":	draw_sprite_ext(city_triton_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_triton_5":	draw_sprite_ext(city_triton_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "city_undead_1":	draw_sprite_ext(city_undead_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_undead_2":	draw_sprite_ext(city_undead_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_undead_3":	draw_sprite_ext(city_undead_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_undead_4":	draw_sprite_ext(city_undead_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_undead_5":	draw_sprite_ext(city_undead_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "city_woodelf_1":	draw_sprite_ext(city_woodelf_1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_woodelf_2":	draw_sprite_ext(city_woodelf_2,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_woodelf_3":	draw_sprite_ext(city_woodelf_3,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_woodelf_4":	draw_sprite_ext(city_woodelf_4,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "city_woodelf_5":	draw_sprite_ext(city_woodelf_5,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					
					case "utylity_dwarf_armory_draw_on_map":	draw_sprite_ext(utylity_dwarf_armory_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_dwarf_artist_draw_on_map":	draw_sprite_ext(utylity_dwarf_artist_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_dwarf_bank_draw_on_map":		draw_sprite_ext(utylity_dwarf_bank_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_dwarf_deepmine_draw_on_map":	draw_sprite_ext(utylity_dwarf_deepmine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_dwarf_forge_draw_on_map":		draw_sprite_ext(utylity_dwarf_forge_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_dwarf_halloffame_draw_on_map":	draw_sprite_ext(utylity_dwarf_halloffame_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_dwarf_market_draw_on_map":					draw_sprite_ext(utylity_dwarf_market_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_dwarf_mine_draw_on_map":		draw_sprite_ext(utylity_dwarf_mine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_dwarf_runesmith_draw_on_map":	draw_sprite_ext(utylity_dwarf_runesmith_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_dwarf_smith_draw_on_map":		draw_sprite_ext(utylity_dwarf_smith_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_dwarf_tronroom_draw_on_map":	draw_sprite_ext(utylity_dwarf_tronroom_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_dwarf_watchtower_draw_on_map":	draw_sprite_ext(utylity_dwarf_watchtower_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_dwarf_lumberjack_draw_on_map":	draw_sprite_ext(utylity_dwarf_lumberjack_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "utylity_generic_agriculture_draw_on_map":	draw_sprite_ext(utylity_generic_agriculture_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_generic_armory_draw_on_map":		draw_sprite_ext(utylity_generic_armory_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_generic_artist_draw_on_map":		draw_sprite_ext(utylity_generic_artist_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_generic_market_draw_on_map":		draw_sprite_ext(utylity_generic_market_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_generic_mine_draw_on_map":		draw_sprite_ext(utylity_generic_mine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_generic_shipyard_draw_on_map":	draw_sprite_ext(utylity_generic_shipyard_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_generic_smith_draw_on_map":		draw_sprite_ext(utylity_generic_smith_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_generic_stables_draw_on_map":		draw_sprite_ext(utylity_generic_stables_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_generic_tronroom_draw_on_map":	draw_sprite_ext(utylity_generic_tronroom_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_generic_watchtower_draw_on_map":	draw_sprite_ext(utylity_generic_watchtower_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_generic_witch_draw_on_map":		draw_sprite_ext(utylity_generic_witch_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_generic_wizard_draw_on_map":		draw_sprite_ext(utylity_generic_wizard_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "utylity_highelf_agriculture_draw_on_map":	draw_sprite_ext(utylity_highelf_agriculture_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_highelf_armory_draw_on_map":		draw_sprite_ext(utylity_highelf_armory_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_highelf_artist_draw_on_map":		draw_sprite_ext(utylity_highelf_artist_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_highelf_mage_draw_on_map":		draw_sprite_ext(utylity_highelf_mage_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_highelf_shipyard_draw_on_map":	draw_sprite_ext(utylity_highelf_shipyard_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_highelf_shrine_draw_on_map":		draw_sprite_ext(utylity_highelf_shrine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_highelf_smith_draw_on_map":		draw_sprite_ext(utylity_highelf_smith_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_highelf_stables_draw_on_map":		draw_sprite_ext(utylity_highelf_stables_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_highelf_watchtower_draw_on_map":	draw_sprite_ext(utylity_highelf_watchtower_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					
					case "utylity_human_agriculture_draw_on_map":	draw_sprite_ext(utylity_human_agriculture_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_human_armory_draw_on_map":		draw_sprite_ext(utylity_human_armory_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_human_artist_draw_on_map":		draw_sprite_ext(utylity_human_artist_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_human_market_draw_on_map":		draw_sprite_ext(utylity_human_market_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_human_mine_draw_on_map":			draw_sprite_ext(utylity_human_mine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_human_shipyard_draw_on_map":		draw_sprite_ext(utylity_human_shipyard_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_human_shrine_draw_on_map":		draw_sprite_ext(utylity_human_shrine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_human_smith_draw_on_map":			draw_sprite_ext(utylity_human_smith_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_human_stables_draw_on_map":		draw_sprite_ext(utylity_human_stables_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_human_temple_draw_on_map":		draw_sprite_ext(utylity_human_temple_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_human_tronroom_draw_on_map":		draw_sprite_ext(utylity_human_tronroom_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_human_watchtower_draw_on_map":	draw_sprite_ext(utylity_human_watchtower_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_human_wizard_draw_on_map":		draw_sprite_ext(utylity_human_wizard_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "utylity_undead_armory_draw_on_map":		draw_sprite_ext(utylity_undead_armory_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_undead_shipyard_draw_on_map":		draw_sprite_ext(utylity_undead_shipyard_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_undead_smith_draw_on_map":		draw_sprite_ext(utylity_undead_smith_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_undead_stables_draw_on_map":		draw_sprite_ext(utylity_undead_stables_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_undead_watchtower_draw_on_map":	draw_sprite_ext(utylity_undead_watchtower_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "utylity_woodelf_armory_draw_on_map":		draw_sprite_ext(utylity_woodelf_armory_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_woodelf_artist_draw_on_map":		draw_sprite_ext(utylity_woodelf_artist_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_woodelf_shipyard_draw_on_map":	draw_sprite_ext(utylity_woodelf_shipyard_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_woodelf_shrine_draw_on_map":		draw_sprite_ext(utylity_woodelf_shrine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_woodelf_smith_draw_on_map":		draw_sprite_ext(utylity_woodelf_smith_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_woodelf_stables_draw_on_map":		draw_sprite_ext(utylity_woodelf_stables_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_woodelf_watchtower_draw_on_map":	draw_sprite_ext(utylity_woodelf_watchtower_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "utylity_woodelf_witch_draw_on_map":		draw_sprite_ext(utylity_woodelf_witch_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "ruins_marker_draw_on_map":			draw_sprite_ext(ruins_marker_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "ruins_dwarf_city_draw_on_map":			draw_sprite_ext(ruins_dwarf_city_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_dwarf_fortyfication_draw_on_map":	draw_sprite_ext(ruins_dwarf_fortyfication_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_dwarf_mine_draw_on_map":			draw_sprite_ext(ruins_dwarf_mine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_dwarf_sculpture_draw_on_map":		draw_sprite_ext(ruins_dwarf_sculpture_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_dwarf_watchtower_draw_on_map":		draw_sprite_ext(ruins_dwarf_watchtower_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "ruins_generic_city_draw_on_map":			draw_sprite_ext(ruins_generic_city_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_generic_fortyfication_draw_on_map":	draw_sprite_ext(ruins_generic_fortyfication_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_generic_mine_draw_on_map":			draw_sprite_ext(ruins_generic_mine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_generic_sculpture_draw_on_map":		draw_sprite_ext(ruins_generic_sculpture_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_generic_watchtower_draw_on_map":	draw_sprite_ext(ruins_generic_watchtower_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "ruins_highelf_city_draw_on_map":			draw_sprite_ext(ruins_highelf_city_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_highelf_fortyfication_draw_on_map":	draw_sprite_ext(ruins_highelf_fortyfication_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_highelf_sculpture_draw_on_map":		draw_sprite_ext(ruins_highelf_sculpture_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_highelf_shrine_draw_on_map":		draw_sprite_ext(ruins_highelf_shrine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_highelf_watchtower_draw_on_map":	draw_sprite_ext(ruins_highelf_watchtower_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "ruins_human_city_draw_on_map":			draw_sprite_ext(ruins_human_city_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_human_fortyfication_draw_on_map":	draw_sprite_ext(ruins_human_fortyfication_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_human_mine_draw_on_map":			draw_sprite_ext(ruins_human_mine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_human_sculpture_draw_on_map":		draw_sprite_ext(ruins_human_sculpture_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_human_shrine_draw_on_map":			draw_sprite_ext(ruins_human_shrine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_human_temple_draw_on_map":			draw_sprite_ext(ruins_human_temple_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_human_watchtower_draw_on_map":		draw_sprite_ext(ruins_human_watchtower_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "ruins_triton_city_draw_on_map":			draw_sprite_ext(ruins_triton_city_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_triton_fortyfication_draw_on_map":	draw_sprite_ext(ruins_triton_fortyfication_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_triton_sculpture_draw_on_map":		draw_sprite_ext(ruins_triton_sculpture_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_triton_shrine_draw_on_map":			draw_sprite_ext(ruins_triton_shrine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_triton_temple_draw_on_map":			draw_sprite_ext(ruins_triton_temple_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "ruins_undead_city_draw_on_map":			draw_sprite_ext(ruins_undead_city_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_undead_fortyfication_draw_on_map":	draw_sprite_ext(ruins_undead_fortyfication_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_undead_sculpture_draw_on_map":		draw_sprite_ext(ruins_undead_sculpture_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_undead_watchtower_draw_on_map":		draw_sprite_ext(ruins_undead_watchtower_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "ruins_woodelf_city_draw_on_map":			draw_sprite_ext(ruins_woodelf_city_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_woodelf_fortyfication_draw_on_map":	draw_sprite_ext(ruins_woodelf_fortyfication_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_woodelf_sculpture_draw_on_map":		draw_sprite_ext(ruins_woodelf_sculpture_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_woodelf_shrine_draw_on_map":		draw_sprite_ext(ruins_woodelf_shrine_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "ruins_woodelf_watchtower_draw_on_map":	draw_sprite_ext(ruins_woodelf_watchtower_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "wood_1_draw_on_map":	draw_sprite_ext(wood_1_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_2_draw_on_map":	draw_sprite_ext(wood_2_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_3_draw_on_map":	draw_sprite_ext(wood_3_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_4_draw_on_map":	draw_sprite_ext(wood_4_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_5_draw_on_map":	draw_sprite_ext(wood_5_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_6_draw_on_map":	draw_sprite_ext(wood_6_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_7_draw_on_map":	draw_sprite_ext(wood_7_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_8_draw_on_map":	draw_sprite_ext(wood_8_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "wood_9_draw_on_map":	draw_sprite_ext(wood_9_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "forest_1_draw_on_map":	draw_sprite_ext(forest_1_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_2_draw_on_map":	draw_sprite_ext(forest_2_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_3_draw_on_map":	draw_sprite_ext(forest_3_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_4_draw_on_map":	draw_sprite_ext(forest_4_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_5_draw_on_map":	draw_sprite_ext(forest_5_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_6_draw_on_map":	draw_sprite_ext(forest_6_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_7_draw_on_map":	draw_sprite_ext(forest_7_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_8_draw_on_map":	draw_sprite_ext(forest_8_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "forest_9_draw_on_map":	draw_sprite_ext(forest_9_draw_on_map,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
				}	
			
		}

}