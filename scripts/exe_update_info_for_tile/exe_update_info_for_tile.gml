function exe_update_info_for_tile(_xx,_yy)
{
	for(var _side_num = 0; _side_num < array_length(sides_array); _side_num++)
		{
			if array_length(sides_array[_side_num][$ "side_operational_map"]) < 1
				{
					mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y;
					mo_string = "generate visibility! \n there is no side maps!";
				}
			else
				{
					checklist_for_gameboard_eoturn = [];
					var _local_tile_operational = sides_array[_side_num][$ "side_operational_map"][_xx][_yy];
					var _fog_ow_war = _local_tile_operational[$ "fog_of_war"];
					if _fog_ow_war[0] > game_struct.current_turn - 2
						{
							var _val1 = variable_clone(_fog_ow_war[1]);
							var _val2 = variable_clone(_fog_ow_war[2]);
							var _val3 = variable_clone(_fog_ow_war[3]);
							//reset _fog_ow_war
							sides_array[_side_num][$ "side_operational_map"][_xx][_yy][$ "fog_of_war"] = [game_struct.current_turn,0,0,0];
							//sides_array[_side_num][$ "side_operational_map"][_xx][_yy][$ "fog_of_war"] = [game_struct.current_turn-1,0,0,0];
							exe_uncover_ground_visibility_for_tile(_side_num,_xx,_yy,_val1);
							exe_uncover_overwater_visibility_for_tile(_side_num,_xx,_yy,_val2);
							exe_uncover_underwater_visibility_for_tile(_side_num,_xx,_yy,_val3);
						}
				}
		}
}