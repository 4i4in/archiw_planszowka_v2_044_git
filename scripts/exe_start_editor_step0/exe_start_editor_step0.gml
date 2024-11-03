//exe_start_editor_step0
function exe_start_editor_step0()
{
	game_struct.current_menu = "editor_step0";
	yes_no_srceen = 0;	yes_no_prompt = ""; yes_no_exe = "";
	
	
	//generate raw map
	if !ds_exists(raw_editor_minimap, ds_type_grid)
		{	raw_editor_minimap = ds_grid_create(game_struct.map_xsize,game_struct.map_ysize);	};


	//random noise point mapeditor.generator_noise
	for(xxx = 0; xxx < game_struct.map_xsize; xxx ++)
		{
			for(yyy = 0; yyy < game_struct.map_ysize; yyy ++)
				{	
					aaa = random(7);
					ds_grid_set(raw_editor_minimap,xxx,yyy,aaa);
				}
		}
	
	//add some circles
	var _number_of_circles = irandom(game_struct.map_ysize/4) + (game_struct.map_xsize/4);
	for(var _ii = 0; _ii < _number_of_circles; _ii++)
		{
			var _noise_scale = irandom(game_struct.map_ysize/8)+1;
			create_circle_on_noise_map(_noise_scale);
		}

	//average_values
	for(var _range = 1; _range < 3; _range++)
		{
			//exe_average_values_raw_map(_range);
			exe_average_values_raw_map_v2(_range);
		}
	//express some mountains
	var _grid_mean = ds_grid_get_mean(raw_editor_minimap, 0, 0, game_struct.map_xsize,game_struct.map_ysize);
	var _grid_max = ds_grid_get_max(raw_editor_minimap, 0, 0, game_struct.map_xsize,game_struct.map_ysize);
	
	var _mountain_treshold = _grid_max -(_grid_max - _grid_mean)/4;
	for(xxx = 0; xxx < game_struct.map_xsize; xxx ++)
		{
			for(yyy = 0; yyy < game_struct.map_ysize; yyy ++)
				{	
					if ds_grid_get(raw_editor_minimap,xxx,yyy) > _mountain_treshold
						{	ds_grid_set(raw_editor_minimap,xxx,yyy,2*_grid_max);	};
				}
		}
	
	//set reference level in mean
	var _new_water_level = floor(_grid_mean*10)/10;
	
	var _new_hills_level = mapeditor.hills_level - mapeditor.plain_level;
	var _new_plain_level = mapeditor.plain_level - mapeditor.sand_level;
	var _new_sand_level = mapeditor.sand_level - mapeditor.water_level;
	var _new_deep_water_level = mapeditor.deep_water_level - mapeditor.water_level;

	mapeditor.hills_level = _new_water_level + _new_sand_level + _new_plain_level + _new_hills_level;
	mapeditor.plain_level = _new_water_level + _new_sand_level + _new_plain_level;
	mapeditor.sand_level = _new_water_level + _new_sand_level;
	mapeditor.water_level = _new_water_level;
	mapeditor.deep_water_level = _new_water_level + _new_deep_water_level;
	



	//drawing mini raw
	redraw_raw_minimap();
	
	lclick_cooldown_counter = lclick_cooldown;
}