image_angle += dir * 15;
image_alpha -= 0.05;

if(image_alpha <= 0)
	instance_destroy();
