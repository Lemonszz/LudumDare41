event_inherited();
tool = Items.PICKAXE;
drops = [Items.IRON_ORE, Items.ROCK];
createParticle = true;
particleAmount = 50;
particleObject = oParticleRock;
hitSound = [sndStone1, sndStone2];


image_speed = 0;
image_index = irandom(sprite_get_number(sprite_index));

if(place_meeting(x, y, oEntity))
	instance_destroy();

if(place_meeting(x, y, oTree))
	instance_destroy();