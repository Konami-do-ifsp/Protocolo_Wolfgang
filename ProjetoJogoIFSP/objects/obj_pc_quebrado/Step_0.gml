if (!instance_exists(obj_player)) exit;

var _fps_alvo = fps_quebrado;

if (global.pc_consertado)
{
    _fps_alvo = fps_consertado;
}

var _fps_sprite = max(0.01, sprite_get_speed(sprite_index));

if (sprite_get_speed_type(sprite_index) == spritespeed_framespergameframe)
{
    _fps_sprite *= game_get_speed(gamespeed_fps);
}

image_speed = _fps_alvo / _fps_sprite;

if (pausa > 0) pausa--;

var _dialogo_aberto = instance_exists(obj_dialogue) && obj_dialogue.active;

if (falando && !_dialogo_aberto)
{
    
    if (variable_instance_exists(id, "chamando_fairy") && chamando_fairy)
    {
        chamando_fairy = false;
        obj_dialogue.start_lines(get_dialogue("fairy_porta_trancada"), "fairy");
        exit;
    }

    falando = false;
    pausa = 10;
}

if (falando || pausa > 0) exit;

if (!keyboard_check_pressed(ord("E")) || luta_boss() || obj_player.attacking) exit;

var _distancia = point_distance(
    clamp(obj_player.x, bbox_left, bbox_right),
    clamp(obj_player.y, bbox_top, bbox_bottom),
    obj_player.x,
    obj_player.y
);

if (_distancia > obj_player.interact_range) exit;

if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);
if (obj_dialogue.active) exit;

if (global.pc_consertado)
{
    obj_dialogue.start_lines(get_dialogue("pc_obrigado"), "");
}
else if (bag_selected("cooler"))
{
    bag_remove("cooler");
	bag_add("tecla_5");
    global.pc_consertado = true;
    
    if (variable_global_exists("leon_livre") && global.leon_livre)
    {
        if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);
        obj_dialogue.start_lines(get_dialogue("pc_religado"), "");
        chamando_fairy = true;
    }
    else
    {
        if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);
        obj_dialogue.start_lines(get_dialogue("pc_religado"), "");
        chamando_fairy = false;
    }
}
else
{
    obj_dialogue.start_lines(get_dialogue("dungeon_pc_quebrado"), "");
}

falando = true;