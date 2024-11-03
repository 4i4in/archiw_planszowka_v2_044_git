//subscript of draw_sorted_terrain
function draw_fortyfications()
{
	for(var _ii = 0; _ii < ds_list_size(draw_fortyfications_map); _ii += dgm_wrap)
		{		
			var _xx  = ds_list_find_value(draw_fortyfications_map, _ii+0);
			var _yy  = ds_list_find_value(draw_fortyfications_map, _ii+1);
			var _pic = ds_list_find_value(draw_fortyfications_map, _ii+2);
			switch(_pic)
				{
					//fortyfications
					case "fortyfication_dwarf_1_mini":	draw_sprite_ext(fortyfication_dwarf_1_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_dwarf_2_mini":	draw_sprite_ext(fortyfication_dwarf_2_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_dwarf_3_mini":	draw_sprite_ext(fortyfication_dwarf_3_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_dwarf_4_mini":	draw_sprite_ext(fortyfication_dwarf_4_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_dwarf_5_mini":	draw_sprite_ext(fortyfication_dwarf_5_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_dwarf_6_mini":	draw_sprite_ext(fortyfication_dwarf_6_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_dwarf_7_mini":	draw_sprite_ext(fortyfication_dwarf_7_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_dwarf_8_mini":	draw_sprite_ext(fortyfication_dwarf_8_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_dwarf_9_mini":	draw_sprite_ext(fortyfication_dwarf_9_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "fortyfication_generic_1_mini":	draw_sprite_ext(fortyfication_generic_1_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_generic_2_mini":	draw_sprite_ext(fortyfication_generic_2_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_generic_3_mini":	draw_sprite_ext(fortyfication_generic_3_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_generic_4_mini":	draw_sprite_ext(fortyfication_generic_4_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_generic_5_mini":	draw_sprite_ext(fortyfication_generic_5_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_generic_6_mini":	draw_sprite_ext(fortyfication_generic_6_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_generic_7_mini":	draw_sprite_ext(fortyfication_generic_7_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_generic_8_mini":	draw_sprite_ext(fortyfication_generic_8_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_generic_9_mini":	draw_sprite_ext(fortyfication_generic_9_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "fortyfication_highelf_1_mini":	draw_sprite_ext(fortyfication_highelf_1_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_highelf_2_mini":	draw_sprite_ext(fortyfication_highelf_2_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_highelf_3_mini":	draw_sprite_ext(fortyfication_highelf_3_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_highelf_4_mini":	draw_sprite_ext(fortyfication_highelf_4_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_highelf_5_mini":	draw_sprite_ext(fortyfication_highelf_5_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_highelf_6_mini":	draw_sprite_ext(fortyfication_highelf_6_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_highelf_7_mini":	draw_sprite_ext(fortyfication_highelf_7_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_highelf_8_mini":	draw_sprite_ext(fortyfication_highelf_8_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_highelf_9_mini":	draw_sprite_ext(fortyfication_highelf_9_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "fortyfication_human_1_mini":	draw_sprite_ext(fortyfication_human_1_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_human_2_mini":	draw_sprite_ext(fortyfication_human_2_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_human_3_mini":	draw_sprite_ext(fortyfication_human_3_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_human_4_mini":	draw_sprite_ext(fortyfication_human_4_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_human_5_mini":	draw_sprite_ext(fortyfication_human_5_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_human_6_mini":	draw_sprite_ext(fortyfication_human_6_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_human_7_mini":	draw_sprite_ext(fortyfication_human_7_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_human_8_mini":	draw_sprite_ext(fortyfication_human_8_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_human_9_mini":	draw_sprite_ext(fortyfication_human_9_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "fortyfication_triton_1_mini":	draw_sprite_ext(fortyfication_triton_1_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_triton_2_mini":	draw_sprite_ext(fortyfication_triton_2_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_triton_3_mini":	draw_sprite_ext(fortyfication_triton_3_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_triton_4_mini":	draw_sprite_ext(fortyfication_triton_4_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_triton_5_mini":	draw_sprite_ext(fortyfication_triton_5_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_triton_6_mini":	draw_sprite_ext(fortyfication_triton_6_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_triton_7_mini":	draw_sprite_ext(fortyfication_triton_7_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_triton_8_mini":	draw_sprite_ext(fortyfication_triton_8_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_triton_9_mini":	draw_sprite_ext(fortyfication_triton_9_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "fortyfication_undead_1_mini":	draw_sprite_ext(fortyfication_undead_1_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_undead_2_mini":	draw_sprite_ext(fortyfication_undead_2_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_undead_3_mini":	draw_sprite_ext(fortyfication_undead_3_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_undead_4_mini":	draw_sprite_ext(fortyfication_undead_4_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_undead_5_mini":	draw_sprite_ext(fortyfication_undead_5_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_undead_6_mini":	draw_sprite_ext(fortyfication_undead_6_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_undead_7_mini":	draw_sprite_ext(fortyfication_undead_7_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_undead_8_mini":	draw_sprite_ext(fortyfication_undead_8_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_undead_9_mini":	draw_sprite_ext(fortyfication_undead_9_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					
					case "fortyfication_woodelf_1_mini":	draw_sprite_ext(fortyfication_woodelf_1_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_woodelf_2_mini":	draw_sprite_ext(fortyfication_woodelf_2_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_woodelf_3_mini":	draw_sprite_ext(fortyfication_woodelf_3_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_woodelf_4_mini":	draw_sprite_ext(fortyfication_woodelf_4_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_woodelf_5_mini":	draw_sprite_ext(fortyfication_woodelf_5_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_woodelf_6_mini":	draw_sprite_ext(fortyfication_woodelf_6_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_woodelf_7_mini":	draw_sprite_ext(fortyfication_woodelf_7_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_woodelf_8_mini":	draw_sprite_ext(fortyfication_woodelf_8_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;
					case "fortyfication_woodelf_9_mini":	draw_sprite_ext(fortyfication_woodelf_9_mini,0,_xx,_yy,sss,sss,0,-1,1);	break;	
				}	
			
		}

}