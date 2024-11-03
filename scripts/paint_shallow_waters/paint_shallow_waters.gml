function paint_shallow_waters()
{
game_board_array[@ xxx1][@ yyy1][$ "tile_terrain"][@ 0]= "zhallow_water_" + string(	irandom(mapeditor.max_random_terrain)	);
}