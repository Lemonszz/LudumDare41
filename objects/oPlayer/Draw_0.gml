/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if(global.player_health <= 0)
	exit;

event_inherited();

draw_sprite(sPlayerHand, 0, x + (facing * global.hand), y);