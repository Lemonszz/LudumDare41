draw_sprite_ext(sGuiGrid, 0, 0, 0, 5, 5, 0, c_white, 1);

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
				draw_set_colour(c_red);
				draw_rectangle(dX + 5, dY + 5, dX + (16 * 5) - 6, dY + (16 * 5) - 6, false);
			}
		}
		
		if(item != noone)
		{
			if(swapSelectedX != -1)
			{
				var bX = floor(swapSelectedX);	
				var bY = floor(swapSelectedY);	
				if(bX == xx && bY == yy)
				{
					draw_set_colour(c_white);
					draw_rectangle(dX + 5, dY + 5, dX + (16 * 5) - 6, dY + (16 * 5) - 6, false);
				}
			}
			var offset = (sprite_get_width(sItems) / 2) * 5;
			draw_sprite_ext(sItems, item, dX + offset, dY + offset, 5, 5, 0, c_white, 1);	
		}
	}
}

var selX = selected * (5 * 16);
var selY = 4 * (5 * 16);

draw_set_colour(c_white);
draw_rectangle(selX, selY, selX + (16 * 5), selY + (16 * 5), true);




////Bars
var bar_scale = 3;
var bar_width = sprite_get_width(sBarHealth) * bar_scale;
var startX = display_get_gui_width() - bar_width - 4;
var startY = 5;

var healthpc = (global.player_health / 10) ;
var healthWidth = (sprite_get_width(sBarHealth) * healthpc);
hpCurrent = lerp(hpCurrent, healthpc, 0.2);
var healthWidthDis = (sprite_get_width(sBarHealth) * hpCurrent);

var hungerPc = (global.player_hunger / 100) ;
var hungerWidth = (sprite_get_width(sBarHealth) * hungerPc);
hungerCurrent = lerp(hungerCurrent, hungerPc, 0.2);
var hungerWidthDis = (sprite_get_width(sBarHealth) * hungerCurrent);

draw_sprite_ext(sBarHealth, 1, startX, startY, bar_scale, bar_scale, 0, c_white, 1);
draw_sprite_part_ext(sBarHealth, 2, 0, 0, healthWidthDis, 5, startX, startY, bar_scale, bar_scale, c_white, 1);
draw_sprite_part_ext(sBarHealth, 0, 0, 0, healthWidth, 5, startX, startY, bar_scale, bar_scale, c_white, 1);
draw_sprite_ext(sBarIcon, 0, startX - 20, startY, bar_scale, bar_scale, 0, c_white, 1);

draw_sprite_ext(sBarHunger, 1, startX, startY + 20, bar_scale, bar_scale, 0, c_white, 1);
draw_sprite_part_ext(sBarHunger, 2, 0, 0, hungerWidthDis, 5, startX, startY + 20, bar_scale, bar_scale, c_white, 1);
draw_sprite_part_ext(sBarHunger, 0, 0, 0, hungerWidth, 5, startX, startY + 20, bar_scale, bar_scale, c_white, 1);

draw_sprite_ext(sBarIcon, 1, startX - 20, startY + 20, bar_scale, bar_scale, 0, c_white, 1);