function paint_hills()
{
game_board_array[@ xxx1][@ yyy1][$ "tile_terrain"][@ 0]= "hills_" + string(	irandom(mapeditor.max_random_terrain)	);
}