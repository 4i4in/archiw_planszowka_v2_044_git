function return_string_terrain_around()
{
	var _terrain_string = "";
	//right of
	xxx1 = xxx +1;
	if xxx1 > game_struct.map_xsize-1{xxx1 -=game_struct.map_xsize};
	yyy1 = yyy +0;
	var _id_terrain_r0 = game_board_array[xxx1][yyy1][$ "tile_terrain"][@ 0]
	_terrain_string += string_char_at(string(_id_terrain_r0), 1);
					
	//right top of
	xxx1 = xxx +1;
	if xxx1 > game_struct.map_xsize-1	{xxx1 -=game_struct.map_xsize};
	yyy1 = yyy -1;
	if yyy1 < 0	{yyy1 += game_struct.map_ysize}
	var _id_terrain_rt = game_board_array[xxx1][yyy1][$ "tile_terrain"][@ 0]
	_terrain_string += string_char_at(string(_id_terrain_rt), 1);
					
	//top of
	xxx1 = xxx +0;
	yyy1 = yyy -1;
	if yyy1 < 0	{yyy1 += game_struct.map_ysize}
	var _id_terrain_0t = game_board_array[xxx1][yyy1][$ "tile_terrain"][@ 0]
	_terrain_string += string_char_at(string(_id_terrain_0t), 1);
					
	//top left of
	xxx1 = xxx -1;
	if xxx1 < 0	{xxx1 += game_struct.map_xsize}
	yyy1 = yyy -1;
	if yyy1 < 0	{yyy1 += game_struct.map_ysize}
	var _id_terrain_lt = game_board_array[xxx1][yyy1][$ "tile_terrain"][@ 0]
	_terrain_string += string_char_at(string(_id_terrain_lt), 1);
					
	//left of
	xxx1 = xxx -1;
	if xxx1 < 0	{xxx1 += game_struct.map_xsize}
	yyy1 = yyy +0;
	var _id_terrain_l0 = game_board_array[xxx1][yyy1][$ "tile_terrain"][@ 0]
	_terrain_string += string_char_at(string(_id_terrain_l0), 1);
					
	//left bottom of
	xxx1 = xxx -1;
	if xxx1 < 0	{xxx1 += game_struct.map_xsize}
	yyy1 = yyy1 +1;
	if yyy1 > game_struct.map_ysize-1	{yyy1 -=game_struct.map_ysize};
	var _id_terrain_lb = game_board_array[xxx1][yyy1][$ "tile_terrain"][@ 0]
	_terrain_string += string_char_at(string(_id_terrain_lb), 1);
					
	//bottom of
	xxx1 = xxx +0;
	yyy1 = yyy1 +1;
	if yyy1 > game_struct.map_ysize-1	{yyy1 -=game_struct.map_ysize};
	var _id_terrain_0b = game_board_array[xxx1][yyy1][$ "tile_terrain"][@ 0]
	_terrain_string += string_char_at(string(_id_terrain_0b), 1);
					
	//right bottom of
	xxx1 = xxx +1;
	if xxx1 > game_struct.map_xsize-1	{xxx1 -=game_struct.map_xsize};
	yyy1 = yyy1 +1;
	if yyy1 > game_struct.map_ysize-1	{yyy1 -=game_struct.map_ysize};
	var _id_terrain_rb = game_board_array[xxx1][yyy1][$ "tile_terrain"][@ 0]
	_terrain_string += string_char_at(string(_id_terrain_rb), 1);
	
	return(_terrain_string);
}