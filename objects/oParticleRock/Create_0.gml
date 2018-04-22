hspeed = random_range(-4, 4);
vspeed = random_range(1, 3);

depth = -9000;
friction = 0.5;

dir = choose(-1, 1);

image_speed = 0;
image_index = irandom(sprite_get_number(sprite_index));