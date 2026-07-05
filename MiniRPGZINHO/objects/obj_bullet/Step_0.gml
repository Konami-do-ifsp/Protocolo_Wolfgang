   x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);
var hitBat = instance_place(x, y, obj_bat);

if (hitBat != noone)
{
    hitBat.hp -= 1;
	with (obj_camera)
			{
			    shake = 0.3;
				shake_time = 2;
				shake_fade = 1;
			}
	audio_play_sound(snd_hit_player, 1, false);                
    instance_destroy();
}

if(place_meeting(x, y, obj_collision)){
	instance_destroy();
}