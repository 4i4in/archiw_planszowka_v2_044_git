function reset_city_menu_option(_option_array)
{
	_option_array = [];
	var _this_array = ["resources",0];//in use
	array_push(_option_array,_this_array);
	var _this_array = ["cities",0];//in use
	array_push(_option_array,_this_array);
	var _this_array = ["utylity",0];//in use
	array_push(_option_array,_this_array);
	var _this_array = ["fortyfications",0];//in use
	array_push(_option_array,_this_array);
	var _this_array = ["cons_prod",0];
	array_push(_option_array,_this_array);
	var _this_array = ["forest",0];
	array_push(_option_array,_this_array);
	var _this_array = ["roads",0];
	array_push(_option_array,_this_array);
	var _this_array = ["rivers",0];
	array_push(_option_array,_this_array);
	var _this_array = ["recources",0];
	array_push(_option_array,_this_array);
	var _this_array = ["terrain",0];
	array_push(_option_array,_this_array);
	
	return(_option_array);
}