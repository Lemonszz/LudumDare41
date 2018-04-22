if(mouse_wheel_down())
{
	selected -= 1;
	if(selected < 0)
		selected = 4;
}

if(mouse_wheel_up())
{
	selected += 1;
	if(selected > 4)
		selected = 0;
}

if(mouse_check_button_pressed(mb_right))
{
	var dX = device_mouse_x_to_gui(0) / (16 * 5);
	var dY = device_mouse_y_to_gui(0) / (16 * 5);
	
	if(dX < 5 && dY < 5)
	{
		if(swapSelectedX == -1)
		{
			if(item_grid[# floor(dX), floor(dY)] != noone)
			{
				swapSelectedX = dX;
				swapSelectedY = dY;
			}	
		}
		else
		{
			Inventory_Swap(swapSelectedX, swapSelectedY, dX, dY);
			swapSelectedX = -1;
			swapSelectedY = -1;
		}
		audio_play_sound(sndJang, 0, false);
	}
}

if(mouse_check_button_pressed(mb_left))
{
	var inst = instance_position(mouse_x, mouse_y, oInteractableObject);
	if(inst != noone)
	{
		if(point_distance(oPlayer.x, oPlayer.y, inst.x, inst.y) < 60)
		{
			global.hand = 10;
			with(inst)
			{
				event_user(0);	
			}
		}
	}
	else
	{
		var use = Use_Item(Get_Held_Item(), mouse_x, mouse_y);
		if(use)
			item_grid[# selected, 4] = noone;
	}
}

if(mouse_check_button(mb_left))
{
	mouse_down_time++;
	
	if(mouse_down_time > 0)
	{
		swapSelectedX = -1;
		swapSelectedY = -1;
		
		var dX = floor(device_mouse_x_to_gui(0) / (16 * 5));
		var dY = floor(device_mouse_y_to_gui(0) / (16 * 5));
	
		if(dX < 5 && dY < 5)
		{
			var add = true;
			for(var i = 0; i < ds_list_size(craft_list); i++)
			{
				var arr = ds_list_find_value(craft_list, i);
				if(arr[0] == dX && arr[1] == dY)
				{
					add = false;	
				}
			}
		
			if(add)
			{
				var con = true;
				if(ds_list_size(craft_list) != 0)
				{
					var prev = ds_list_find_value(craft_list, ds_list_size(craft_list) - 1);
					var _x = prev[0];
					var _y = prev[1];
				
					var check1 = dX + 1 == _x && dY == _y;
					var check2 = dX - 1 == _x && dY == _y;
					var check3 = dX == _x && dY + 1 == _y;
					var check4 = dX == _x && dY - 1 == _y;

					if(!(check1 || check2 || check3 || check4))
						con = false;
				}
			
				if(con)
				{
					var new = [];
					new[0] = dX;
					new[1] = dY;
					audio_play_sound(sndClick, 0, false);
					ds_list_add(craft_list, new);
				}
			}
		}
	}
}
else
{
	mouse_down_time = 0;
	if(ds_list_size(craft_list) > 0)
	{
		Attempt_Craft();	
	}
	
	ds_list_clear(craft_list);
}

for(var xx = 0; xx < ds_grid_width(item_grid); xx++)
{
	for(var yy = 0; yy < ds_grid_height(item_grid) -1; yy++)
	{
		var item = item_grid[# xx, yy];
		var itemBelow = item_grid[# xx, yy + 1];
		if(item != noone)
		{
			if(itemBelow == noone)
			{
				item_grid[# xx, yy + 1] = item;
				item_grid[# xx, yy] = noone;
				exit;
			}
		}	
	}
}

if(keyboard_check_pressed(ord("1")))
	selected = 0;
if(keyboard_check_pressed(ord("2")))
	selected = 1;
if(keyboard_check_pressed(ord("3")))
	selected = 2;
if(keyboard_check_pressed(ord("4")))
	selected = 3;
if(keyboard_check_pressed(ord("5")))
	selected = 4;


if(keyboard_check_pressed(ord("E")))
{
	Inventory_Add_Item(Items.WOOD);
}