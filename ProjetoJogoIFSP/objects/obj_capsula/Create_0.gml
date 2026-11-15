event_inherited();
npc_name = "Leon";
npc_id = "leon";
dialogue_id = "leon_capsula";
fase = 0;
flash = 0;
fairy_falou = false;
if (!variable_global_exists("leon_livre")) global.leon_livre = false;

if (global.leon_livre) instance_destroy();