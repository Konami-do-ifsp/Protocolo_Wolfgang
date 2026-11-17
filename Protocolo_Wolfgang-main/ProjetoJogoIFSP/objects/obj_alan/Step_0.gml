if (!instance_exists(obj_player)) exit;

if (global.alan_salvo && dialogue_id == "alan_intro")
{
    dialogue_id = "alan_done";
}

event_inherited();