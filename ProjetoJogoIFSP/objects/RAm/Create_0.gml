if (!variable_global_exists("item_step")) global.item_step = 0;
if (global.item_step > 2) instance_destroy();