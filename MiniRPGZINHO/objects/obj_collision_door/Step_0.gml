
if(global.key == true){
	if (instance_exists(obj_player))
    {
        if (point_distance(x, y, obj_player.x, obj_player.y) < 20)
        {
            if (keyboard_check_pressed(ord("E")))
            {
				image_blend = c_blue;
                instance_destroy()
				instance_create_layer(x,y,"Instances", obj_door_open);
                global.key = false;
            }
        }
    }
}
show_debug_message(global.key);