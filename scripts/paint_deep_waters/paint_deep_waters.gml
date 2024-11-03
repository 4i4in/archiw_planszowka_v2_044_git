function paint_deep_waters()
{
game_board_array[@ xxx1][@ yyy1][$ "tile_terrain"][@ 0]= "deep_water_" + string(	irandom(mapeditor.max_random_terrain)	);
}