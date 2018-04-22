if(Get_Held_Item() == tool || tool == noone)
{
	hits++;
	hit_time = shakeMax;
	xscale = 0.9;
	yscale = 1.1;
	
	if(createParticle)
	{
		repeat(particleAmount / 4)
		{
			var _x = random_range(bbox_left, bbox_right);	
			var _y = random_range(bbox_top, bbox_bottom);	
		
			instance_create_depth(_x, _y, -9999, particleObject);
		}
	}
	
	if(hitSound != noone)
	{
		var s = hitSound[irandom(array_length_1d(hitSound) - 1)];
		var a = audio_play_sound(s, 1, false);	
		audio_sound_pitch(s, random_range(audioMin, audioMax));
	}
	
	if(hits >= maxHits)
	{
		if(createParticle)
		{
			repeat(particleAmount)
			{
				var _x = random_range(bbox_left, bbox_right);	
				var _y = random_range(bbox_top, bbox_bottom);	
		
				instance_create_depth(_x, _y, -9999, particleObject);
			}
		}
	
		instance_destroy();	
		Set_Mp_Grid();
		event_user(1);
		for(var i = 0; i < array_length_1d(drops); i++)
		{
			Spawn_Item(drops[i], x, y);	
		}
	}
}