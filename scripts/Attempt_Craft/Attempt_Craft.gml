var list = ds_list_create();

for(var i = 0; i < ds_list_size(oInventory.craft_list); i++)
{
	var arr = ds_list_find_value(oInventory.craft_list, i);
	var _x = arr[0];
	var _y = arr[1];
	
	var item = oInventory.item_grid[# _x, _y];
	ds_list_add(list, item);
}

for(var i = 0; i < ds_list_size(global.recipes); i++)
{
	var recArr = ds_list_find_value(global.recipes, i);
	var rec = recArr[1];
	var out = recArr[0];
	var found = false;
	if(array_length_1d(rec) == ds_list_size(list))
	{
		found = true;
		for(var j = 0; j < array_length_1d(rec); j++)
		{
			if(rec[j] != ds_list_find_value(list, j))
			{
				found = false;
				break;	
			}
		}
		
	}
	
	if(found)
	{
		for(var j = 0; j < ds_list_size(oInventory.craft_list); j++)
		{
			var arr = ds_list_find_value(oInventory.craft_list, j);
			var _x = arr[0];
			var _y = arr[1];
	
			oInventory.item_grid[# _x, _y] = noone;
		}
		Inventory_Add_Item(out);
	}
	
}

ds_list_destroy(list);