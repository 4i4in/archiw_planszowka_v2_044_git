function paint_mountains()
{
game_board_array[@ xxx1][@ yyy1][$ "tile_terrain"][@ 0]= "mountains_" + string(	irandom(mapeditor.max_random_terrain)	);
}