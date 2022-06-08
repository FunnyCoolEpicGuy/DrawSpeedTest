enum DrawStyle {
	surface,
	vertex
}
#macro C_SIZE 16

style = DrawStyle.vertex;

tile_surface_set_init = true;

target_width = 30;
target_height = 30;

sprite_grid = ds_grid_create(target_width,target_height);
tile_surface = surface_create(target_width*C_SIZE,target_height*C_SIZE);
ds_grid_set_region(sprite_grid,0,0,target_width,target_height,sprTile);
window_set_size(target_width*C_SIZE,target_height*C_SIZE);



//Vertex formatting
vertex_format_begin();
vertex_format_add_position();
vertex_format_add_texcoord();
vertex_format_add_color();
draw_test_vertex_format = vertex_format_end();

//Add to the vertex buffer
draw_test_vertex_buffer = vertex_create_buffer();
vertex_begin(draw_test_vertex_buffer,draw_test_vertex_format);
//Initialize the vertex buffer for comparison
for(var xx = 0; xx < ds_grid_width(sprite_grid); xx++) {
	for(var yy = 0; yy < ds_grid_height(sprite_grid); yy++) {
		var sprite = sprite_grid[# xx,yy];
		vertex_sprite(sprite,draw_test_vertex_buffer,xx*C_SIZE,yy*C_SIZE);
	}					
}
vertex_end(draw_test_vertex_buffer);
vertex_freeze(draw_test_vertex_buffer);
//Freeze it so it is nice and cozy:)
