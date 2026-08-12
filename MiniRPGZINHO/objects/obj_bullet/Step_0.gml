x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);
var hitBat = instance_place(x, y, obj_bat);

if (hitBat != noone)
{
    hitBat.hp -= damage;
	for (var j = 0; j < 6; j++)
	{
		var b = instance_create_layer(hitBat.x, hitBat .y, "Instances", obj_blood);
		b.dir = dir + random_range(-30, 30);
	}
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