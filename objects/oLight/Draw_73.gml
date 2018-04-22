if(surface_exists(surf))
{
	draw_surface(surf,0,0);	
}
else
{
	surf = surface_create(room_width, room_height);
}