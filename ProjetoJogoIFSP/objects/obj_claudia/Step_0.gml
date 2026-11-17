event_inherited();

if (!feliz && dialogue_id == "claudia_done")
{
    feliz = true;
    global.claudia_ajudada = true;
    sprite_index = spr_claudia_pc;
    image_index = 0;
    image_speed = 1;
}