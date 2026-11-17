if (!iniciado)
{
    
    iniciado = true;
    exit; 
}


var _segundos_totais = ceil(tempo_restante / game_get_speed(gamespeed_fps));
var _minutos = _segundos_totais div 60;
var _segundos = _segundos_totais mod 60;

var _tempo_texto = string_format(_minutos, 2, 0) + ":" + (_segundos < 10 ? "0" : "") + string_format(_segundos, 2, 0);

draw_set_font(fnt_gui_big);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var _gw = display_get_gui_width();
var _centro_x = _gw / 2;
var _pos_y = 20;

draw_set_color(c_black);
draw_text(_centro_x + 2, _pos_y + 2, "Resista: " + _tempo_texto);

draw_set_color(c_yellow);
draw_text(_centro_x, _pos_y, "Resista: " + _tempo_texto);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);