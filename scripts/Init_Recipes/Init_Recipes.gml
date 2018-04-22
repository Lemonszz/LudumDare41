global.recipes = ds_list_create();

ds_list_add(global.recipes, [Items.STICK,[Items.WOOD, Items.WOOD]]);
ds_list_add(global.recipes, [Items.LIT_STICKS,[Items.STICK, Items.STICK]]);
ds_list_add(global.recipes, [Items.CAMPFIRE,[Items.STICK, Items.STICK, Items.ROCK, Items.ROCK]]);
ds_list_add(global.recipes, [Items.SWORD,[Items.STICK, Items.IRON_BAR, Items.IRON_BAR]]);
ds_list_add(global.recipes, [Items.ROCKET,[Items.IRON_BAR, Items.IRON_BAR, Items.IRON_BAR, Items.IRON_BAR, Items.LIT_STICKS, Items.LIT_STICKS, Items.IRON_BAR, Items.IRON_BAR, Items.IRON_BAR, Items.IRON_BAR, Items.IRON_BAR, Items.IRON_BAR]]);


global.cooking_recipes = ds_list_create();
ds_list_add(global.cooking_recipes, [Items.CHICKEN, Items.RAW_CHICKEN]);
ds_list_add(global.cooking_recipes, [Items.IRON_BAR, Items.IRON_ORE]);