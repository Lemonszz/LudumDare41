draw_sprite_ext(sName, 0, display_get_gui_width() / 2, display_get_gui_height() / 2, image_alpha * 10, image_alpha * 10, 0, c_white, image_alpha);

image_alpha -= 0.005;

if(image_alpha <= 0)
	instance_destroy();