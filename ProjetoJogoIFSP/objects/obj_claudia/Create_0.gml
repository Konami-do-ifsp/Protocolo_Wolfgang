event_inherited();

dialogue_id = "claudia_intro";
npc_name = "Claudia Milk";
npc_id = "claudia";

if (!variable_global_exists("claudia_ajudada")) global.claudia_ajudada = false;
feliz = false;

if (global.claudia_ajudada)
{
    dialogue_id = "claudia_done";
    sprite_index = spr_claudia_pc;
    image_speed = 1;
    feliz = true;
}