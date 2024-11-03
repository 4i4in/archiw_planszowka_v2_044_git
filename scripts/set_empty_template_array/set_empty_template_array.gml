function set_empty_template_array(_array1,_xx,_yy)
{
	_array1[_xx][@ _yy] =
		{
			tile_terrain : array_create(0),
			tile_props : array_create(0),
			tile_resources : array_create(0),
			control : array_create(0),
			facility : array_create(0),
			river : array_create(0),
			road : array_create(0),
			units : array_create(0),
			conected_cities : array_create(0),
			city_setings : array_create(0),
			fog_of_war : [game_struct.current_turn,0,0,0],
		}
}