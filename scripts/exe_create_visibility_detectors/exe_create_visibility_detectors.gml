function exe_create_visibility_detectors(_side_num)
{
	var _visibility_detectors = [];
	var _push_list = sides_array[_side_num][$ "utylity"];
	for(var _ii = 0; _ii < array_length(_push_list); _ii++)
		{
			var _utylity = _push_list[_ii];
			array_push(_visibility_detectors,_utylity);
		}
	var _this_side_name = sides_array[_side_num][$ "side_name"];
	var _create_string = "city_" + string(_this_side_name);
	array_push(_visibility_detectors,_create_string);
	
	return(_visibility_detectors);
}