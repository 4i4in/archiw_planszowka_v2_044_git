function exe_global_visibility_for_given_side(_side_num)
{
	//var _current_side_operational_map = sides_array[_side_num][$ "side_operational_map"];
	checklist_for_gameboard_eoturn = [];
	
	//creating detector list
	var _visibility_detectors = exe_create_visibility_detectors(_side_num);
	var _this_side_name = sides_array[_side_num][$ "side_name"];
	
	//end of creating list
	for(var _xx = 0; _xx < game_struct.map_xsize; _xx++)
		{
			for (var _yy = 0; _yy < game_struct.map_ysize; _yy++) 
				{
					exe_given_side_tile_visibility_return_checklist(_visibility_detectors,_this_side_name,_side_num,_xx,_yy);
					
				}
		}
}