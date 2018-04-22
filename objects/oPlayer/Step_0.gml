var inputUp = -keyboard_check(ord("W"));
var inputDown = keyboard_check(ord("S"));
var inputLeft = -keyboard_check(ord("A"));
var inputRight = keyboard_check(ord("D"));
var inputDrop = keyboard_check_pressed(ord("Q"));

var moveVer = inputUp + inputDown;
var moveHor = inputLeft + inputRight;

hsp = moveHor * moveSpeed;
vsp = moveVer * moveSpeed;

if(moveHor != 0)
	facing = moveHor;

if(place_meeting(x + hsp, y, oSolid) )
{
	while(!place_meeting(x + sign(hsp), y, oSolid))
	{
		x += sign(hsp);	
	}
	hsp = 0;
}

if(place_meeting(x, y + vsp, oSolid))
{
	while(!place_meeting(x, y + sign(vsp), oSolid))
	{
		y += sign(vsp);	
	}
	vsp = 0;	
}

var item_inst = instance_place(x, y, oItem);
if(item_inst != noone && item_pickup_delay <= 0)
{
	if(item_inst.pickup_delay <= 0)
	{
		if(Inventory_Add_Item(item_inst.item))
		{
			instance_destroy(item_inst);
			item_pickup_delay = 15;
		}
	}
}

if(inputDrop)
{
	var it = Spawn_Item(Get_Held_Item(), x, y);
	oInventory.item_grid[# oInventory.selected, 4] = noone;
	
	if(it != noone)
	{
		it.pickup_delay = 60;
	
		var mouse_dir = point_direction(x, y, mouse_x, mouse_y);
		var lenX = lengthdir_x(4, mouse_dir);
		var lenY = lengthdir_y(4, mouse_dir);
	
		it.hspeed = lenX;
		it.vspeed = lenY;
	}
}

x += hsp;
y += vsp;
////////////////

age++;
item_pickup_delay--;
has_light = false;
light_size = 0;

if(Get_Held_Item() == Items.LIT_STICKS)
{
	has_light = true;
	light_size = 40;
}
//////////
if(age % 5 == 0 && irandom(15) == 0)
{
	global.player_hunger--;	
}

if(flash_time <= 0 && place_meeting(x, y, oEnemy))
{
	global.player_health--;
	flash_time = 30;
}

global.hand = lerp(global.hand, 0, 0.1);

if(global.player_hunger <= 0)
	global.player_health = 0;
	
if(global.player_health <= 0)
{
	if(!instance_exists(oGameOver))
		instance_create_depth(0, 0, 0, oGameOver);
}
image_xscale = facing;