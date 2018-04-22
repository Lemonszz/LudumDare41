if(flash_time > 0 && flash_time % 2 == 0)
{
	gpu_set_fog(true, c_white, 1, 1);	
}

draw_self();

gpu_set_fog(false, c_white, 0,0);