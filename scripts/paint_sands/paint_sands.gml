function paint_sands()
{
game_board_array[@ xxx1][@ yyy1][$ "tile_terrain"][@ 0]= "sand_" + string(	irandom(mapeditor.max_random_terrain)	);
}