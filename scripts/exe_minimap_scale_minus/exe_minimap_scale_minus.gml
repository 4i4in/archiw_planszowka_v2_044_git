//exe_minimap_scale_minus
function exe_minimap_scale_minus()
{
	if lclick_cooldown_counter < 1
		{
			game_struct.minimap_scale --;
			if game_struct.minimap_scale < 1
				{	game_struct.minimap_scale = 1	};
				
			if	game_struct.current_menu	!=	"editor_step0"
				{
					game_struct.mimimap_xpos = wgw - game_struct.map_xsize * game_struct.minimap_scale;
					game_struct.mimimap_ypos = 0;
				}
			clickable_loaded = 0;
			lclick_cooldown_counter = lclick_cooldown;
		}
}