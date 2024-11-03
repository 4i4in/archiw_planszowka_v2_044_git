function check_if_prop_is_legal_on_terrain(_xx,_yy,_prop_string)
{
	var _id_terrain_xy = game_board_array[_xx][_yy][$ "tile_terrain"][@ 0];
	var _terrain_1char = string_char_at(string(_id_terrain_xy), 1);
	var _legal = 0;
	switch(_terrain_1char)
		{
			case "d":	
					switch(_prop_string)
						{
							case	"craters_":			_legal = mapeditor.max_random_terrain;	break;
							case	"rifts_":			_legal = mapeditor.max_random_terrain;	break;
							case	"vulcano_":			_legal = mapeditor.max_random_terrain;	break;
							case	"deasise_":			_legal = mapeditor.max_random_terrain;	break;
							case	"pollution_":		_legal = mapeditor.max_random_terrain;	break;
							
							
							case	"coal_":			_legal = mapeditor.max_random_terrain;	break;
							case	"gems_":			_legal = mapeditor.max_random_terrain;	break;
							case	"granite_":			_legal = mapeditor.max_random_terrain;	break;
							case	"marble_":			_legal = mapeditor.max_random_terrain;	break;
							case	"precious_metals_":	_legal = mapeditor.max_random_terrain;	break;
							case	"rare_metals_":		_legal = mapeditor.max_random_terrain;	break;
							case	"stones_":			_legal = mapeditor.max_random_terrain;	break;
						}
				break;
			case "z":	
					switch(_prop_string)
						{
							case	"craters_":			_legal = mapeditor.max_random_terrain;	break;
							case	"reefs_rocks_":		_legal = mapeditor.max_random_terrain;	break;
							case	"rifts_":			_legal = mapeditor.max_random_terrain;	break;
							case	"shallow_":			_legal = mapeditor.max_random_terrain;	break;
							case	"vulcano_":			_legal = mapeditor.max_random_terrain;	break;
							case	"deasise_":			_legal = mapeditor.max_random_terrain;	break;
							case	"pollution_":		_legal = mapeditor.max_random_terrain;	break;
							case	"salt_lake_":		_legal = mapeditor.max_random_terrain;	break;
							
							case	"coal_":			_legal = mapeditor.max_random_terrain;	break;
							case	"gems_":			_legal = mapeditor.max_random_terrain;	break;
							case	"granite_":			_legal = mapeditor.max_random_terrain;	break;
							case	"marble_":			_legal = mapeditor.max_random_terrain;	break;
							case	"precious_metals_":	_legal = mapeditor.max_random_terrain;	break;
							case	"rare_metals_":		_legal = mapeditor.max_random_terrain;	break;
							case	"salt_":			_legal = mapeditor.max_random_terrain;	break;
							case	"stones_":			_legal = mapeditor.max_random_terrain;	break;
						}
				break;
			case "s":
					switch(_prop_string)
						{
							case	"craters_":			_legal = mapeditor.max_random_terrain;	break;
							case	"oasis_":			_legal = mapeditor.max_random_terrain;	break;
							case	"rifts_":			_legal = mapeditor.max_random_terrain;	break;
							case	"vulcano_":			_legal = mapeditor.max_random_terrain;	break;
							case	"deasise_":			_legal = mapeditor.max_random_terrain;	break;
							case	"pollution_":		_legal = mapeditor.max_random_terrain;	break;
							case	"forest_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"wood_":			_legal = mapeditor.max_random_terrain -3;	break;
							
							case	"animals_":			_legal = mapeditor.max_random_terrain -6;	break;
							case	"coal_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"crops_":			_legal = mapeditor.max_random_terrain -6;	break;
							case	"gems_":			_legal = mapeditor.max_random_terrain;	break;
							case	"granite_":			_legal = mapeditor.max_random_terrain;	break;
							case	"iron_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"marble_":			_legal = mapeditor.max_random_terrain;	break;
							case	"precious_metals_":	_legal = mapeditor.max_random_terrain;	break;
							case	"rare_metals_":		_legal = mapeditor.max_random_terrain;	break;
							case	"salt_":			_legal = mapeditor.max_random_terrain;	break;
							case	"stones_":			_legal = mapeditor.max_random_terrain;	break;
							case	"water_":			_legal = mapeditor.max_random_terrain;	break;
						}
				break;
			case "p":	
						switch(_prop_string)
						{
							case	"craters_":			_legal = mapeditor.max_random_terrain;	break;
							case	"oasis_":			_legal = mapeditor.max_random_terrain;	break;
							case	"rifts_":			_legal = mapeditor.max_random_terrain;	break;
							case	"swamps_":			_legal = mapeditor.max_random_terrain;	break;
							case	"vulcano_":			_legal = mapeditor.max_random_terrain;	break;
							case	"deasise_":			_legal = mapeditor.max_random_terrain;	break;
							case	"pollution_":		_legal = mapeditor.max_random_terrain;	break;
							case	"forest_":			_legal = mapeditor.max_random_terrain;	break;
							case	"wood_":			_legal = mapeditor.max_random_terrain;	break;
							
							case	"animals_":			_legal = mapeditor.max_random_terrain;	break;
							case	"coal_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"crops_":			_legal = mapeditor.max_random_terrain;	break;
							case	"gems_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"granite_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"iron_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"marble_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"precious_metals_":	_legal = mapeditor.max_random_terrain -3;	break;
							case	"rare_metals_":		_legal = mapeditor.max_random_terrain -3;	break;
							case	"salt_":			_legal = mapeditor.max_random_terrain -6;	break;
							case	"stones_":			_legal = mapeditor.max_random_terrain -6;	break;
							case	"water_":			_legal = mapeditor.max_random_terrain;	break;
						}
				break;
			case "h":
					switch(_prop_string)
						{
							case	"craters_":			_legal = mapeditor.max_random_terrain;	break;
							case	"oasis_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"rifts_":			_legal = mapeditor.max_random_terrain;	break;
							case	"swamps_":			_legal = mapeditor.max_random_terrain -6;	break;
							case	"vulcano_":			_legal = mapeditor.max_random_terrain;	break;
							case	"deasise_":			_legal = mapeditor.max_random_terrain;	break;
							case	"pollution_":		_legal = mapeditor.max_random_terrain;	break;
							case	"forest_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"wood_":			_legal = mapeditor.max_random_terrain -3;	break;
							
							case	"animals_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"coal_":			_legal = mapeditor.max_random_terrain ;	break;
							case	"crops_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"gems_":			_legal = mapeditor.max_random_terrain;	break;
							case	"granite_":			_legal = mapeditor.max_random_terrain;	break;
							case	"iron_":			_legal = mapeditor.max_random_terrain;	break;
							case	"marble_":			_legal = mapeditor.max_random_terrain;	break;
							case	"precious_metals_":	_legal = mapeditor.max_random_terrain;	break;
							case	"rare_metals_":		_legal = mapeditor.max_random_terrain;	break;
							case	"salt_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"stones_":			_legal = mapeditor.max_random_terrain -3;	break;
							case	"water_":			_legal = mapeditor.max_random_terrain -3;	break;
						}
				break;
			case "m":	
					switch(_prop_string)
						{
							case	"craters_":			_legal = mapeditor.max_random_terrain;	break;
							case	"oasis_":			_legal = mapeditor.max_random_terrain -6;	break;
							case	"rifts_":			_legal = mapeditor.max_random_terrain;	break;
							case	"vulcano_":			_legal = mapeditor.max_random_terrain;	break;
							case	"deasise_":			_legal = mapeditor.max_random_terrain;	break;
							case	"pollution_":		_legal = mapeditor.max_random_terrain;	break;
							case	"forest_":			_legal = mapeditor.max_random_terrain -6;	break;
							case	"wood_":			_legal = mapeditor.max_random_terrain -6;	break;
							
							case	"animals_":			_legal = mapeditor.max_random_terrain -6;	break;
							case	"coal_":			_legal = mapeditor.max_random_terrain;	break;
							case	"crops_":			_legal = mapeditor.max_random_terrain -6;	break;
							case	"gems_":			_legal = mapeditor.max_random_terrain;	break;
							case	"granite_":			_legal = mapeditor.max_random_terrain;	break;
							case	"iron_":			_legal = mapeditor.max_random_terrain;	break;
							case	"marble_":			_legal = mapeditor.max_random_terrain;	break;
							case	"precious_metals_":	_legal = mapeditor.max_random_terrain;	break;
							case	"rare_metals_":		_legal = mapeditor.max_random_terrain;	break;
							case	"salt_":			_legal = mapeditor.max_random_terrain -6;	break;
							case	"stones_":			_legal = mapeditor.max_random_terrain;	break;
							case	"water_":			_legal = mapeditor.max_random_terrain -6;	break;
						}
				break;
		}
	return(_legal);
}