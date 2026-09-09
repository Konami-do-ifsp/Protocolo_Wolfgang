var dir = 0;

if (instance_exists(obj_player))
{
    var dist = point_distance(x, y, obj_player.x, obj_player.y);

    if (dist < 50 && dist > 5)
    {
        dir = point_direction(x, y, obj_player.x, obj_player.y);
        x += lengthdir_x(spd, dir);
        y += lengthdir_y(spd, dir);
    }

    if (dist < 7)
    {
        if (can_attack && !obj_player.invencible)
        {
            if (obj_player.hp > 0)
            {
                if (dist > 0) dir = point_direction(x, y, obj_player.x, obj_player.y);
                obj_player.hp -= 2;
                audio_play_sound(snd_player_hitted, 1, false);
                can_attack = false;

                with (obj_camera) { shake = 3; shake_time = 6; shake_fade = 1; }

                global.hitstop = 4;

                with (obj_player)
                {
                    kb_x += lengthdir_x(2, dir);
                    kb_y += lengthdir_y(2, dir);
                    flash_timer = 20;
                    invencible = true;
                    inv_timer = 30;
                }

                alarm[0] = 30;
            }
        }
    }
}

if (!audio_is_playing(snd_bats))
{
    if (irandom(1500) == 0)
    {
        audio_play_sound(snd_bats, 1, false);
    }
}

if (hit_timer > 0)
{
    hit_timer--;
}


kb_x = lerp(kb_x, 0, 0.2);
kb_y = lerp(kb_y, 0, 0.2);
if (abs(kb_x) < 0.1) kb_x = 0;
if (abs(kb_y) < 0.1) kb_y = 0;

x += kb_x;
y += kb_y;