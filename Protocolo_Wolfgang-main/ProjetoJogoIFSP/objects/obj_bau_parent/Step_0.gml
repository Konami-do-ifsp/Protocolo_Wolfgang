if (!instance_exists(obj_player)) exit;

if (abrindo == false)
{
    if (keyboard_check_pressed(ord("E")) && !luta_boss())
    {
        if (obj_player.attacking == false)
        {
            var _d = point_distance(
                clamp(obj_player.x, bbox_left, bbox_right),
                clamp(obj_player.y, bbox_top, bbox_bottom),
                obj_player.x,
                obj_player.y
            );

            if (_d <= obj_player.interact_range)
            {
                abrindo = true;
                if (sprite_exists(spr_abrindo)) sprite_index = spr_abrindo;
                image_index = 0;
                image_speed = 1;
            }
        }
    }
}

if (abrindo == true && image_speed != 0)
{
    if (image_index >= image_number - 1)
    {
        image_index = image_number - 1;
        image_speed = 0;
        bag_add(item_id);
        global.baus_abertos[$ item_id] = true;
		if (dialogo != "")
		{
		    if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);
		    obj_dialogue.start_lines(get_dialogue(dialogo), "");
		}
    }
}