function exe_return_visibility_levels_structs()
{
	var _visibilit_levels_struct =
		{
			vis_granted : 0,
			vis_own_utylity : 0,
			vis_other_facility : 7, //-number of facilities there
			vis_tile_props : 5,
			vis_tile_resources : 10,
			vis_recognize_units_group : 6,
			vis_recognize_units_number : 3,
			vis_recognize_unit_specyfic : 12,
			vis_sea_travel_props : 5,
			list_sea_travel_props : ["shallow","reefs_rocks"],
			
		}
	return(_visibilit_levels_struct);
}