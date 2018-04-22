item_grid = ds_grid_create(5, 5);
ds_grid_set_region(item_grid, 0, 0, 4, 4, noone);
selected = 0;

craft_list = ds_list_create();

Init_Recipes();

swapSelectedX = -1;
swapSelectedY = -1;

mouse_down_time = 0;

item_grid[# 0, 4] = Items.AXE;
item_grid[# 1, 4] = Items.PICKAXE;

enum Items
{
	AXE,
	WOOD,
	STICK,
	LIT_STICKS,
	ROCK,
	PICKAXE,
	CAMPFIRE,
	CHICKEN,
	RAW_CHICKEN,
	SWORD,
	IRON_ORE,
	IRON_BAR,
	BERRY,
	ROCKET
}

global.player_health = 10;
hpCurrent = 1;

global.player_hunger = 100;
hungerCurrent = 1;