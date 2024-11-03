function exe_save_map()
{
	if lclick_cooldown_counter < 1
		{
			
			if !directory_exists(game_struct.map_name)
			{
			    directory_create(game_struct.map_name);
			}
			
			var _list_str = json_stringify(game_struct);
			var _filename = file_text_open_write(	game_save_id + "/" + string(game_struct.map_name)+"/game_struct.game"	);
			file_text_write_string(_filename, _list_str);
			file_text_close(_filename);
			
			//save game_board_array to textfile
			var _list_str = json_stringify(game_board_array);
			var _filename = file_text_open_write(	game_save_id + "/" + string(game_struct.map_name)+"/game_board_array.gba"	);
			file_text_write_string(_filename, _list_str);
			file_text_close(_filename);
			
			//save game_board_array to textfile
			var _list_str = json_stringify(sides_array);
			var _filename = file_text_open_write(	game_save_id + "/" + string(game_struct.map_name)+"/sides_array.sa"	);
			file_text_write_string(_filename, _list_str);
			file_text_close(_filename);
			
			
			mouseover_info = 1;	mo_xpos = mouse_x; mo_ypos = mouse_y;
			
			var _clip_str = string(game_save_id) + string(game_struct.map_name)+"\\";
			mo_string = "game saved in : " + string(_clip_str)+"\game_struct.game"	+ "\n" + "coppied to clipboard";
			clipboard_set_text(_clip_str);
			
			delete(_filename);
			delete(_list_str);

			lclick_cooldown_counter = lclick_cooldown;
		}
}