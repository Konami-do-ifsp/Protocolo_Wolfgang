if (!variable_global_exists("porta_dungeon1_aberta")) global.porta_dungeon1_aberta = false;

aberta = false;
image_speed = 0;
image_index = 0;

if (global.porta_dungeon1_aberta)
{
    aberta = true;
    sprite_index = porta_abrindo;
    image_index = image_number - 1;
    mask_index = spr_mask_vazia;
}