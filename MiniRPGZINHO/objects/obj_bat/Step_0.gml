   if (instance_exists(obj_player))
{
    if (point_distance(x, y, obj_player.x, obj_player.y) < 50)
    {
        var dist = point_distance(x, y, obj_player.x, obj_player.y);

	    if (dist < 50 && dist > 5) // segue o player, mas para a 10px dele 
	    {
	        var dir = point_direction(x, y, obj_player.x, obj_player.y);

	        x += lengthdir_x(spd, dir);
	        y += lengthdir_y(spd, dir);
	    }
    }
}
if (point_distance(x, y, obj_player.x, obj_player.y) < 7)
{
	if (can_attack && !obj_player.invencible)
    {
		if(obj_player.hp>0){
	        obj_player.hp -= 2;   // Diminui a vida do player
			audio_play_sound(snd_player_hitted,1,false);
	        can_attack = false;
			with (obj_camera)
			{
			    shake = 3;
				shake_time = 6;
				shake_fade = 1;
			}
			
	        alarm[0] = 30;
			with(obj_player){flash_timer = 20;}
			obj_player.invencible = true;
            obj_player.inv_timer = 30;
			
		}	
    }
	
}
if(hp <=0){
	instance_destroy();
}
if (!audio_is_playing(snd_bats)) {
    if (irandom(1500) == 0) {
        audio_play_sound(snd_bats, 1, false);
    }
}