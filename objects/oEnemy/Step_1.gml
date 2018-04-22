/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

age++;

if(irandom(2) == 0)
{
	targetPosX = oPlayer.x
	targetPosY = oPlayer.y
	
	path = path_add();
	if(mp_grid_path(global.mp_grid, path, x, y, targetPosX, targetPosY, 1))
	{
		image_xscale = 1;
		if(targetPosX < x)
			image_xscale = -1;
			
	    path_start(path, 1, path_action_stop, 0);
		
		
	}
	else
	{
		targetPosX = round(clamp(x + irandom_range(-50, 50), 0, room_width));
		targetPosY = round(clamp(y + irandom_range(-50, 50), 0, room_height));
	
		path = path_add();
		if(mp_grid_path(global.mp_grid, path, x, y, targetPosX, targetPosY, 1))
		{
			image_xscale = 1;
			if(targetPosX < x)
				image_xscale = -1;
			
		    path_start(path, 1, path_action_stop, 0);
		}
	}
}

image_xscale = 1;
if(targetPosX < x)
	image_xscale = -1;
			