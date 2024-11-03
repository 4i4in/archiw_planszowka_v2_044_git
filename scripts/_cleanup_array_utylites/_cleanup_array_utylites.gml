function _cleanup_array_utylites(_resources_total)
{
	//cleaning up empty positions
	var _temp_array = [];
	for(var _ii = 0; _ii < array_length(_resources_total); _ii++)
		{
			var _check_postion = _resources_total[_ii];
			if array_length(_check_postion) > 1
				{
					array_push(_temp_array,_check_postion);
				}
		}
	return(_temp_array);
}