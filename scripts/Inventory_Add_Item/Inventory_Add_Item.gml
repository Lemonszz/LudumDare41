/// @description Add item to inventory
/// @param item
/// @return if added

var item = argument0;

var insertIndex = Find_Free_Inventory_Slot();

if(insertIndex != -1)
{
	audio_play_sound(sndPick, 0, 0);
	oInventory.item_grid[# insertIndex, 0] = item;
	return true;
}
else
{
	return false;	
}