///@param item
///@param x
///@param y

var item = argument0;
var _x = argument1;
var _y = argument2;

if(item == noone)
	return noone;

var inst = instance_create_depth(_x, _y, 0, oItem);
inst.item = item;

return inst;