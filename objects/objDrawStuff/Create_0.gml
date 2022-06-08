enum DrawStyle {
	surface
}
style = DrawStyle.surface;
#macro C_SIZE 16
sprite_grid = ds_grid_create(20,20);
ds_grid_set_region(sprite_grid,0,0,
ds_grid_width(sprite_grid),ds_grid_height(sprite_grid),sprTile);

tile_surface_set_init = true;
tile_surface = surface_create(320,320);
