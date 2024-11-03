function paint_visibility(_xx,_yy,_utylity_string)
{
	//positive paint
	if game_struct.current_player != -1	&&	mapeditor.terrain_paint_sign = 1
		{
			//this one copy for sure:
			sides_array[game_struct.current_player][$ "side_operational_map"][_xx][_yy][$ "tile_terrain"] = game_board_array[_xx][_yy][$ "tile_terrain"];
		}
	//negative paint
	if game_struct.current_player != -1	&&	mapeditor.terrain_paint_sign = -1
		{
			//this one eresa for sure:
			set_empty_template_array(sides_array[game_struct.current_player][$ "side_operational_map"],_xx,_yy);
			sides_array[game_struct.current_player][$ "side_operational_map"][_xx][_yy][$ "tile_terrain"] = ["unknown"];
		}
}