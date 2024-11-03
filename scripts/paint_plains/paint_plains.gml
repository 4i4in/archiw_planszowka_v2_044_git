function paint_plains()
{
game_board_array[@ xxx1][@ yyy1][$ "tile_terrain"][@ 0]= "plain_" + string(	irandom(mapeditor.max_random_terrain)	);
}