if (tempo > 0) { tempo--; exit; }

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if (point_in_rectangle(_mx, _my, lutar_x, lutar_y, lutar_x + larg, lutar_y + alt))
{
    tentativas++;

    repeat (30)
    {
        var _nx = irandom_range(20, gw - larg - 20);
        var _ny = irandom_range(20, gh - alt - 20);

        var _longe_do_mouse = point_distance(_nx + larg / 2, _ny + alt / 2, _mx, _my) > 250;
        var _fora_do_aceitar = rectangle_in_rectangle(_nx, _ny, _nx + larg, _ny + alt, aceitar_x, aceitar_y, aceitar_x + larg, aceitar_y + alt) == 0;

        if (_longe_do_mouse && _fora_do_aceitar)
        {
            lutar_x = _nx;
            lutar_y = _ny;
            break;
        }
    }
}

var _clicou_aceitar = mouse_check_button_pressed(mb_left)
    && point_in_rectangle(_mx, _my, aceitar_x, aceitar_y, aceitar_x + larg, aceitar_y + alt);

if (_clicou_aceitar)
{
	audio_stop_sound(obj_luk_final.musica);
    audio_play_sound(snd_musica_creditos, 1, true);

    obj_luk_final.fase = 5;
    instance_destroy();
    obj_luk_final.fase = 5;
    instance_destroy();
}