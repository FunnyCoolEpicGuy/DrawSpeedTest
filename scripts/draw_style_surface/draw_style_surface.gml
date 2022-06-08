//Better way to draw, need to account for window minimizing
function draw_style_surface(){
	if(surface_exists(tile_surface)) {
		surface_set_target(tile_surface);
			if(tile_surface_set_init) {
				draw_clear_alpha(c_white,0);
				//Initialize the tile surface with all the sprites for comparison
				for(var xx = 0; xx < ds_grid_width(sprite_grid); xx++) {
					for(var yy = 0; yy < ds_grid_height(sprite_grid); yy++) {
						var sprite = sprite_grid[# xx,yy];
						draw_sprite(sprite,0,xx*C_SIZE,yy*C_SIZE);
					}					
				}
				tile_surface_set_init = false;
			}
		surface_reset_target();
	} else {
		//If window gets minimized or something else happens, redraw the surface
		tile_surface = surface_create(360,360);
		tile_surface_set_init = true;
	}
	draw_surface(tile_surface,0,0);
}