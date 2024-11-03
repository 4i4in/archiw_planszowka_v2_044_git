function exe_load_map()
{
	if lclick_cooldown_counter < 1
		{
			var _load_filename = get_open_filename(game_save_id + "/" + "game_struct|*.game","");
			var _loading_corect = 0;
			var _info_string = "";
			//game file check
			if file_exists(_load_filename)
				{
					var _filename = file_text_open_read(_load_filename);
					var _list_str = file_text_read_string(_filename);
					if is_struct(json_parse(_list_str))
						{
							_loading_corect = 1;
							var _temp_game_struct = json_parse(_list_str);
						}
					else	{_loading_corect = 0;	_info_string += "text in .game is not a struct\n"};
					file_text_close(_filename);
					
					//array file check
					if file_exists(game_save_id + "/"	+ string(_temp_game_struct.map_name)+	"/game_board_array.gba")
						{
							_filename = file_text_open_read(game_save_id + "/"	+ string(_temp_game_struct.map_name)+	"/game_board_array.gba");
							_list_str = file_text_read_string(_filename);
							if is_array(json_parse(_list_str))
								{	
									_loading_corect = 1;
									var _temp_game_board_array = json_parse(_list_str);
								}
							else	{_loading_corect = 0;	_info_string += "text in .gba is not an array\n"};
							file_text_close(_filename);
							
							//array sides check
							if file_exists(game_save_id + "/"	+ string(_temp_game_struct.map_name)+	"/sides_array.sa")
								{
									_filename = file_text_open_read(game_save_id + "/"	+ string(_temp_game_struct.map_name)+	"/sides_array.sa");
									_list_str = file_text_read_string(_filename);
									if is_array(json_parse(_list_str))
										{	
											_loading_corect = 1;
											var _temp_sides_array = json_parse(_list_str);
										}
									else	{_loading_corect = 0;	_info_string += "text in .sa is not an array\n"};
									file_text_close(_filename);
								}
							else	{_loading_corect = 0;	_info_string += "file : \n" +	"sides_array.sa" +	"\n do not exist."};
						}
					else	{_loading_corect = 0;	_info_string += "file : \n" +	"game_board_array.gba" +	"\n do not exist."};
				}
			else	{_loading_corect = 0;	_info_string += "file : \n" +string(_load_filename) + "\n do not exist."};
			if _loading_corect = 1
				{
					game_struct = _temp_game_struct; delete(_temp_game_struct);
					game_board_array = _temp_game_board_array; delete(_temp_game_board_array);
					sides_array = _temp_sides_array; delete(_temp_sides_array);
					
					
					yes_no_srceen = 1;
					yes_no_prompt = "map : " + string(game_struct.map_name) + " loaded corectly. \n Click whatever continue or cancel. \n It is already done, and this is \n just info.";
					yes_no_exe = "exe_yes_no_srceen_no";
				}
			if _loading_corect = 0
				{
					yes_no_srceen = 1;
					yes_no_prompt = "Loading Fail! \n " + "file : " + string(_load_filename) + "\n gathered info : \n" + _info_string + "\n coppied to clipboard";
					yes_no_exe = "exe_yes_no_srceen_no";
					clipboard_set_text(yes_no_prompt);
				}

			force_redraw = 1;
			lclick_cooldown_counter = lclick_cooldown;
		}
}