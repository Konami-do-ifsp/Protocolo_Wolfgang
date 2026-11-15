if (!instance_exists(obj_player)) exit;

if (aberta == false)
{
    if (keyboard_check_pressed(ord("E")) && !luta_boss())
    {
        var _livre = true;
        if (obj_player.attacking == true) _livre = false;
        if (instance_exists(obj_dialogue) && obj_dialogue.active) _livre = false;

        if (_livre == true && bag_selected("chave1"))
        {
            var _d = point_distance(
                clamp(obj_player.x, bbox_left, bbox_right),
                clamp(obj_player.y, bbox_top, bbox_bottom),
                obj_player.x,
                obj_player.y
            );

            if (_d <= obj_player.interact_range)
			{
			    bag_remove("chave1");
			    global.porta_dungeon1_aberta = true;

			    aberta = true;
			    sprite_index = porta_abrindo;
			    image_index = 0;
			    image_speed = 1;
			}
        }
    }
}

if (aberta == true && image_speed != 0)
{
    if (image_index >= image_number - 1)
    {
        image_index = image_number - 1;
        image_speed = 0;
        mask_index = spr_mask_vazia;
    }
}