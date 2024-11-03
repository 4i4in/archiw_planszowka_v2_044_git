function kill_duplicates_array_2d(_array_to_check)
{
	for(var _ii = 0; _ii < array_length(_array_to_check); _ii++)
		{
			var _val_x1 = _array_to_check[@ _ii][@ 0];
			var _val_y1 = _array_to_check[@ _ii][@ 1];
			
			if _ii < array_length(_array_to_check) - 1
				{
					for(var _kk = _ii+1; _kk < array_length(_array_to_check); _kk++)
						{
							var _val_x2 = _array_to_check[@ _kk][@ 0];
							var _val_y2 = _array_to_check[@ _kk][@ 1];
							
							if _val_x1 = _val_x2 && _val_y1 = _val_y2
								{
									array_delete(_array_to_check,_kk,1); _kk--;	
								}
						}
				}
		}
	return(_array_to_check);
}