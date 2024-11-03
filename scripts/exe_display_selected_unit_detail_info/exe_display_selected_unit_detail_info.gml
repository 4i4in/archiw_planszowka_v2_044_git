function exe_display_selected_unit_detail_info(_xx,_yy,_chosen_group,_chosen_unit,_drawing_xx,_drawing_yy)
{
	var _unit_string = operational_array[_xx][_yy][$ "units"][_chosen_group][_chosen_unit];
	
	xxx = _drawing_xx;	yyy = _drawing_yy;
	xref = 0; yref = 0;
	
	var _total_x_bck = 5;
	var _total_y_bck = 9;
	
	var _unit_info1 = _unit_string[0];	var _unit_info2 = _unit_string[1];
	var _small_picture = ""; var _big_picture = ""; var _control = "";
	var _control_picture = "";
	var _info_string_AP = "";	var _info_string_HP = "";	var _info_string_number = ""; var _number_raw = undefined;
	var _place_taken_raw = undefined;	var _cargo_weight = 0;
	var _unit_label = _unit_info2;	
	var _legal_terrains_string = "legal_terrains : ";	var _legal_terrains_pic = "_256x32_background";	var _legal_terrains_button_height = 0.5;
	var _transport_string1 = "transport ";	var _transport_string2 = "";	var _transport_string2_pic = "_256x32_background";	var _transport_string2_button_height = 0.5;
	var _buff_list = undefined; var _active_buff_list = undefined;
	var _hiding_string = "";	var _detecting_string = "";
	//data searching
	for(var _ii = 2; _ii < array_length(_unit_string); _ii+=2)
		{
			var _info_found = _unit_string[_ii];
			if string_starts_with(_info_found,"picture")
				{
					_small_picture = _unit_string[_ii+1];
					_big_picture = _small_picture + "_big";
				}
			if string_starts_with(_info_found,"control")
				{
					var _infor_array =  _unit_string[_ii+1];
					var _control = "";
					var _highest_value = 0;
					for(var _kk = 0; _kk < array_length(_infor_array); _kk+=2)
						{
							if _infor_array[_kk+1] > _highest_value
								{
									_highest_value = _infor_array[_kk+1];
									_control = _infor_array[_kk];
								}
						}
					_control_picture = "_64x64_"+string(_control)+"_ico";
				}
			if string_starts_with(_info_found,"action_points")
				{
					_info_string_AP += "AP : \n" + string(_unit_string[_ii+1][1]) + "|" + string(_unit_string[_ii+1][0]);
				}
			if string_starts_with(_info_found,"hitpoints")
				{
					_info_string_HP += "HP : \n" + string(_unit_string[_ii+1][1]) + "|" + string(_unit_string[_ii+1][0]);
				}
			if string_starts_with(_info_found,"number")
				{
					_info_string_number += "count : " + string(_unit_string[_ii+1][1]) + "|" + string(_unit_string[_ii+1][0]);
					_number_raw = _unit_string[_ii+1][1];
				}
			if string_starts_with(_info_found,"legal_terrains")
				{
					var _legal_terrains_array = _unit_string[_ii+1];
					for(var _kk = 0; _kk < array_length(_legal_terrains_array); _kk++)
						{
							var _terrain_str = _legal_terrains_array[_kk];
							if string_width(_legal_terrains_string + _terrain_str) > 256
								{
									_legal_terrains_string += "\n";
								}
							_legal_terrains_string += string(_terrain_str) + ",";
						}
					if string_height(_legal_terrains_string) < 256	{_legal_terrains_pic = "_256x256_background";	_legal_terrains_button_height = 4;};
					if string_height(_legal_terrains_string) < 128	{_legal_terrains_pic = "_256x128_background";	_legal_terrains_button_height = 2;};
					if string_height(_legal_terrains_string) < 64	{_legal_terrains_pic = "_256x64_background";	_legal_terrains_button_height = 1;};
					if string_height(_legal_terrains_string) < 32	{_legal_terrains_pic = "_256x32_background";	_legal_terrains_button_height = 0.5;};
				}
			if string_starts_with(_info_found,"base_values")
				{
					var _base_values = _unit_string[_ii+1];
					for(var _kk = 0; _kk < array_length(_base_values); _kk +=2)
						{
							if _base_values[_kk] == "place_taken"	{_place_taken_raw = _base_values[_kk+1];};
						}
				}
			if string_starts_with(_info_found,"carry_transport")
				{
					var _transport_array = _unit_string[_ii+1];
					for(var _kk = 0; _kk < array_length(_transport_array); _kk+=2)
						{
							var _cargo_string = _transport_array[_kk];
							if string_starts_with(_cargo_string,"carry_max")
								{
									_transport_string1 += " max : " + string(_transport_array[_kk+1]);
								}
							else
								{
									if string_width(_transport_string2 + _cargo_string) +32 > 256
										{
											_transport_string2 += "\n";
										}
									_transport_string2 += string(_cargo_string) + " : " + string(_transport_array[_kk+1]) + ",";
									_cargo_weight += _transport_array[_kk+1];
								}
						}
					if string_height(_transport_string2) < 256	{_transport_string2_pic = "_256x256_background";	_transport_string2_button_height = 4;};
					if string_height(_transport_string2) < 128	{_transport_string2_pic = "_256x128_background";	_transport_string2_button_height = 2;};
					if string_height(_transport_string2) < 64	{_transport_string2_pic = "_256x64_background";		_transport_string2_button_height = 1;};
					if string_height(_transport_string2) < 32	{_transport_string2_pic = "_256x32_background";		_transport_string2_button_height = 0.5;};
				}
			if string_starts_with(_info_found,"active_buffs")
				{
					if array_length(_unit_string[_ii+1]) > 0	{	_active_buff_list = _unit_string[_ii+1];	};
				}
			if string_starts_with(_info_found,"buff_list")
				{
					if array_length(_unit_string[_ii+1]) > 0	{	_buff_list = _unit_string[_ii+1];	};
				}
			if string_starts_with(_info_found,"visibility")
				{
					_hiding_string += "hiding : " + string(_unit_string[_ii+1][1]) + " / " +string(_unit_string[_ii+1][0]);
				}
			if string_starts_with(_info_found,"detection_value")
				{
					_detecting_string += "detecting : " + string(_unit_string[_ii+1]);
				}
		}

	//background
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,_total_x_bck*game_struct.button_size);//x2
	ds_list_add(clickable_list,_total_y_bck*game_struct.button_size);//y2	
	ds_list_add(clickable_list,"");//txt
	ds_list_add(clickable_list,"_adaptive_background_0");//picture
	ds_list_add(clickable_list,"");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"");	//execution on right click
	
	//drawing pictures
	//big picture
	xref = 1; yref = 0.5;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 4*game_struct.button_size);//y2	
	ds_list_add(clickable_list,"");//txt
	ds_list_add(clickable_list,_big_picture);//picture
	ds_list_add(clickable_list,_unit_info2	);//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	//unit label
	xref = 0.5; yref = 0;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
	ds_list_add(clickable_list,_unit_label);//txt
	ds_list_add(clickable_list,"_256x32_background");//picture
	ds_list_add(clickable_list,"unit label"	);//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	//control
	xref = 0; yref = 0.5;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
	ds_list_add(clickable_list,"");//txt
	ds_list_add(clickable_list,_control_picture);//picture
	ds_list_add(clickable_list,"belong to : " + string(_control)	);//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	yref++;
	//unit ico
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
	ds_list_add(clickable_list,"");//txt
	ds_list_add(clickable_list,_small_picture);//picture
	ds_list_add(clickable_list,_unit_info2	);//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	yref++;
	//AP info
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
	ds_list_add(clickable_list,_info_string_AP);//txt
	ds_list_add(clickable_list,"_64x64_background");//picture
	ds_list_add(clickable_list,"action points");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	yref++;
	//HP info
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 1*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 1*game_struct.button_size);//y2	
	ds_list_add(clickable_list,_info_string_HP);//txt
	ds_list_add(clickable_list,"_64x64_background");//picture
	ds_list_add(clickable_list,"hit points");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	xref = 0; yref = 4.5;
	
	//number, count info
	xref = 1.4; yref = 4.1;
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
	ds_list_add(clickable_list,_info_string_number);//txt
	ds_list_add(clickable_list,"_128x32_background");//picture
	ds_list_add(clickable_list,"number of participant in unit \n and unit max participants");//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	xref = 0; yref = 4.5;
	
	//hide & seek
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
	ds_list_add(clickable_list,_hiding_string);//txt
	ds_list_add(clickable_list,"_256x32_background");//picture
	ds_list_add(clickable_list,"negative mean more visible"	);//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	yref+=0.5;
	
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
	ds_list_add(clickable_list,_detecting_string);//txt
	ds_list_add(clickable_list,"_256x32_background");//picture
	ds_list_add(clickable_list,"radius and strength of detecting"	);//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	yref+=0.5;
	
	xref = 0;
	//legal terrains
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ _legal_terrains_button_height*game_struct.button_size);//y2	
	ds_list_add(clickable_list,_legal_terrains_string);//txt
	ds_list_add(clickable_list,_legal_terrains_pic);//picture
	ds_list_add(clickable_list,"legal terrains"	);//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	yref += _legal_terrains_button_height;
	
	//trasnport
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
	ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
	ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
	ds_list_add(clickable_list,_transport_string1);//txt
	ds_list_add(clickable_list,"_256x32_background");//picture
	ds_list_add(clickable_list,"trasnport capacity"	);//txt mouseover rclick in case of "_"
	ds_list_add(clickable_list,"");	//execution on click	
	ds_list_add(clickable_list,"_");	//execution on right click
	yref+=0.5;
	if _transport_string2 != ""
		{
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ _transport_string2_button_height*game_struct.button_size);//y2	
			ds_list_add(clickable_list,_transport_string2);//txt
			ds_list_add(clickable_list,_transport_string2_pic);//picture
			ds_list_add(clickable_list,"carry list"	);//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			yref += _transport_string2_button_height;
		}
	else
		{
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
			ds_list_add(clickable_list,"empty");//txt
			ds_list_add(clickable_list,"_256x32_background");//picture
			ds_list_add(clickable_list,"trasncarryport capacity"	);//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			yref+=0.5;
		}
		
	if _active_buff_list != undefined
		{
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
			ds_list_add(clickable_list,"active buffs : ");//txt
			ds_list_add(clickable_list,"_128x32_background");//picture
			ds_list_add(clickable_list,"active buffs"	);//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref+=2;
			
			for(var _ii = 0; _ii < array_length(_active_buff_list); _ii+=2)
				{
					var _buff_found = _active_buff_list[_ii];
					var _buff_timing = _active_buff_list[_ii+1];
					var _buff_pic = "_32x32_" + _buff_found + "_buff";
					var _carry_array = [[_xx,_yy,_chosen_group,_chosen_unit,_ii,_buff_timing],_buff_found,_buff_timing];
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"");//txt
					ds_list_add(clickable_list,_buff_pic);//picture
					ds_list_add(clickable_list,_carry_array	);//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"exe_deactivate_active_buff_by_click");	//execution on click	
					ds_list_add(clickable_list,"_array2_buff_info");	//execution on right click
					xref+=0.5;
					if xref > _total_y_bck {xref=0; yref+=0.5};
				}
			xref=0; yref+=0.5;
		}
	if _buff_list != undefined
		{
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 2*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
			ds_list_add(clickable_list,"avilable : ");//txt
			ds_list_add(clickable_list,"_128x32_background");//picture
			ds_list_add(clickable_list,"avilable buffs"	);//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref+=2;
			
			for(var _ii = 0; _ii < array_length(_buff_list); _ii+=2)
				{
					var _buff_found = _buff_list[_ii];
					var _buff_timing = _buff_list[_ii+1];
					var _buff_pic = "_32x32_" + _buff_found + "_buff";
					var _carry_array = [[_xx,_yy,_chosen_group,_chosen_unit,_ii,_buff_timing],_buff_found,_buff_timing];
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
					ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 0.5*game_struct.button_size);//x2
					ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
					ds_list_add(clickable_list,"");//txt
					ds_list_add(clickable_list,_buff_pic);//picture
					ds_list_add(clickable_list,_carry_array);//txt mouseover rclick in case of "_"
					ds_list_add(clickable_list,"exe_activate_avilable_buff_by_click");	//execution on click	
					ds_list_add(clickable_list,"_array2_buff_info");	//execution on right click
					xref+=0.5;
					if xref > _total_y_bck {xref=0; yref+=0.5};
				}
			xref=0; yref+=0.5;
		}
	if _number_raw != undefined	&& _place_taken_raw != undefined
		{
			var _boarding_value = _number_raw * _place_taken_raw;
			_boarding_value += _cargo_weight;
			var _text_string = "boarding space : " + string(_boarding_value);
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size);//x1
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size);//y1
			ds_list_add(clickable_list,xxx	+	xref*game_struct.button_size	+ 4*game_struct.button_size);//x2
			ds_list_add(clickable_list,yyy	+	yref*game_struct.button_size	+ 0.5*game_struct.button_size);//y2	
			ds_list_add(clickable_list,_text_string);//txt
			ds_list_add(clickable_list,"_256x32_background");//picture
			ds_list_add(clickable_list,"this unit takes this much cargo if embarked");//txt mouseover rclick in case of "_"
			ds_list_add(clickable_list,"");	//execution on click	
			ds_list_add(clickable_list,"_");	//execution on right click
			xref=0; yref+=0.5;
		}
	
	//rclick restriction to see description in menu without closing
	if restricted_x1 = -1 && restricted_x2 = -1 && restricted_y1 = -1 && restricted_y2 = -1
		{
			restricted_x1 = xxx;
			restricted_x2 = xxx + _total_x_bck*game_struct.button_size;
			restricted_y1 = yyy;
			restricted_y2 = yyy + _total_y_bck*game_struct.button_size;
		}
}