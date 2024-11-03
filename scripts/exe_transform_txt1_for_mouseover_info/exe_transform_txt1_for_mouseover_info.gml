function exe_transform_txt1_for_mouseover_info(_text)
{
	//input array [[data for another function],text,value]
	var _buff_name = _text[1];
	var _buff_value = _text[2];
	
	if !is_string(_buff_value) && _buff_value < -1	{	_buff_value = " You cannot unclick this,\n it must be undone \n by higher power";};
	if !is_string(_buff_value) && _buff_value < 0	{	_buff_value = " You can use it as much You wish";};
	if !is_string(_buff_value) && _buff_value > 0	{	_buff_value = " use left : "+string(_buff_value);};
	txt1 = _buff_name + string(_buff_value);
}