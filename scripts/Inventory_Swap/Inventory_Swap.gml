/// @param x1
/// @param y1
/// @param x2
/// @param y2

var x1, y1, x2, y2;

x1 = floor(argument0);
y1 = floor(argument1);
x2 = floor(argument2);
y2 = floor(argument3);

var check1 = x1 + 1 == x2 && y1 == y2;
var check2 = x1 - 1 == x2 && y1 == y2;
var check3 = x1 == x2 && y1 + 1 == y2;
var check4 = x1 == x2 && y1 - 1 == y2;

if(!(check1 || check2 || check3 || check4))
	return;

var hold = oInventory.item_grid[# x1, y1];

oInventory.item_grid[# x1, y1] = oInventory.item_grid[# x2, y2];
oInventory.item_grid[# x2, y2] = hold;