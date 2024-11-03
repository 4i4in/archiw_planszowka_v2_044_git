function exe_simplyfy_AP_cost_to_show(_AP_cost)
{
	var _lowest_value = 99;
	for(var _ii = 1; _ii < array_length(_AP_cost); _ii++)
		{
			if _AP_cost[_ii][0] < _lowest_value	{	_lowest_value = _AP_cost[_ii][0];	};
		}
	return(_lowest_value);
}