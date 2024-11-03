function exe_return_curent_side_by_name(_curent_side)
{
	var _curent_side_num = -1;
	for(var _ii = 0; _ii < array_length(sides_array); _ii++)
		{
			var _name_found = sides_array[_ii][$ "side_name"];
			if _name_found == _curent_side	{_curent_side_num = _ii;break;};
		}
	return(_curent_side_num);
}