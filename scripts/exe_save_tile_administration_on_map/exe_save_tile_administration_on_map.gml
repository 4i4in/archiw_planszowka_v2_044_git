function exe_save_tile_administration_on_map(_keep_reference_to_tile)
{
	var _this_tile_reference_x = this_city_administration[_keep_reference_to_tile][0];
	var _this_tile_reference_y = this_city_administration[_keep_reference_to_tile][1];
	var _data_to_set = this_city_administration[_keep_reference_to_tile];
	operational_array[_this_tile_reference_x][_this_tile_reference_y][$ "city_setings"] = _data_to_set;
}