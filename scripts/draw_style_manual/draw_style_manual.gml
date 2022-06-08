//Shittiest way to draw
function draw_style_manual(){
	for(var xx = 0; xx < ds_grid_width(sprite_grid); xx++) {
		for(var yy = 0; yy < ds_grid_height(sprite_grid); yy++) {
			var sprite = sprite_grid[# xx,yy];
			draw_sprite(sprite,0,xx*C_SIZE,yy*C_SIZE);
		}					
	}
}