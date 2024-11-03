//subscript of exe_transfer_raw_to_array_and_go_to_editor_step1
function place_forest(_id_props_xy,_choosen_props)
{
	_choosen_props = "forest_" + string(	irandom(mapeditor.max_random_terrain-1)+1	);
	array_push(_id_props_xy,_choosen_props);
}