function sort_FOW_to_drwing_lists(_array1,_xx,_yy,_tt)
{
	if !string_starts_with(_array1[_xx][_yy][$ "tile_terrain"][0],"unknown")
		{
			var _array_id1 = _array1[_xx][_yy][$ _tt];
			var _FOW_value = game_struct.current_turn - _array_id1[0];
			if _FOW_value > 0
				{
					var _FOW_pic = "_FOW_"
					switch(_FOW_value)
						{
							case 1: _FOW_pic = "_FOW_1";break;
							case 2: _FOW_pic = "_FOW_2";break;
							case 3: _FOW_pic = "_FOW_3";break;
						}
					if _FOW_pic == "_FOW_"	{_FOW_pic = "_FOW_4";};
					
					ds_list_add(draw_FOW_map,xref);
					ds_list_add(draw_FOW_map,yref);
					ds_list_add(draw_FOW_map,_FOW_pic);
				}
			else
				{
					ds_list_add(draw_FOW_map,xref);
					ds_list_add(draw_FOW_map,yref);
					ds_list_add(draw_FOW_map,"_FOW_0");
				}
		}
}