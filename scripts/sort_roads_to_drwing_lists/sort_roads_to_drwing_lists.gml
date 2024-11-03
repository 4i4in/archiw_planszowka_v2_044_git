function sort_roads_to_drwing_lists(_array1,_xx,_yy,_tt)
{
	var _array_id1 = _array1[_xx][_yy][$ _tt];
	var _props_array_length = array_length(_array_id1);
	for(var _ii = 0; _ii < _props_array_length; _ii++)
		{
			var _props_found = _array1[_xx][_yy][$ _tt][@ _ii];
			ds_list_add(draw_roads_map,xref);
			ds_list_add(draw_roads_map,yref);
			ds_list_add(draw_roads_map,_props_found);
		}
}