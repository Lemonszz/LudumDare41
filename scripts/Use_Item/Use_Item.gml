/// @param item
/// @param x
/// @param y
/// @return success

var item = argument0;
var _x = argument1;
var _y = argument2;

switch(item)
{
	case Items.CAMPFIRE:
		if(!place_meeting(x, y, oPlayer))
		{
			instance_create_depth(_x, _y, 0, oCampfire);
				audio_play_sound(sndPlop, 1, false);
			return true;
		}
		global.hand = 10;
		return false;
	break;
	case Items.SWORD:
		var dir = point_direction(oPlayer.x, oPlayer.y, _x, _y);
		var offX = lengthdir_x(8, dir);
		var offY = lengthdir_y(8, dir);
		
		var hurt=  instance_create_depth(oPlayer.x + offX, oPlayer.y + offY, 0, oHurt);
		hurt.owner = oPlayer.id;
		hurt.image_angle = dir;
		global.hand = 10;
		return false;
	break;
	case Items.CHICKEN:
		global.player_hunger = clamp(global.player_hunger + 25, 0, 100);
		global.player_health = clamp(global.player_health + 1, 0, 10);
		audio_play_sound(sndFood, 0, false);
		global.hand = 5;
		return true;
	break;
	case Items.BERRY:
		global.player_hunger = clamp(global.player_hunger + 10, 0, 100);
		global.player_health = clamp(global.player_health + 0.6, 0, 10);
		audio_play_sound(sndFood, 0, false);
		global.hand = 5;
		return true;
	break;
	case Items.LIT_STICKS:
		if(!place_meeting(_x, _y, oObject))
		{
			instance_create_depth(_x, _y, 0, oTorch);
			audio_play_sound(sndPlop, 1, false);
			global.hand = 10;
			return true;
		}
		return false;
	break;
	case Items.ROCKET:
		if(!place_meeting(_x, _y, oObject))
		{
			instance_create_depth(_x, _y, 0, oRocket);
			audio_play_sound(sndPlop, 1, false);
			global.hand = 10;
			return true;
		}
		return false;
	default:
		return false;
}