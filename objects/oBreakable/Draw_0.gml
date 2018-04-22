hit_time--;
if(hit_time > 0)
{
	var dX = random_range(-1, 1) + x;
	draw_sprite_ext(sprite_index, image_index, dX, y, xscale, yscale, 0, c_white, 1);
}
else
{
	draw_self();
}