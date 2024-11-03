function set_random_terrain(_array1,_xx,_yy,_tt)
{
	var _id1 = _array1[_xx][_yy][$ _tt]
	if array_length(_id1) < 1
		{
			var _rnd = choose( "mountains_", "hills_", "plain_", "sand_", "zhallow_water_", "deep_water_");
			var _rnd = string(_rnd)+string(	irandom(mapeditor.max_random_terrain)	);
			array_push(_id1,_rnd);
		}
}