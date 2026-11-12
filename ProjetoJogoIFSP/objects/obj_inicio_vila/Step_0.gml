if (!iniciou && instance_exists(obj_dialogue))
{
    obj_dialogue.start_lines(get_dialogue("john_acorda"), "");
    iniciou = true;
    instance_destroy();
}