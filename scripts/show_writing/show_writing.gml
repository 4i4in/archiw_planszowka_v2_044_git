function show_writing()
{
	//preparing background for text
	var _strwrt = string(pretext_writer_string)+string(text_writer_string)+"_"
	var _txtlegnth = string_width(_strwrt);
	var _txthigh = string_height(_strwrt);

	//drawing background
	draw_set_alpha(1);	draw_set_color(c_black);
	draw_sprite_stretched(_black,0,text_input_x-5,	text_input_y-5,
							_txtlegnth + 5,
							_txthigh + 5);		
	draw_set_alpha(1);	draw_set_color(c_white);
	//drawing text
	draw_text(text_input_x,text_input_y,_strwrt);
}