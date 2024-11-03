//subscript of draw_sorted_terrain
function draw_units()
{
	for(var _ii = 0; _ii < ds_list_size(draw_units_map); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_units_map, _ii+0);
			var _yy  = ds_list_find_value(draw_units_map, _ii+1);
			var _pic = ds_list_find_value(draw_units_map, _ii+2);
			switch(_pic)
				{
					//units unknown
					case "_32x32_unknown_ico_transparent":	draw_sprite_ext(_32x32_unknown_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "_64x64_unknown_ico_transparent":	draw_sprite_ext(_64x64_unknown_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_unknown_unit":			draw_sprite_ext(population_unknown_unit,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					//units sides dwarf
					case "_32x32_dwarf_ico_transparent":	draw_sprite_ext(_32x32_dwarf_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "_64x64_dwarf_ico_transparent":	draw_sprite_ext(_64x64_dwarf_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_dwarf_merchant":	draw_sprite_ext(population_dwarf_merchant,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_dwarf_militia":	draw_sprite_ext(population_dwarf_militia,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_dwarf_miner":		draw_sprite_ext(population_dwarf_miner,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_dwarf_sheppards":	draw_sprite_ext(population_dwarf_sheppard,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_dwarf_townsfolk":	draw_sprite_ext(population_dwarf_townsfolk,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unit_dwarf_ship1":			draw_sprite_ext(unit_dwarf_ship1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					//units sides generic
					case "_32x32_generic_ico_transparent":	draw_sprite_ext(_32x32_generic_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "_64x64_generic_ico_transparent":	draw_sprite_ext(_64x64_generic_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_generic_merchant":	draw_sprite_ext(population_generic_merchant,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_generic_militia":	draw_sprite_ext(population_generic_militia,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_generic_miner":	draw_sprite_ext(population_generic_miner,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_generic_peasants":	draw_sprite_ext(population_generic_peasants,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_generic_seamen":	draw_sprite_ext(population_generic_seamen,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_generic_sheppards":	draw_sprite_ext(population_generic_sheppards,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_generic_townsfolk":	draw_sprite_ext(population_generic_townsfolk,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_generic_wild":			draw_sprite_ext(population_generic_wild,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unit_generic_ship1":				draw_sprite_ext(unit_generic_ship1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					//units sides highelf
					case "_32x32_highelf_ico_transparent":	draw_sprite_ext(_32x32_highelf_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "_64x64_highelf_ico_transparent":	draw_sprite_ext(_64x64_highelf_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_highelf_militia":			draw_sprite_ext(population_highelf_militia,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_highelf_peasants":			draw_sprite_ext(population_highelf_peasants,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_highelf_seamen":			draw_sprite_ext(population_highelf_seamen,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_highelf_sheppards":		draw_sprite_ext(population_highelf_sheppards,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_highelf_townsfolk":		draw_sprite_ext(population_highelf_townsfolk,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unit_highelf_ship1":					draw_sprite_ext(unit_highelf_ship1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					//units sides human
					case "_32x32_human_ico_transparent":	draw_sprite_ext(_32x32_human_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "_64x64_human_ico_transparent":	draw_sprite_ext(_64x64_human_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_human_merchant":		draw_sprite_ext(population_human_merchant,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_human_militia":		draw_sprite_ext(population_human_militia,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_human_miner":			draw_sprite_ext(population_human_miner,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_human_peasants":		draw_sprite_ext(population_human_peasants,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_human_seamen":			draw_sprite_ext(population_human_seamen,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_human_sheppards":		draw_sprite_ext(population_human_sheppards,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_human_townsfolk":		draw_sprite_ext(population_human_townsfolk,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_human_wild":			draw_sprite_ext(population_human_wild,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unit_human_ship1":				draw_sprite_ext(unit_human_ship1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					//units sides triton
					case "_32x32_triton_ico_transparent":	draw_sprite_ext(_32x32_triton_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "_64x64_triton_ico_transparent":	draw_sprite_ext(_64x64_triton_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_triton_merchant":		draw_sprite_ext(population_triton_merchant,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_triton_militia":		draw_sprite_ext(population_triton_militia,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_triton_miner":			draw_sprite_ext(population_triton_miner,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_triton_peasants":		draw_sprite_ext(population_triton_peasants,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_triton_sheppards":		draw_sprite_ext(population_triton_sheppards,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_triton_townsfolk":		draw_sprite_ext(population_triton_townsfolk,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_triton_wild":			draw_sprite_ext(population_triton_wild,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unit_triton_ship1":				draw_sprite_ext(unit_triton_ship1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					//units sides undead
					case "_32x32_undead_ico_transparent":	draw_sprite_ext(_32x32_undead_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "_64x64_undead_ico_transparent":	draw_sprite_ext(_64x64_undead_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_undead_miner":			draw_sprite_ext(population_undead_miner,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_undead_townsfolk":		draw_sprite_ext(population_undead_townsfolk,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_undead_wild":			draw_sprite_ext(population_undead_wild,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unit_undead_ship1":				draw_sprite_ext(unit_undead_ship1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					//units sides woodelf
					case "_32x32_woodelf_ico_transparent":	draw_sprite_ext(_32x32_woodelf_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "_64x64_woodelf_ico_transparent":	draw_sprite_ext(_64x64_woodelf_ico_transparent,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_woodelf_militia":		draw_sprite_ext(population_woodelf_militia,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_woodelf_peasants":		draw_sprite_ext(population_woodelf_peasants,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_woodelf_seamen":		draw_sprite_ext(population_woodelf_seamen,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_woodelf_sheppards":	draw_sprite_ext(population_woodelf_sheppards,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "population_woodelf_wild":			draw_sprite_ext(population_woodelf_wild,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "unit_woodelf_ship1":				draw_sprite_ext(unit_woodelf_ship1,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
				}	
			
		}

}