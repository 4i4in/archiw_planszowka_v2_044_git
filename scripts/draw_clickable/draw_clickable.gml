function draw_clickable()
{
	var _xx = xxx1; var _yy = yyy1;
	var _xx_plus16 = _xx + game_struct.button_size/4;
	var _not_found = 1;
	switch(pic1)
		{
			case "":	_not_found = 0;	break;
			
			//buffs ico
			case "_32x32_attack_buff":
			draw_sprite_ext(_32x32_attack_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_concealed_buff":
			draw_sprite_ext(_32x32_concealed_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_curious_buff":
			draw_sprite_ext(_32x32_curious_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_inspector_buff":
			draw_sprite_ext(_32x32_inspector_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_move_buff":
			draw_sprite_ext(_32x32_move_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_overwater_buff":
			draw_sprite_ext(_32x32_overwater_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_spy_buff":
			draw_sprite_ext(_32x32_spy_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_underwater_buff":
			draw_sprite_ext(_32x32_underwater_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_embark_overwater_buff":
			draw_sprite_ext(_32x32_embark_overwater_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_embarked_buff":
			draw_sprite_ext(_32x32_embarked_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_attack_buff":
			draw_sprite_ext(_64x64_attack_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_concealed_buff":
			draw_sprite_ext(_64x64_concealed_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_curious_buff":
			draw_sprite_ext(_64x64_curious_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_inspector_buff":
			draw_sprite_ext(_64x64_inspector_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_move_buff":
			draw_sprite_ext(_64x64_move_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_overwater_buff":
			draw_sprite_ext(_64x64_overwater_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_spy_buff":
			draw_sprite_ext(_64x64_spy_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_underwater_buff":
			draw_sprite_ext(_64x64_underwater_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_embark_overwater_buff":
			draw_sprite_ext(_64x64_embark_overwater_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_embarked_buff":
			draw_sprite_ext(_64x64_embarked_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_32x32_unsplitable_buff":
			draw_sprite_ext(_32x32_unsplitable_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_unsplitable_buff":
			draw_sprite_ext(_64x64_unsplitable_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_32x32_spell1_buff":
			draw_sprite_ext(_32x32_spell1_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_spell1_buff":
			draw_sprite_ext(_64x64_spell1_buff,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//actions
			case "unit_selected_highlite":
			draw_sprite_ext(unit_selected_highlite,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			
			case "_32x32_exclamation_mark":
			draw_sprite_ext(_32x32_exclamation_mark,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_attack":
			draw_sprite_ext(_64x64_attack,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_32x32_attack":
			draw_sprite_ext(_32x32_attack,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_64x64_attack_fade":
			draw_sprite_ext(_64x64_attack_fade,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_32x32_attack_fade":
			draw_sprite_ext(_32x32_attack_fade,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_inspect":
			draw_sprite_ext(_64x64_inspect,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_32x32_inspect":
			draw_sprite_ext(_32x32_inspect,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_64x64_inspect_fade":
			draw_sprite_ext(_64x64_inspect_fade,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_32x32_inspect_fade":
			draw_sprite_ext(_32x32_inspect_fade,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_move":
			draw_sprite_ext(_64x64_move,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_32x32_move":
			draw_sprite_ext(_32x32_move,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_64x64_move_fade":
			draw_sprite_ext(_64x64_move_fade,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_32x32_move_fade":
			draw_sprite_ext(_32x32_move_fade,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_embark":
			draw_sprite_ext(_64x64_embark,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_32x32_embark":
			draw_sprite_ext(_32x32_embark,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_64x64_embark_fade":
			draw_sprite_ext(_64x64_embark_fade,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_32x32_embark_fade":
			draw_sprite_ext(_32x32_embark_fade,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_disembark":
			draw_sprite_ext(_64x64_disembark,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_32x32_disembark":
			draw_sprite_ext(_32x32_disembark,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_64x64_disembark_fade":
			draw_sprite_ext(_64x64_disembark_fade,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			case "_32x32_disembark_fade":
			draw_sprite_ext(_32x32_disembark_fade,0,xxx1,yyy1,sss,sss,0,-1,1);	_not_found = 0;	break;
			
			case "_x2_HP_bar":
			var _scale = xxx2-xxx1-4;
			draw_sprite_part(_x2_HP_bar,0,0,0,_scale,2,xxx1+2,yyy1);
			//draw_sprite_ext(_x2_HP_bar,0,xxx1+2,yyy1,_scale,sss,0,_color,0.8);
			draw_sprite_ext(_x2_HP_bar_cover,0,xxx1+2,yyy1-1,sss,sss,0,-1,1);	_not_found = 0;	break;
			
			
			case "city_marker_in_city_submenu":
			var _scale = (xxx2-xxx1) / game_struct.button_size;
			draw_sprite_ext(city_marker_in_city_submenu,0,xxx1,yyy1,_scale,_scale,0,-1,1);	_not_found = 0;	break;
			
			case "city_marker_in_city_submenu_selected":
			var _scale = (xxx2-xxx1) / game_struct.button_size;
			draw_sprite_ext(city_marker_in_city_submenu_selected,0,xxx1,yyy1,_scale,_scale,0,-1,1);	_not_found = 0;	break;
			
			case "_adaptive_background_0":
			draw_sprite_stretched(_adaptive_background_0,0,xxx1,yyy1,xxx2,yyy2);	_not_found = 0;	break;
			
			case "_512x256_background":
			draw_sprite_ext(_512x256_background,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_512x256_background_mouseover":
			draw_sprite_ext(_512x256_background_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_256x64_background":
			draw_sprite_ext(_256x64_background,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_256x64_background_mouseover":
			draw_sprite_ext(_256x64_background_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_256x32_background":
			draw_sprite_ext(_256x32_background,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_256x32_background_mouseover":
			draw_sprite_ext(_256x32_background_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_background":
			draw_sprite_ext(_64x64_background,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_32x32_background":
			draw_sprite_ext(_32x32_background,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_256x128_background":
			draw_sprite_ext(_256x128_background,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_256x256_background":
			draw_sprite_ext(_256x256_background,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_32x16_text_background":
			draw_sprite_ext(_32x16_text_background,0,xxx1,yyy1+8,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_copy":
			draw_sprite_ext(_64x64_copy,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_copy_mouseover":
			draw_sprite_ext(_64x64_copy_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_128x64_background":
			draw_sprite_ext(_128x64_background,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_128x64_background_mouseover":
			draw_sprite_ext(_128x64_background_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_128x32_background":
			draw_sprite_ext(_128x32_background,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_128x32_background_mouseover":
			draw_sprite_ext(_128x32_background_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_randomise":
			draw_sprite_ext(_64x64_randomise,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_randomise_mouseover":
			draw_sprite_ext(_64x64_randomise_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_negative":
			draw_sprite_ext(_64x64_negative,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_negative_mouseover":
			draw_sprite_ext(_64x64_negative_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_positive":
			draw_sprite_ext(_64x64_positive,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_positive_mouseover":
			draw_sprite_ext(_64x64_positive_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_32x32_negative":
			draw_sprite_ext(_32x32_negative,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_negative_mouseover":
			draw_sprite_ext(_32x32_negative_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_32x32_positive":
			draw_sprite_ext(_32x32_positive,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_positive_mouseover":
			draw_sprite_ext(_32x32_positive_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_32x32_next_unit":
			draw_sprite_ext(_32x32_next_unit,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_next_unit_mouseover":
			draw_sprite_ext(_32x32_next_unit_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_32x32_EOTurn":
			draw_sprite_ext(_32x32_EOTurn,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_EOTurn_mouseover":
			draw_sprite_ext(_32x32_EOTurn_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_32x32_right":
			draw_sprite_ext(_32x32_right,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_right_mouseover":
			draw_sprite_ext(_32x32_right_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_32x32_left":
			draw_sprite_ext(_32x32_left,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_left_mouseover":
			draw_sprite_ext(_32x32_left_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_clear_1":
			draw_sprite_ext(_64x64_clear_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_32x32_clear_1":
			draw_sprite_ext(_32x32_clear_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_go_back":
			draw_sprite_ext(_64x64_go_back,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_go_back_mouseover":
			draw_sprite_ext(_64x64_go_back_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_save_1":
			draw_sprite_ext(_64x64_save_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_load_1":
			draw_sprite_ext(_64x64_load_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_play":
			draw_sprite_ext(_64x64_play,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_play_mouseover":
			draw_sprite_ext(_64x64_play_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_mechanics":
			draw_sprite_ext(_64x64_mechanics,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_mechanics_mouseover":
			draw_sprite_ext(_64x64_mechanics_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//side ico
			case "_32x32_dwarf_ico":
			draw_sprite_ext(_32x32_dwarf_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_generic_ico":
			draw_sprite_ext(_32x32_generic_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_highelf_ico":
			draw_sprite_ext(_32x32_highelf_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_human_ico":
			draw_sprite_ext(_32x32_human_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_triton_ico":
			draw_sprite_ext(_32x32_triton_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_undead_ico":
			draw_sprite_ext(_32x32_undead_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_woodelf_ico":
			draw_sprite_ext(_32x32_woodelf_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_unknown_ico":
			draw_sprite_ext(_32x32_unknown_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_32x32_dwarf_ico_transparent":
			draw_sprite_ext(_32x32_dwarf_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_generic_ico_transparent":
			draw_sprite_ext(_32x32_generic_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_highelf_ico_transparent":
			draw_sprite_ext(_32x32_highelf_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_human_ico_transparent":
			draw_sprite_ext(_32x32_human_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_triton_ico_transparent":
			draw_sprite_ext(_32x32_triton_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_undead_ico_transparent":
			draw_sprite_ext(_32x32_undead_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_woodelf_ico_transparent":
			draw_sprite_ext(_32x32_woodelf_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_32x32_unknown_ico_transparent":
			draw_sprite_ext(_32x32_unknown_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_dwarf_ico":
			draw_sprite_ext(_64x64_dwarf_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_generic_ico":
			draw_sprite_ext(_64x64_generic_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_highelf_ico":
			draw_sprite_ext(_64x64_highelf_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_human_ico":
			draw_sprite_ext(_64x64_human_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_triton_ico":
			draw_sprite_ext(_64x64_triton_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_undead_ico":
			draw_sprite_ext(_64x64_undead_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_woodelf_ico":
			draw_sprite_ext(_64x64_woodelf_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_unknown_ico":
			draw_sprite_ext(_64x64_unknown_ico,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_dwarf_ico_transparent":
			draw_sprite_ext(_64x64_dwarf_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_generic_ico_transparent":
			draw_sprite_ext(_64x64_generic_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_highelf_ico_transparent":
			draw_sprite_ext(_64x64_highelf_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_human_ico_transparent":
			draw_sprite_ext(_64x64_human_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_triton_ico_transparent":
			draw_sprite_ext(_64x64_triton_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_undead_ico_transparent":
			draw_sprite_ext(_64x64_undead_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_woodelf_ico_transparent":
			draw_sprite_ext(_64x64_woodelf_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_unknown_ico_transparent":
			draw_sprite_ext(_64x64_unknown_ico_transparent,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			
			//brushes
			case "_64x64_highlite_0":
			draw_sprite_ext(_64x64_highlite_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_highlite_1":
			draw_sprite_ext(_64x64_highlite_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_highlite_2":
			draw_sprite_ext(_64x64_highlite_2,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_highlite_3":
			draw_sprite_ext(_64x64_highlite_3,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_positive_terrain_paint_1":
			draw_sprite_ext(_64x64_positive_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_positive_terrain_paint_0":
			draw_sprite_ext(_64x64_positive,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_negative_terrain_paint_1":
			draw_sprite_ext(_64x64_negative_mouseover,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_negative_terrain_paint_0":
			draw_sprite_ext(_64x64_negative,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_terrain_paint_null":
			draw_sprite_ext(_64x64_clear_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			
			//buttons for buildings
			case "_64x64_city_0":
			draw_sprite_ext(_64x64_city_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_city_1":
			draw_sprite_ext(_64x64_city_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_fortification_0":
			draw_sprite_ext(_64x64_fortification_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_fortification_1":
			draw_sprite_ext(_64x64_fortification_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_utylity_buildings_0":
			draw_sprite_ext(_64x64_utylity_buildings_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_utylity_buildings_1":
			draw_sprite_ext(_64x64_utylity_buildings_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_ruins_0":
			draw_sprite_ext(_64x64_ruins_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_ruins_1":
			draw_sprite_ext(_64x64_ruins_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_visibility_0":
			draw_sprite_ext(_64x64_visibility_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_visibility_1":
			draw_sprite_ext(_64x64_visibility_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			
			//paint for terrain
			case "_64x64_mountains_0":
			draw_sprite_ext(_64x64_mountains_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_mountains_1":
			draw_sprite_ext(_64x64_mountains_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_hills_0":
			draw_sprite_ext(_64x64_hills_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_hills_1":
			draw_sprite_ext(_64x64_hills_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_plain_0":
			draw_sprite_ext(_64x64_plain_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_plain_1":
			draw_sprite_ext(_64x64_plain_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_sand_0":
			draw_sprite_ext(_64x64_sand_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_sand_1":
			draw_sprite_ext(_64x64_sand_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_shallow_water_0":
			draw_sprite_ext(_64x64_shallow_water_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_shallow_water_1":
			draw_sprite_ext(_64x64_shallow_water_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_deep_water_0":
			draw_sprite_ext(_64x64_deep_water_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_deep_water_1":
			draw_sprite_ext(_64x64_deep_water_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_rivers_0":
			draw_sprite_ext(_64x64_rivers_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_rivers_1":
			draw_sprite_ext(_64x64_rivers_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_roads_0":
			draw_sprite_ext(_64x64_roads_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_roads_1":
			draw_sprite_ext(_64x64_roads_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_continuo_0":
			draw_sprite_ext(_64x64_continuo_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_continuo_1":
			draw_sprite_ext(_64x64_continuo_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_mouse_0":
			draw_sprite_ext(_64x64_mouse_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//paint for props
			case "_64x64_crateres_0":
			draw_sprite_ext(_64x64_crateres_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_crateres_1":
			draw_sprite_ext(_64x64_crateres_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_deasise_0":
			draw_sprite_ext(_64x64_deasise_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_deasise_1":
			draw_sprite_ext(_64x64_deasise_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_forest_0":
			draw_sprite_ext(_64x64_forest_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_forest_1":
			draw_sprite_ext(_64x64_forest_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_oasis_0":
			draw_sprite_ext(_64x64_oasis_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_oasis_1":
			draw_sprite_ext(_64x64_oasis_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_pollution_0":
			draw_sprite_ext(_64x64_pollution_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_pollution_1":
			draw_sprite_ext(_64x64_pollution_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_reefs_rocks_0":
			draw_sprite_ext(_64x64_reefs_rocks_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_reefs_rocks_1":
			draw_sprite_ext(_64x64_reefs_rocks_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_rifts_0":
			draw_sprite_ext(_64x64_rifts_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_rifts_1":
			draw_sprite_ext(_64x64_rifts_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_salt_lakes_0":
			draw_sprite_ext(_64x64_salt_lakes_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_salt_lakes_1":
			draw_sprite_ext(_64x64_salt_lakes_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_shallows_0":
			draw_sprite_ext(_64x64_shallows_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_shallows_1":
			draw_sprite_ext(_64x64_shallows_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_swamps_0":
			draw_sprite_ext(_64x64_swamps_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_swamps_1":
			draw_sprite_ext(_64x64_swamps_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_vulcano_0":
			draw_sprite_ext(_64x64_vulcano_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_vulcano_1":
			draw_sprite_ext(_64x64_vulcano_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_wood_0":
			draw_sprite_ext(_64x64_wood_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_wood_1":
			draw_sprite_ext(_64x64_wood_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//paint for resources
			case "_64x64_animals_0":
			draw_sprite_ext(_64x64_animals_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_animals_1":
			draw_sprite_ext(_64x64_animals_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_coal_0":
			draw_sprite_ext(_64x64_coal_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_coal_1":
			draw_sprite_ext(_64x64_coal_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_crops_0":
			draw_sprite_ext(_64x64_crops_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_crops_1":
			draw_sprite_ext(_64x64_crops_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_gems_0":
			draw_sprite_ext(_64x64_gems_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_gems_1":
			draw_sprite_ext(_64x64_gems_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_granite_0":
			draw_sprite_ext(_64x64_granite_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_granite_1":
			draw_sprite_ext(_64x64_granite_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_iron_0":
			draw_sprite_ext(_64x64_iron_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_iron_1":
			draw_sprite_ext(_64x64_iron_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_marble_0":
			draw_sprite_ext(_64x64_marble_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_marble_1":
			draw_sprite_ext(_64x64_marble_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_precious_metals_0":
			draw_sprite_ext(_64x64_precious_metals_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_precious_metals_1":
			draw_sprite_ext(_64x64_precious_metals_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_rare_metals_0":
			draw_sprite_ext(_64x64_rare_metals_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_rare_metals_1":
			draw_sprite_ext(_64x64_rare_metals_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_salt_0":
			draw_sprite_ext(_64x64_salt_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_salt_1":
			draw_sprite_ext(_64x64_salt_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_stones_0":
			draw_sprite_ext(_64x64_stones_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_stones_1":
			draw_sprite_ext(_64x64_stones_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_water_0":
			draw_sprite_ext(_64x64_water_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_water_1":
			draw_sprite_ext(_64x64_water_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//gameplay menu
			case "_64x64_show_grid_0":
			draw_sprite_ext(_64x64_show_grid_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_show_grid_1":
			draw_sprite_ext(_64x64_show_grid_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_show_hide_forest_0":
			draw_sprite_ext(_64x64_show_hide_forest_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_show_hide_forest_1":
			draw_sprite_ext(_64x64_show_hide_forest_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_show_hide_forest_2":
			draw_sprite_ext(_64x64_show_hide_forest_2,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_show_hide_resources_0":
			draw_sprite_ext(_64x64_show_hide_resources_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_show_hide_resources_1":
			draw_sprite_ext(_64x64_show_hide_resources_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_show_ou_water_0":
			draw_sprite_ext(_64x64_show_ou_water_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_show_ou_water_1":
			draw_sprite_ext(_64x64_show_ou_water_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "_64x64_show_FOW_0":
			draw_sprite_ext(_64x64_show_FOW_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "_64x64_show_FOW_1":
			draw_sprite_ext(_64x64_show_FOW_1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "raw_minimap_surface":
			if !surface_exists(raw_minimap_surface)	{raw_minimap_surface = surface_create(game_struct.map_xsize,game_struct.map_ysize)};
			draw_surface_stretched(	raw_minimap_surface, xxx1, yyy1,
									game_struct.map_xsize*game_struct.minimap_scale,
									game_struct.map_ysize*game_struct.minimap_scale);
									_not_found = 0;	break;
			case "seamles_raw_minimap_surface":
			if !surface_exists(raw_minimap_surface)	{raw_minimap_surface = surface_create(game_struct.map_xsize,game_struct.map_ysize)};
			draw_surface_tiled_ext(	raw_minimap_surface, xxx1, yyy1,
									game_struct.minimap_scale,game_struct.minimap_scale,-1,1);
									_not_found = 0;	break;
									
			case "_minimap_surface":
			if !surface_exists(minimap_show)	{minimap_show = surface_create(game_struct.map_xsize,game_struct.map_ysize)};
			draw_surface_stretched(	minimap_show,game_struct.mimimap_xpos,game_struct.mimimap_ypos,
								game_struct.map_xsize*game_struct.minimap_scale,
								game_struct.map_ysize*game_struct.minimap_scale);
								_not_found = 0;	break;
			
			case "_city_surface":
			if surface_exists(city_surface)	{	draw_surface(city_surface,xxx1,yyy1);	};	_not_found = 0;	break;
			
			
			//cities
			case "city_dwarf_0":
			draw_sprite_ext(city_dwarf_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "city_dwarf_0s":
			draw_sprite_ext(city_dwarf_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "city_generic_0":
			draw_sprite_ext(city_generic_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "city_generic_0s":
			draw_sprite_ext(city_generic_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "city_highelf_0":
			draw_sprite_ext(city_highelf_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "city_highelf_0s":
			draw_sprite_ext(city_highelf_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "city_human_0":
			draw_sprite_ext(city_human_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "city_human_0s":
			draw_sprite_ext(city_human_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "city_triton_0":
			draw_sprite_ext(city_triton_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "city_triton_0s":
			draw_sprite_ext(city_triton_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "city_undead_0":
			draw_sprite_ext(city_undead_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "city_undead_0s":
			draw_sprite_ext(city_undead_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "city_woodelf_0":
			draw_sprite_ext(city_woodelf_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "city_woodelf_0s":
			draw_sprite_ext(city_woodelf_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//fortyfication
			case "fortyfication_dwarf_0":
			draw_sprite_ext(fortyfication_dwarf_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "fortyfication_dwarf_0s":
			draw_sprite_ext(fortyfication_dwarf_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "fortyfication_generic_0":
			draw_sprite_ext(fortyfication_generic_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "fortyfication_generic_0s":
			draw_sprite_ext(fortyfication_generic_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "fortyfication_highelf_0":
			draw_sprite_ext(fortyfication_highelf_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "fortyfication_highelf_0s":
			draw_sprite_ext(fortyfication_highelf_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "fortyfication_human_0":
			draw_sprite_ext(fortyfication_human_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "fortyfication_human_0s":
			draw_sprite_ext(fortyfication_human_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "fortyfication_triton_0":
			draw_sprite_ext(fortyfication_triton_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "fortyfication_triton_0s":
			draw_sprite_ext(fortyfication_triton_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "fortyfication_undead_0":
			draw_sprite_ext(fortyfication_undead_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "fortyfication_undead_0s":
			draw_sprite_ext(fortyfication_undead_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "fortyfication_woodelf_0":
			draw_sprite_ext(fortyfication_woodelf_0,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "fortyfication_woodelf_0s":
			draw_sprite_ext(fortyfication_woodelf_0s,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//utylity building
			//dwarf
			case "utylity_dwarf_armory":
			draw_sprite_ext(utylity_dwarf_armory,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_dwarf_artist":
			draw_sprite_ext(utylity_dwarf_artist,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_dwarf_bank":
			draw_sprite_ext(utylity_dwarf_bank,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_dwarf_deepmine":
			draw_sprite_ext(utylity_dwarf_deepmine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_dwarf_forge":
			draw_sprite_ext(utylity_dwarf_forge,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_dwarf_halloffame":
			draw_sprite_ext(utylity_dwarf_halloffame,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_dwarf_market":
			draw_sprite_ext(utylity_dwarf_market,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_dwarf_mine":
			draw_sprite_ext(utylity_dwarf_mine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_dwarf_runesmith":
			draw_sprite_ext(utylity_dwarf_runesmith,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_dwarf_smith":
			draw_sprite_ext(utylity_dwarf_smith,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_dwarf_tronroom":
			draw_sprite_ext(utylity_dwarf_tronroom,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_dwarf_watchtower":
			draw_sprite_ext(utylity_dwarf_watchtower,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_dwarf_lumberjack":
			draw_sprite_ext(utylity_dwarf_lumberjack,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//utylity building
			//generic
			case "utylity_generic_agriculture":
			draw_sprite_ext(utylity_generic_agriculture,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_generic_armory":
			draw_sprite_ext(utylity_generic_armory,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_generic_artist":
			draw_sprite_ext(utylity_generic_artist,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_generic_market":
			draw_sprite_ext(utylity_generic_market,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_generic_mine":
			draw_sprite_ext(utylity_generic_mine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_generic_shipyard":
			draw_sprite_ext(utylity_generic_shipyard,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_generic_smith":
			draw_sprite_ext(utylity_generic_smith,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_generic_stables":
			draw_sprite_ext(utylity_generic_stables,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_generic_tronroom":
			draw_sprite_ext(utylity_generic_tronroom,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_generic_watchtower":
			draw_sprite_ext(utylity_generic_watchtower,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_generic_witch":
			draw_sprite_ext(utylity_generic_witch,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_generic_wizard":
			draw_sprite_ext(utylity_generic_wizard,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//utylity highelf
			case "utylity_highelf_agriculture":
			draw_sprite_ext(utylity_highelf_agriculture,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_highelf_armory":
			draw_sprite_ext(utylity_highelf_armory,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_highelf_artist":
			draw_sprite_ext(utylity_highelf_artist,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_highelf_mage":
			draw_sprite_ext(utylity_highelf_mage,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_highelf_shipyard":
			draw_sprite_ext(utylity_highelf_shipyard,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_highelf_shrine":
			draw_sprite_ext(utylity_highelf_shrine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_highelf_smith":
			draw_sprite_ext(utylity_highelf_smith,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_highelf_stables":
			draw_sprite_ext(utylity_highelf_stables,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_highelf_watchtower":
			draw_sprite_ext(utylity_highelf_watchtower,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//utylity human
			case "utylity_human_agriculture":
			draw_sprite_ext(utylity_human_agriculture,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_human_armory":
			draw_sprite_ext(utylity_human_armory,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_human_artist":
			draw_sprite_ext(utylity_human_artist,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_human_market":
			draw_sprite_ext(utylity_human_market,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_human_mine":
			draw_sprite_ext(utylity_human_mine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_human_shipyard":
			draw_sprite_ext(utylity_human_shipyard,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_human_shrine":
			draw_sprite_ext(utylity_human_shrine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_human_smith":
			draw_sprite_ext(utylity_human_smith,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_human_stables":
			draw_sprite_ext(utylity_human_stables,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_human_temple":
			draw_sprite_ext(utylity_human_temple,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_human_tronroom":
			draw_sprite_ext(utylity_human_tronroom,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_human_watchtower":
			draw_sprite_ext(utylity_human_watchtower,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_human_wizard":
			draw_sprite_ext(utylity_human_wizard,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//utylity undead
			case "utylity_undead_armory":
			draw_sprite_ext(utylity_undead_armory,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_undead_shipyard":
			draw_sprite_ext(utylity_undead_shipyard,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_undead_smith":
			draw_sprite_ext(utylity_undead_smith,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_undead_stables":
			draw_sprite_ext(utylity_undead_stables,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_undead_watchtower":
			draw_sprite_ext(utylity_undead_watchtower,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//utylity woodelf
			case "utylity_woodelf_armory":
			draw_sprite_ext(utylity_woodelf_armory,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_woodelf_artist":
			draw_sprite_ext(utylity_woodelf_artist,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_woodelf_shipyard":
			draw_sprite_ext(utylity_woodelf_shipyard,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_woodelf_shrine":
			draw_sprite_ext(utylity_woodelf_shrine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_woodelf_smith":
			draw_sprite_ext(utylity_woodelf_smith,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_woodelf_stables":
			draw_sprite_ext(utylity_woodelf_stables,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_woodelf_watchtower":
			draw_sprite_ext(utylity_woodelf_watchtower,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "utylity_woodelf_witch":
			draw_sprite_ext(utylity_woodelf_witch,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//ruins dwarf
			case "ruins_dwarf_city":
			draw_sprite_ext(ruins_dwarf_city,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_dwarf_fortyfication":
			draw_sprite_ext(ruins_dwarf_fortyfication,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_dwarf_mine":
			draw_sprite_ext(ruins_dwarf_mine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_dwarf_sculpture":
			draw_sprite_ext(ruins_dwarf_sculpture,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_dwarf_watchtower":
			draw_sprite_ext(ruins_dwarf_watchtower,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//ruins generic
			case "ruins_generic_city":
			draw_sprite_ext(ruins_generic_city,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_generic_fortyfication":
			draw_sprite_ext(ruins_generic_fortyfication,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_generic_mine":
			draw_sprite_ext(ruins_generic_mine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_generic_sculpture":
			draw_sprite_ext(ruins_generic_sculpture,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_generic_watchtower":
			draw_sprite_ext(ruins_generic_watchtower,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//ruins highelf
			case "ruins_highelf_city":
			draw_sprite_ext(ruins_highelf_city,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_highelf_fortyfication":
			draw_sprite_ext(ruins_highelf_fortyfication,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_highelf_sculpture":
			draw_sprite_ext(ruins_highelf_sculpture,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_highelf_shrine":
			draw_sprite_ext(ruins_highelf_shrine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_highelf_watchtower":
			draw_sprite_ext(ruins_highelf_watchtower,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//ruins human
			case "ruins_human_city":
			draw_sprite_ext(ruins_human_city,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_human_fortyfication":
			draw_sprite_ext(ruins_human_fortyfication,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_human_mine":
			draw_sprite_ext(ruins_human_mine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_human_sculpture":
			draw_sprite_ext(ruins_human_sculpture,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_human_shrine":
			draw_sprite_ext(ruins_human_shrine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_human_temple":
			draw_sprite_ext(ruins_human_temple,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_human_watchtower":
			draw_sprite_ext(ruins_human_watchtower,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//ruins triton
			case "ruins_triton_city":
			draw_sprite_ext(ruins_triton_city,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_triton_fortyfication":
			draw_sprite_ext(ruins_triton_fortyfication,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_triton_sculpture":
			draw_sprite_ext(ruins_triton_sculpture,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_triton_shrine":
			draw_sprite_ext(ruins_triton_shrine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_triton_temple":
			draw_sprite_ext(ruins_triton_temple,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//ruins undead
			case "ruins_undead_city":
			draw_sprite_ext(ruins_undead_city,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_undead_fortyfication":
			draw_sprite_ext(ruins_undead_fortyfication,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_undead_sculpture":
			draw_sprite_ext(ruins_undead_sculpture,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_undead_watchtower":
			draw_sprite_ext(ruins_undead_watchtower,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//ruins woodelf
			case "ruins_woodelf_city":
			draw_sprite_ext(ruins_woodelf_city,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_woodelf_fortyfication":
			draw_sprite_ext(ruins_woodelf_fortyfication,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_woodelf_sculpture":
			draw_sprite_ext(ruins_woodelf_sculpture,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_woodelf_shrine":
			draw_sprite_ext(ruins_woodelf_shrine,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "ruins_woodelf_watchtower":
			draw_sprite_ext(ruins_woodelf_watchtower,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			
			//population unknown
			case "population_unknown_unit":
			draw_sprite_ext(population_unknown_unit,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_unknown_unit_big":
			draw_sprite_ext(population_unknown_unit_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			
			//population dwarf
			case "population_dwarf_merchant":
			draw_sprite_ext(population_dwarf_merchant,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_dwarf_merchant_big":
			draw_sprite_ext(population_dwarf_merchant_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_dwarf_militia":
			draw_sprite_ext(population_dwarf_militia,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_dwarf_militia_big":
			draw_sprite_ext(population_dwarf_militia_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_dwarf_miner":
			draw_sprite_ext(population_dwarf_miner,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_dwarf_miner_big":
			draw_sprite_ext(population_dwarf_miner_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_dwarf_sheppards":
			draw_sprite_ext(population_dwarf_sheppard,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_dwarf_sheppards_big":
			draw_sprite_ext(population_dwarf_sheppard_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_dwarf_townsfolk":
			draw_sprite_ext(population_dwarf_townsfolk,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_dwarf_townsfolk_big":
			draw_sprite_ext(population_dwarf_townsfolk_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//units dwarf
			case "unit_dwarf_ship1":
			draw_sprite_ext(unit_dwarf_ship1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "unit_dwarf_ship1_big":
			draw_sprite_ext(unit_dwarf_ship1_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//population generic
			case "population_generic_merchant":
			draw_sprite_ext(population_generic_merchant,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_generic_merchant_big":
			draw_sprite_ext(population_generic_merchant_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_generic_militia":
			draw_sprite_ext(population_generic_militia,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_generic_militia_big":
			draw_sprite_ext(population_generic_militia_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_generic_miner":
			draw_sprite_ext(population_generic_miner,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_generic_miner_big":
			draw_sprite_ext(population_generic_miner_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_generic_peasants":
			draw_sprite_ext(population_generic_peasants,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_generic_peasants_big":
			draw_sprite_ext(population_generic_peasants_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_generic_seamen":
			draw_sprite_ext(population_generic_seamen,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_generic_seamen_big":
			draw_sprite_ext(population_generic_seamen_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_generic_sheppards":
			draw_sprite_ext(population_generic_sheppards,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_generic_sheppards_big":
			draw_sprite_ext(population_generic_sheppards_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_generic_townsfolk":
			draw_sprite_ext(population_generic_townsfolk,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_generic_townsfolk_big":
			draw_sprite_ext(population_generic_townsfolk_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_generic_wild":
			draw_sprite_ext(population_generic_wild,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_generic_wild_big":
			draw_sprite_ext(population_generic_wild_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//units generic
			case "unit_generic_ship1":
			draw_sprite_ext(unit_generic_ship1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "unit_generic_ship1_big":
			draw_sprite_ext(unit_generic_ship1_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//population highelf
			case "population_highelf_militia":
			draw_sprite_ext(population_highelf_militia,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_highelf_militia_big":
			draw_sprite_ext(population_highelf_militia_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_highelf_peasants":
			draw_sprite_ext(population_highelf_peasants,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_highelf_peasants_big":
			draw_sprite_ext(population_highelf_peasants_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_highelf_seamen":
			draw_sprite_ext(population_highelf_seamen,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_highelf_seamen_big":
			draw_sprite_ext(population_highelf_seamen_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_highelf_sheppards":
			draw_sprite_ext(population_highelf_sheppards,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_highelf_sheppards_big":
			draw_sprite_ext(population_highelf_sheppards_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_highelf_townsfolk":
			draw_sprite_ext(population_highelf_townsfolk,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_highelf_townsfolk_big":
			draw_sprite_ext(population_highelf_townsfolk_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//units highelf
			case "unit_highelf_ship1":
			draw_sprite_ext(unit_highelf_ship1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "unit_highelf_ship1_big":
			draw_sprite_ext(unit_highelf_ship1_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//population human
			case "population_human_merchant":
			draw_sprite_ext(population_human_merchant,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_human_merchant_big":
			draw_sprite_ext(population_human_merchant_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_human_militia":
			draw_sprite_ext(population_human_militia,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_human_militia_big":
			draw_sprite_ext(population_human_militia_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_human_miner":
			draw_sprite_ext(population_human_miner,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_human_miner_big":
			draw_sprite_ext(population_human_miner_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_human_peasants":
			draw_sprite_ext(population_human_peasants,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_human_peasants_big":
			draw_sprite_ext(population_human_peasants_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_human_seamen":
			draw_sprite_ext(population_human_seamen,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_human_seamen_big":
			draw_sprite_ext(population_human_seamen_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_human_sheppards":
			draw_sprite_ext(population_human_sheppards,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_human_sheppards_big":
			draw_sprite_ext(population_human_sheppards_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_human_townsfolk":
			draw_sprite_ext(population_human_townsfolk,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_human_townsfolk_big":
			draw_sprite_ext(population_human_townsfolk_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_human_wild":
			draw_sprite_ext(population_human_wild,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_human_wild_big":
			draw_sprite_ext(population_human_wild_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//units human
			case "unit_human_ship1":
			draw_sprite_ext(unit_human_ship1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "unit_human_ship1_big":
			draw_sprite_ext(unit_human_ship1_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//population triton
			case "population_triton_merchant":
			draw_sprite_ext(population_triton_merchant,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_triton_merchant_big":
			draw_sprite_ext(population_triton_merchant_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_triton_militia":
			draw_sprite_ext(population_triton_militia,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_triton_militia_big":
			draw_sprite_ext(population_triton_militia_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_triton_miner":
			draw_sprite_ext(population_triton_miner,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_triton_miner_big":
			draw_sprite_ext(population_triton_miner_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_triton_peasants":
			draw_sprite_ext(population_triton_peasants,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_triton_peasants_big":
			draw_sprite_ext(population_triton_peasants_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_triton_sheppards":
			draw_sprite_ext(population_triton_sheppards,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_triton_sheppards_big":
			draw_sprite_ext(population_triton_sheppards_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_triton_townsfolk":
			draw_sprite_ext(population_triton_townsfolk,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_triton_townsfolk_big":
			draw_sprite_ext(population_triton_townsfolk_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_triton_wild":
			draw_sprite_ext(population_triton_wild,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_triton_wild_big":
			draw_sprite_ext(population_triton_wild_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//units triton
			case "unit_triton_ship1":
			draw_sprite_ext(unit_triton_ship1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "unit_triton_ship1_big":
			draw_sprite_ext(unit_triton_ship1_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//population undead
			case "population_undead_miner":
			draw_sprite_ext(population_undead_miner,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_undead_miner_big":
			draw_sprite_ext(population_undead_miner_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_undead_townsfolk":
			draw_sprite_ext(population_undead_townsfolk,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_undead_townsfolk_big":
			draw_sprite_ext(population_undead_townsfolk_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_undead_wild":
			draw_sprite_ext(population_undead_wild,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_undead_wild_big":
			draw_sprite_ext(population_undead_wild_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_undead_seamen":
			draw_sprite_ext(population_undead_seamen,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_undead_seamen_big":
			draw_sprite_ext(population_undead_seamen_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//units undead
			case "unit_undead_ship1":
			draw_sprite_ext(unit_undead_ship1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "unit_undead_ship1_big":
			draw_sprite_ext(unit_undead_ship1_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//population woodelf
			case "population_woodelf_militia":
			draw_sprite_ext(population_woodelf_militia,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_woodelf_militia_big":
			draw_sprite_ext(population_woodelf_militia_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_woodelf_peasants":
			draw_sprite_ext(population_woodelf_peasants,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_woodelf_peasants_big":
			draw_sprite_ext(population_woodelf_peasants_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_woodelf_seamen":
			draw_sprite_ext(population_woodelf_seamen,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_woodelf_seamen_big":
			draw_sprite_ext(population_woodelf_seamen_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_woodelf_sheppards":
			draw_sprite_ext(population_woodelf_sheppards,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_woodelf_sheppards_big":
			draw_sprite_ext(population_woodelf_sheppards_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "population_woodelf_wild":
			draw_sprite_ext(population_woodelf_wild,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "population_woodelf_wild_big":
			draw_sprite_ext(population_woodelf_wild_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//units woodelf
			case "unit_woodelf_ship1":
			draw_sprite_ext(unit_woodelf_ship1,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			case "unit_woodelf_ship1_big":
			draw_sprite_ext(unit_woodelf_ship1_big,0,xxx1,yyy1,1,1,0,-1,1);	_not_found = 0;	break;
			
			//props for rclick
			case "reefs_rocks_0":	draw_sprite_ext(reefs_rocks_0,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "reefs_rocks_1":	draw_sprite_ext(reefs_rocks_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "reefs_rocks_2":	draw_sprite_ext(reefs_rocks_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "reefs_rocks_3":	draw_sprite_ext(reefs_rocks_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "reefs_rocks_4":	draw_sprite_ext(reefs_rocks_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "reefs_rocks_5":	draw_sprite_ext(reefs_rocks_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "reefs_rocks_6":	draw_sprite_ext(reefs_rocks_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "reefs_rocks_7":	draw_sprite_ext(reefs_rocks_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "reefs_rocks_8":	draw_sprite_ext(reefs_rocks_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "reefs_rocks_9":	draw_sprite_ext(reefs_rocks_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
					
			case "vulcano_1":	draw_sprite_ext(vulcano_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "vulcano_2":	draw_sprite_ext(vulcano_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "vulcano_3":	draw_sprite_ext(vulcano_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "vulcano_4":	draw_sprite_ext(vulcano_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "vulcano_5":	draw_sprite_ext(vulcano_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "vulcano_6":	draw_sprite_ext(vulcano_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "vulcano_7":	draw_sprite_ext(vulcano_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "vulcano_8":	draw_sprite_ext(vulcano_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "vulcano_9":	draw_sprite_ext(vulcano_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
					
			case "rifts_1":	draw_sprite_ext(rifts_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rifts_2":	draw_sprite_ext(rifts_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rifts_3":	draw_sprite_ext(rifts_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rifts_4":	draw_sprite_ext(rifts_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rifts_5":	draw_sprite_ext(rifts_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rifts_6":	draw_sprite_ext(rifts_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rifts_7":	draw_sprite_ext(rifts_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rifts_8":	draw_sprite_ext(rifts_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rifts_9":	draw_sprite_ext(rifts_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
					
			case "craters_1":	draw_sprite_ext(craters_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "craters_2":	draw_sprite_ext(craters_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "craters_3":	draw_sprite_ext(craters_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "craters_4":	draw_sprite_ext(craters_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "craters_5":	draw_sprite_ext(craters_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "craters_6":	draw_sprite_ext(craters_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "craters_7":	draw_sprite_ext(craters_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "craters_8":	draw_sprite_ext(craters_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "craters_9":	draw_sprite_ext(craters_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
					
			case "pollution_1":	draw_sprite_ext(pollution_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "pollution_2":	draw_sprite_ext(pollution_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "pollution_3":	draw_sprite_ext(pollution_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "pollution_4":	draw_sprite_ext(pollution_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "pollution_5":	draw_sprite_ext(pollution_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "pollution_6":	draw_sprite_ext(pollution_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "pollution_7":	draw_sprite_ext(pollution_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "pollution_8":	draw_sprite_ext(pollution_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "pollution_9":	draw_sprite_ext(pollution_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
					
			case "deasise_1":	draw_sprite_ext(deasise_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deasise_2":	draw_sprite_ext(deasise_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deasise_3":	draw_sprite_ext(deasise_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deasise_4":	draw_sprite_ext(deasise_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deasise_5":	draw_sprite_ext(deasise_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deasise_6":	draw_sprite_ext(deasise_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deasise_7":	draw_sprite_ext(deasise_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deasise_8":	draw_sprite_ext(deasise_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deasise_9":	draw_sprite_ext(deasise_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
					
			case "oasis_1":	draw_sprite_ext(oasis_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "oasis_2":	draw_sprite_ext(oasis_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "oasis_3":	draw_sprite_ext(oasis_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "oasis_4":	draw_sprite_ext(oasis_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "oasis_5":	draw_sprite_ext(oasis_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "oasis_6":	draw_sprite_ext(oasis_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "oasis_7":	draw_sprite_ext(oasis_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "oasis_8":	draw_sprite_ext(oasis_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "oasis_9":	draw_sprite_ext(oasis_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
					
			case "salt_lake_1":	draw_sprite_ext(salt_lake_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_lake_2":	draw_sprite_ext(salt_lake_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_lake_3":	draw_sprite_ext(salt_lake_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_lake_4":	draw_sprite_ext(salt_lake_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_lake_5":	draw_sprite_ext(salt_lake_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_lake_6":	draw_sprite_ext(salt_lake_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_lake_7":	draw_sprite_ext(salt_lake_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_lake_8":	draw_sprite_ext(salt_lake_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_lake_9":	draw_sprite_ext(salt_lake_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
					
			case "swamps_1":	draw_sprite_ext(swamps_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "swamps_2":	draw_sprite_ext(swamps_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "swamps_3":	draw_sprite_ext(swamps_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "swamps_4":	draw_sprite_ext(swamps_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "swamps_5":	draw_sprite_ext(swamps_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "swamps_6":	draw_sprite_ext(swamps_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "swamps_7":	draw_sprite_ext(swamps_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "swamps_8":	draw_sprite_ext(swamps_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "swamps_9":	draw_sprite_ext(swamps_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;	
			
			case "shallow_1":	draw_sprite_ext(shallow_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "shallow_2":	draw_sprite_ext(shallow_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "shallow_3":	draw_sprite_ext(shallow_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "shallow_4":	draw_sprite_ext(shallow_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "shallow_5":	draw_sprite_ext(shallow_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "shallow_6":	draw_sprite_ext(shallow_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "shallow_7":	draw_sprite_ext(shallow_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "shallow_8":	draw_sprite_ext(shallow_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "shallow_9":	draw_sprite_ext(shallow_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "wood_1":	draw_sprite_ext(wood_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "wood_2":	draw_sprite_ext(wood_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "wood_3":	draw_sprite_ext(wood_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "wood_4":	draw_sprite_ext(wood_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "wood_5":	draw_sprite_ext(wood_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "wood_6":	draw_sprite_ext(wood_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "wood_7":	draw_sprite_ext(wood_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "wood_8":	draw_sprite_ext(wood_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "wood_9":	draw_sprite_ext(wood_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
					
			case "forest_1":	draw_sprite_ext(forest_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "forest_2":	draw_sprite_ext(forest_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "forest_3":	draw_sprite_ext(forest_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "forest_4":	draw_sprite_ext(forest_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "forest_5":	draw_sprite_ext(forest_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "forest_6":	draw_sprite_ext(forest_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "forest_7":	draw_sprite_ext(forest_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "forest_8":	draw_sprite_ext(forest_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "forest_9":	draw_sprite_ext(forest_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "roads_0":	draw_sprite_ext(roads_0,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "roads_1":	draw_sprite_ext(roads_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "roads_2":	draw_sprite_ext(roads_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "roads_3":	draw_sprite_ext(roads_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "roads_4":	draw_sprite_ext(roads_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "roads_5":	draw_sprite_ext(roads_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "roads_6":	draw_sprite_ext(roads_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "roads_7":	draw_sprite_ext(roads_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "roads_8":	draw_sprite_ext(roads_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "rivers_0":	draw_sprite_ext(rivers_0,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_1":	draw_sprite_ext(rivers_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_2":	draw_sprite_ext(rivers_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_3":	draw_sprite_ext(rivers_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_4":	draw_sprite_ext(rivers_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_5":	draw_sprite_ext(rivers_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_6":	draw_sprite_ext(rivers_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_7":	draw_sprite_ext(rivers_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_8":	draw_sprite_ext(rivers_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
					
			case "rivers_10":	draw_sprite_ext(rivers_10,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_11":	draw_sprite_ext(rivers_11,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_12":	draw_sprite_ext(rivers_12,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_13":	draw_sprite_ext(rivers_13,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_14":	draw_sprite_ext(rivers_14,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_15":	draw_sprite_ext(rivers_15,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_16":	draw_sprite_ext(rivers_16,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "rivers_17":	draw_sprite_ext(rivers_17,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "animals_1":	draw_sprite_ext(animals_1,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "animals_2":	draw_sprite_ext(animals_2,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "animals_3":	draw_sprite_ext(animals_3,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "animals_4":	draw_sprite_ext(animals_4,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "animals_5":	draw_sprite_ext(animals_5,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "animals_6":	draw_sprite_ext(animals_6,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "animals_7":	draw_sprite_ext(animals_7,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "animals_8":	draw_sprite_ext(animals_8,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "animals_9":	draw_sprite_ext(animals_9,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
					
			case "coal_1":	draw_sprite_ext(coal_1,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "coal_2":	draw_sprite_ext(coal_2,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "coal_3":	draw_sprite_ext(coal_3,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "coal_4":	draw_sprite_ext(coal_4,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "coal_5":	draw_sprite_ext(coal_5,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "coal_6":	draw_sprite_ext(coal_6,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "coal_7":	draw_sprite_ext(coal_7,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "coal_8":	draw_sprite_ext(coal_8,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "coal_9":	draw_sprite_ext(coal_9,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
					
			case "crops_1":	draw_sprite_ext(crops_1,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "crops_2":	draw_sprite_ext(crops_2,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "crops_3":	draw_sprite_ext(crops_3,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "crops_4":	draw_sprite_ext(crops_4,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "crops_5":	draw_sprite_ext(crops_5,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "crops_6":	draw_sprite_ext(crops_6,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "crops_7":	draw_sprite_ext(crops_7,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "crops_8":	draw_sprite_ext(crops_8,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "crops_9":	draw_sprite_ext(crops_9,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
					
			case "gems_1":	draw_sprite_ext(gems_1,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "gems_2":	draw_sprite_ext(gems_2,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "gems_3":	draw_sprite_ext(gems_3,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "gems_4":	draw_sprite_ext(gems_4,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "gems_5":	draw_sprite_ext(gems_5,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "gems_6":	draw_sprite_ext(gems_6,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "gems_7":	draw_sprite_ext(gems_7,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "gems_8":	draw_sprite_ext(gems_8,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "gems_9":	draw_sprite_ext(gems_9,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
					
			case "granite_1":	draw_sprite_ext(granite_1,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "granite_2":	draw_sprite_ext(granite_2,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "granite_3":	draw_sprite_ext(granite_3,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "granite_4":	draw_sprite_ext(granite_4,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "granite_5":	draw_sprite_ext(granite_5,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "granite_6":	draw_sprite_ext(granite_6,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "granite_7":	draw_sprite_ext(granite_7,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "granite_8":	draw_sprite_ext(granite_8,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "granite_9":	draw_sprite_ext(granite_9,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
					
			case "iron_1":	draw_sprite_ext(iron_1,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "iron_2":	draw_sprite_ext(iron_2,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "iron_3":	draw_sprite_ext(iron_3,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "iron_4":	draw_sprite_ext(iron_4,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "iron_5":	draw_sprite_ext(iron_5,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "iron_6":	draw_sprite_ext(iron_6,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "iron_7":	draw_sprite_ext(iron_7,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "iron_8":	draw_sprite_ext(iron_8,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "iron_9":	draw_sprite_ext(iron_9,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
					
			case "marble_1":	draw_sprite_ext(marble_1,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "marble_2":	draw_sprite_ext(marble_2,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "marble_3":	draw_sprite_ext(marble_3,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "marble_4":	draw_sprite_ext(marble_4,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "marble_5":	draw_sprite_ext(marble_5,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "marble_6":	draw_sprite_ext(marble_6,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "marble_7":	draw_sprite_ext(marble_7,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "marble_8":	draw_sprite_ext(marble_8,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "marble_9":	draw_sprite_ext(marble_9,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
					
			case "precious_metals_1":	draw_sprite_ext(precious_metals_1,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "precious_metals_2":	draw_sprite_ext(precious_metals_2,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "precious_metals_3":	draw_sprite_ext(precious_metals_3,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "precious_metals_4":	draw_sprite_ext(precious_metals_4,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "precious_metals_5":	draw_sprite_ext(precious_metals_5,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "precious_metals_6":	draw_sprite_ext(precious_metals_6,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "precious_metals_7":	draw_sprite_ext(precious_metals_7,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "precious_metals_8":	draw_sprite_ext(precious_metals_8,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "precious_metals_9":	draw_sprite_ext(precious_metals_9,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
					
			case "rare_metals_1":	draw_sprite_ext(rare_metals_1,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "rare_metals_2":	draw_sprite_ext(rare_metals_2,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "rare_metals_3":	draw_sprite_ext(rare_metals_3,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "rare_metals_4":	draw_sprite_ext(rare_metals_4,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "rare_metals_5":	draw_sprite_ext(rare_metals_5,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "rare_metals_6":	draw_sprite_ext(rare_metals_6,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "rare_metals_7":	draw_sprite_ext(rare_metals_7,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "rare_metals_8":	draw_sprite_ext(rare_metals_8,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "rare_metals_9":	draw_sprite_ext(rare_metals_9,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
					
			case "salt_1":	draw_sprite_ext(salt_1,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_2":	draw_sprite_ext(salt_2,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_3":	draw_sprite_ext(salt_3,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_4":	draw_sprite_ext(salt_4,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_5":	draw_sprite_ext(salt_5,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_6":	draw_sprite_ext(salt_6,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_7":	draw_sprite_ext(salt_7,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_8":	draw_sprite_ext(salt_8,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "salt_9":	draw_sprite_ext(salt_9,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
					
			case "stones_1":	draw_sprite_ext(stones_1,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "stones_2":	draw_sprite_ext(stones_2,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "stones_3":	draw_sprite_ext(stones_3,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "stones_4":	draw_sprite_ext(stones_4,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "stones_5":	draw_sprite_ext(stones_5,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "stones_6":	draw_sprite_ext(stones_6,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "stones_7":	draw_sprite_ext(stones_7,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "stones_8":	draw_sprite_ext(stones_8,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "stones_9":	draw_sprite_ext(stones_9,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
					
			case "water_1":	draw_sprite_ext(water_1,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "water_2":	draw_sprite_ext(water_2,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "water_3":	draw_sprite_ext(water_3,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "water_4":	draw_sprite_ext(water_4,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "water_5":	draw_sprite_ext(water_5,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "water_6":	draw_sprite_ext(water_6,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "water_7":	draw_sprite_ext(water_7,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "water_8":	draw_sprite_ext(water_8,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			case "water_9":	draw_sprite_ext(water_9,0,_xx_plus16,floor((yyy1+yyy2)/2),1,1,0,-1,1);	_not_found = 0;	break;
			
			case "deep_water_0":	draw_sprite_ext(deep_water_0,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deep_water_1":	draw_sprite_ext(deep_water_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deep_water_2":	draw_sprite_ext(deep_water_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deep_water_3":	draw_sprite_ext(deep_water_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deep_water_4":	draw_sprite_ext(deep_water_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deep_water_5":	draw_sprite_ext(deep_water_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deep_water_6":	draw_sprite_ext(deep_water_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deep_water_7":	draw_sprite_ext(deep_water_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deep_water_8":	draw_sprite_ext(deep_water_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "deep_water_9":	draw_sprite_ext(deep_water_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "hills_0":	draw_sprite_ext(hills_0,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "hills_1":	draw_sprite_ext(hills_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "hills_2":	draw_sprite_ext(hills_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "hills_3":	draw_sprite_ext(hills_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "hills_4":	draw_sprite_ext(hills_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "hills_5":	draw_sprite_ext(hills_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "hills_6":	draw_sprite_ext(hills_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "hills_7":	draw_sprite_ext(hills_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "hills_8":	draw_sprite_ext(hills_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "hills_9":	draw_sprite_ext(hills_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "mountains_0":	draw_sprite_ext(mountains_0,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "mountains_1":	draw_sprite_ext(mountains_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "mountains_2":	draw_sprite_ext(mountains_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "mountains_3":	draw_sprite_ext(mountains_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "mountains_4":	draw_sprite_ext(mountains_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "mountains_5":	draw_sprite_ext(mountains_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "mountains_6":	draw_sprite_ext(mountains_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "mountains_7":	draw_sprite_ext(mountains_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "mountains_8":	draw_sprite_ext(mountains_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "mountains_9":	draw_sprite_ext(mountains_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "plain_0":	draw_sprite_ext(plain_0,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "plain_1":	draw_sprite_ext(plain_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "plain_2":	draw_sprite_ext(plain_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "plain_3":	draw_sprite_ext(plain_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "plain_4":	draw_sprite_ext(plain_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "plain_5":	draw_sprite_ext(plain_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "plain_6":	draw_sprite_ext(plain_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "plain_7":	draw_sprite_ext(plain_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "plain_8":	draw_sprite_ext(plain_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "plain_9":	draw_sprite_ext(plain_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "sand_0":	draw_sprite_ext(sand_0,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "sand_1":	draw_sprite_ext(sand_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "sand_2":	draw_sprite_ext(sand_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "sand_3":	draw_sprite_ext(sand_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "sand_4":	draw_sprite_ext(sand_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "sand_5":	draw_sprite_ext(sand_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "sand_6":	draw_sprite_ext(sand_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "sand_7":	draw_sprite_ext(sand_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "sand_8":	draw_sprite_ext(sand_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "sand_9":	draw_sprite_ext(sand_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			
			case "zhallow_water_0":	draw_sprite_ext(zhallow_water_0,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "zhallow_water_1":	draw_sprite_ext(zhallow_water_1,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "zhallow_water_2":	draw_sprite_ext(zhallow_water_2,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "zhallow_water_3":	draw_sprite_ext(zhallow_water_3,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "zhallow_water_4":	draw_sprite_ext(zhallow_water_4,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "zhallow_water_5":	draw_sprite_ext(zhallow_water_5,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "zhallow_water_6":	draw_sprite_ext(zhallow_water_6,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "zhallow_water_7":	draw_sprite_ext(zhallow_water_7,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "zhallow_water_8":	draw_sprite_ext(zhallow_water_8,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			case "zhallow_water_9":	draw_sprite_ext(zhallow_water_9,0,_xx,_yy,1,1,0,-1,1);	_not_found = 0;	break;
			
			
		}
	if _not_found = 1
		{
			draw_set_color(#E256DF);
			draw_rectangle(xxx1,yyy1,xxx2,yyy2,1);
			draw_set_color(c_white);
			draw_sprite_ext(_no_pic,0,xxx1,yyy1,1,1,0,-1,1);
			draw_text(xxx1,yyy1,"image not found! : \n " + string(pic1));
		}
	if txt2 != ""
		{
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_text(	floor((xxx1+xxx2)/2),	floor((yyy1+yyy2)/2),	txt1);					
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
		}
}