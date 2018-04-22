
if(other.owner != id && flash_time <= 0)
{
	flash_time = 15;
	hp--;
	event_user(0);
	
	if(hp <= 0)
	{
		event_user(1);
		instance_destroy();
	}
	
	if(other.owner != noone)
	{
		var dir = 180 + point_direction(x, y, other.owner.x, other.owner.y);
		var dirX = lengthdir_x(2, dir);	
		var dirY = lengthdir_y(2, dir);
		
		hspeed += dirX;
		vspeed += dirY;
		friction = 0.25;
	}
}