//subscript of exe_transfer_raw_to_array_and_go_to_editor_step1
function place_salt_lake(_id_props_xy,_choosen_props)
{
	var _shallow_found = 0;
	for(var _ii = 0; _ii < array_length(_id_props_xy); _ii++)
		{
			var _props_str = game_board_array[xxx][yyy][$ "tile_props"][@ _ii];
			if string_starts_with(_props_str, "shallow_")	{	_shallow_found++	};
		}
	if _shallow_found > 0
		{
		_choosen_props = "salt_lake_" + string(	irandom(mapeditor.max_random_terrain-1)+1	);
		array_push(_id_props_xy,_choosen_props);
		}
}