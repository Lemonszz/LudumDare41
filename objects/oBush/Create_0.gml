/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

maxHits = 2;
tool = noone;
drops = [Items.BERRY];
createParticle = true;
particleAmount = 50;
particleObject = oLeaf;

hitSound = [sndLeaves1, sndLeaves2];
audioMin = 0.5;
audioMax = 1;

if(place_meeting(x, y, oEntity))
	instance_destroy();
	
image_speed = 0;
image_index = 1;