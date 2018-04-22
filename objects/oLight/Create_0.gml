surf = surface_create(room_width, room_height);

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

age1 = 0;
age2 = 5478;

time = 0;
world_alpha = 0;
world_alpha_target = 0;

surface_reset_target();