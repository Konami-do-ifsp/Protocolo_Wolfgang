if(point_distance(obj_player.x, obj_player.y, obj_key.x, obj_key.y)<32){
	if(keyboard_check_pressed(ord("E"))){
			global.has_key = true;
			instance_destroy();
		}
}