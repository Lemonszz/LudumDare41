/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

has_light = lit;
age++

var result = noone;
if(item != noone)
{
	for(var i = 0; i < ds_list_size(global.cooking_recipes); i++)
	{
		var arr = ds_list_find_value(global.cooking_recipes, i);
		if(arr[1] == item)
		{
			result = arr[0];	
		}
	}
}

if(item != noone && result != noone && lit)
{
	progress++;
	if(progress >= 200)
	{
		item = result;
		progress = 0;
	}
}