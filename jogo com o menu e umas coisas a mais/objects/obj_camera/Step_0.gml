
var _alvo_x = obj_player.x - (camera_get_view_width(view_camera) / 2);
var _alvo_y = obj_player.y - (camera_get_view_height(view_camera) / 2);

x = lerp(x, _alvo_x, 0.1);
y = lerp(y, _alvo_y, 0.1);

var off_x = 0;
var off_y = 0;

if (shake_time > 0)
{
    shake_time--;

    off_x = choose(-shake, shake) + random_range(-shake * 0.2, shake * 0.2);
    off_y = choose(-shake, shake) + random_range(-shake * 0.2, shake * 0.2);
 
    shake -= shake_fade; 
}
else
{
    shake = 0;
}

camera_set_view_pos(view_camera[0], round(x + off_x), round(y + off_y));
