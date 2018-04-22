if(Get_Held_Item() == Items.LIT_STICKS && !lit)
{
	lit = true;
	sprite_index = sCampfireLit
	audio_play_sound(sndPlop, 1, false);
	exit;
}

if(item == noone)
{
	var toAdd = Get_Held_Item();
	for(var i = 0; i < ds_list_size(global.cooking_recipes); i++)
	{
		var arr = ds_list_find_value(global.cooking_recipes, i);
		if(arr[1] == toAdd)
		{
			item = toAdd;	
			oInventory.item_grid[# oInventory.selected, 4] = noone;
				audio_play_sound(sndPlop, 1, false);
			exit;
		}
	}
}
else
{
	if(!Inventory_Add_Item(item))
	{
		Spawn_Item(item, x, y);
	}
	audio_play_sound(sndPlop, 1, false);
	item = noone;	
	exit;
}