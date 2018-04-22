for(var xx = 0; xx < ds_grid_width(item_grid); xx++)
{
	for(var yy = 0; yy < ds_grid_height(item_grid); yy++)
	{
		var item = item_grid[# xx, yy];
		var dX = xx * (5 * 16);
		var dY = yy * (5 * 16);		
				
		for(var i = 0; i < ds_list_size(craft_list); i++)
		{
			var arr = ds_list_find_value(craft_list, i);
			var _x = arr[0];
			var _y = arr[1];
			
			if(_x == xx && _y == yy)
			{
				if(i + 1 < ds_list_size(craft_list))
				{
					var arrNext = ds_list_find_value(craft_list, i + 1);
					var _xNext = arrNext[0];
					var _yNext = arrNext[1];
					
					var ind = 0;
					if(_xNext == _x + 1)
						ind = 0;
					if(_xNext == _x - 1)
						ind = 2;
					if(_yNext == _y + 1)
						ind = 1;
					if(_yNext == _y - 1)
						ind = 3;
						
					draw_sprite_ext(sArrow, ind, dX, dY, 5, 5, 0, c_white, 1);
				}
			}
		}
	}
}