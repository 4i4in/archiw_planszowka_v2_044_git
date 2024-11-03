function show_mouseover_info()
{
	if mo_string = "" {mouseover_info = 0;};
	//preparing background for text
	var _txtlegnth = string_width(mo_string);
	var _txthigh = string_height(mo_string);

	//drawing background
	if mo_xpos + _txtlegnth > wgw	{mo_xpos = wgw - _txtlegnth};
	if mo_ypos + _txthigh > wgh		{mo_ypos = wgh - _txthigh};
	draw_set_alpha(txt_background_darken);	draw_set_color(c_dkgrey);
	draw_sprite_stretched(_black,0,mo_xpos-5,	mo_ypos-5,
							_txtlegnth + 5,
							_txthigh + 5);		
	draw_set_alpha(1);	draw_set_color(c_white);
	//drawing text
	draw_text(mo_xpos,mo_ypos,mo_string);
}