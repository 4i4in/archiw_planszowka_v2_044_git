//subscript of exe_transfer_raw_to_array_and_go_to_editor_step1
function place_pollution(_id_props_xy,_choosen_props)
{
	_choosen_props = "pollution_" + string(	irandom(mapeditor.max_random_terrain-1)+1	);
	array_push(_id_props_xy,_choosen_props);
}