//Pack the sprite into the vertex buffer!
function vertex_sprite(sprite,buff,xx,yy, optional_alpha = 1, optional_color = c_white) {
	var uvs = sprite_get_uvs(sprite,0);
	//Triangle one
	vertex_position(buff, xx - sprite_get_xoffset(sprite),  yy - sprite_get_yoffset(sprite));
	vertex_texcoord(buff, uvs[0], uvs[1]);
	vertex_color(buff, optional_color, optional_alpha);

	vertex_position(buff, xx + sprite_get_width(sprite) - sprite_get_xoffset(sprite),  yy - sprite_get_yoffset(sprite));
	vertex_texcoord(buff, uvs[2], uvs[1]);
	vertex_color(buff, optional_color, optional_alpha);

	vertex_position(buff, xx - sprite_get_xoffset(sprite), yy + sprite_get_height(sprite) - sprite_get_yoffset(sprite));
	vertex_texcoord(buff, uvs[0], uvs[3]);
	vertex_color(buff, optional_color, optional_alpha);
	//Triangle two
	vertex_position(buff, xx + sprite_get_width(sprite) - sprite_get_xoffset(sprite),  yy - sprite_get_yoffset(sprite));
	vertex_texcoord(buff, uvs[2], uvs[1]);
	vertex_color(buff, optional_color, optional_alpha);

	vertex_position(buff, xx + sprite_get_width(sprite) - sprite_get_xoffset(sprite), yy + sprite_get_height(sprite) - sprite_get_yoffset(sprite));
	vertex_texcoord(buff, uvs[2], uvs[3]);
	vertex_color(buff, optional_color, optional_alpha);

	vertex_position(buff, xx - sprite_get_xoffset(sprite), yy + sprite_get_height(sprite) - sprite_get_yoffset(sprite));
	vertex_texcoord(buff, uvs[0], uvs[3]);
	vertex_color(buff, optional_color, optional_alpha);
}
