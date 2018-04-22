randomise();

audio_play_sound(sndMusic1, 0, true);

global.grass_surf = surface_create(room_width, room_height);
Create_Grass();


repeat(20)
{
	var herdX = random_range(0, room_width);	
	var herdY = random_range(0, room_height);	
	
	var herdAmt = random_range(2, 7);
	repeat(herdAmt)
	{
		var offsetX = random_range(-40, 40);	
		var offsetY = random_range(-40, 40);	
		
		var _x = round(herdX + offsetX);
		var _y = round(herdY + offsetY);
		
		if(_x > 0 && _x < room_width && _y > 0 && _y < room_height)
			instance_create_depth(_x, _y, 0, oBird);
	}
}


repeat(50)
{
	var forestX = random_range(0, room_width);	
	var forestY = random_range(0, room_height);
	
	var forestAmount = random_range(5, 50);
	
	repeat(forestAmount)
	{
		var offsetX = random_range(-150, 150);		
		var offsetY = random_range(-150, 150);		
		
		var _x = round(forestX + offsetX);
		var _y = round(forestY + offsetY);
		
		if(!place_meeting(_x, _y, oEntity))
		if(_x > 0 && _x < room_width && _y > 0 && _y < room_height)
			instance_create_depth(_x, _y, 0, oTree);
	}
}

repeat(600)
{
	var stoneX = round(random_range(0, room_width));	
	var stoneY = round(random_range(0, room_height));
	
	if(!place_meeting(stoneX, stoneY, oEntity) && !place_meeting(stoneX, stoneY, oTree))
	if(stoneX > 0 && stoneX < room_width && stoneY > 0 && stoneY < room_height)
			instance_create_depth(stoneX, stoneY, 0, oRock);
}

repeat(250)
{
	var stoneX = round(random_range(0, room_width));	
	var stoneY = round(random_range(0, room_height));
	
	if(!place_meeting(stoneX, stoneY, oEntity) && !place_meeting(stoneX, stoneY, oTree))
	if(stoneX > 0 && stoneX < room_width && stoneY > 0 && stoneY < room_height)
			instance_create_depth(stoneX, stoneY, 0, oIronRock);
}

repeat(50)
{
	var stoneX = round(random_range(0, room_width));	
	var stoneY = round(random_range(0, room_height));
	
	if(!place_meeting(stoneX, stoneY, oEntity) && !place_meeting(stoneX, stoneY, oTree))
	if(stoneX > 0 && stoneX < room_width && stoneY > 0 && stoneY < room_height)
			instance_create_depth(stoneX, stoneY, 0, oBush);
}


global.mp_grid = mp_grid_create(0, 0, room_width / 16, room_height / 16, 16, 16);
Set_Mp_Grid();