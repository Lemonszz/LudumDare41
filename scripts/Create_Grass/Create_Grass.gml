global.grass_surf = surface_create(room_width, room_height);

surface_set_target(global.grass_surf);
draw_clear_alpha(c_black, 1);
var size = 16;
for(var xx = 0; xx < room_width / size; xx++)
{
	for(var yy = 0; yy < room_height / size; yy++)
	{
		var val = FastNoise((xx + 1) / 2, (yy + 1) / 2, 7);
		var factor = 4;
		var col = make_colour_rgb(22 + (val / factor), 112 + (val / factor), 25 + (val / factor));; 
		draw_sprite_ext(sTileGrass, 0, size * xx, size * yy, 1, 1, 0,col, 1)
	}
}
surface_reset_target();
