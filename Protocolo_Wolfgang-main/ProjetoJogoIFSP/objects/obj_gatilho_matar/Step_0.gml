if (place_meeting(x, y, obj_player))
{
    if (!instance_exists(obj_aviso_matar))
    {
        instance_create_depth(x, y, -1000, obj_aviso_matar);
    }
    
    instance_destroy();
}