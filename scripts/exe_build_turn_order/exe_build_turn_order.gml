function exe_build_turn_order()
{
	game_struct.turn_order = [];
	
	for(var _ii = 0; _ii < array_length(sides_array); _ii++)
		{
			var _side_name = variable_clone(sides_array[_ii][$ "side_name"]);
			array_push(game_struct.turn_order,_side_name);
		}
	if game_struct.turn_order_rule == "random"
		{
			game_struct.turn_order_rule = array_shuffle(game_struct.turn_order_rule);
		}
}