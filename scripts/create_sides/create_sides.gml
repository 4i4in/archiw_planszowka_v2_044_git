function create_sides(_array_id,_nn)
{
	if _nn = "infinity"
		{
			var _side_struct = side_generic();
			array_push(_array_id,_side_struct);
			
			var _side_struct = side_dwarf();
			array_push(_array_id,_side_struct);
			
			var _side_struct = side_highelf();
			array_push(_array_id,_side_struct);
			
			var _side_struct = side_human();
			array_push(_array_id,_side_struct);
			
			var _side_struct = side_triton();
			array_push(_array_id,_side_struct);
			
			var _side_struct = side_undead();
			array_push(_array_id,_side_struct);
			
			var _side_struct = side_woodelf();
			array_push(_array_id,_side_struct);
		}
	else
		{
			for(var _ii = 0; _ii < _nn; _ii++)	
				{
					var _array_avilable_sides_id = avilable_sides[@ _ii];
					array_push(sides_array,_array_avilable_sides_id);
				}
		}
}