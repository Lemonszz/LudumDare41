var lowest = -1;
var lowestCount = 99;

for(var xx = 0; xx < ds_grid_width(oInventory.item_grid); xx++)
{
	var count = 0;
	for(var yy = 0; yy < ds_grid_height(oInventory.item_grid); yy++)
	{
		var item = oInventory.item_grid[# xx, yy];
		if(item != noone)
			count++;
	}
	if(count < lowestCount && count != 5)
	{
		lowest = xx;
		lowestCount = count;
	}
}

return lowest;