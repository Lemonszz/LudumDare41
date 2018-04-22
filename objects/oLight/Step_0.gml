age1++;
age2++;
time++;

world_time = time % 5000;
world_alpha_target = 0;
if(world_time > 4000)
{
	world_alpha_target = 0.9;
	if(instance_number(oEnemy) < 20 && world_alpha >= 0.2 && irandom(10) == 0)
	{
		var posX = irandom_range(0, room_width);
		var posY = irandom_range(0, room_height);
		var pos = mp_grid_get_cell(global.mp_grid, (posX + 5) % 16, (posY + 5) % 16);
		while(pos == -1 && !mp_grid_path(global.mp_grid, path_add(), posX + 5, posY + 5, oPlayer.x, oPlayer.y, true))
		{
				posX = irandom_range(0, room_width);
				posY = irandom_range(0, room_height);
				pos = mp_grid_get_cell(global.mp_grid, (posX + 5) % 16, (posY + 5) % 16);
		}
		
		instance_create_depth(posX, posY, 0, oEnemy);
	}
}

world_alpha = lerp(world_alpha, world_alpha_target, 0.005);

if(world_time == 1000)
	world_alpha = 0;
	
if(surface_exists(surf))
{
	surface_set_target(surf);
	if(world_alpha == 0)
		draw_clear_alpha(c_black, 0);
	
	draw_set_colour(c_black);
	draw_set_alpha(world_alpha);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	gpu_set_blendmode(bm_subtract);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	
	var off1 = -0 + (1 * sin(age1 / 5));
	var off2 = -0 + (1 * sin(age2 / 5));
	
	with(oObject)
	{
		if(has_light)
		{
			draw_set_alpha(0.5);
			draw_circle(x, y, light_size + off1, false);	
			draw_circle(x, y, (light_size + (light_size / 2)) + off2, false);	
		}
	}	
	
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();

}
else
{
	surf = surface_create(room_width, room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();	
}