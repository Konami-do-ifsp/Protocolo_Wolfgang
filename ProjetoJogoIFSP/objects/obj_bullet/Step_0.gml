
x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);

image_angle = dir; 



var hit_enemy = instance_place(x, y, obj_enemy_parent);

if (hit_enemy != noone)
{
    var enemy_x = hit_enemy.x;
    var enemy_y = hit_enemy.y;


    hit_enemy.take_damage(damage, dir);


    for (var j = 0; j < 6; j++)
    {
        var b = instance_create_layer(enemy_x, enemy_y, "Instances", obj_blood);
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

else if (place_meeting(x, y, obj_collision))
{
    instance_destroy();
}