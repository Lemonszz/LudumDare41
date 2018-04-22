event_inherited();
tool = Items.AXE;
drops = [Items.WOOD];
createParticle = true;
particleAmount = 50;
particleObject = oLeaf;

hitSound = [sndWood1, sndWood2,sndWood3];
audioMin = 0.5;
audioMax = 1;

if(place_meeting(x, y, oEntity))
	instance_destroy();