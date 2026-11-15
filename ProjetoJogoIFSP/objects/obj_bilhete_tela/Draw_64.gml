var _gw = display_get_gui_width();
var _gh = display_get_gui_height();

draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(0, 0, _gw, _gh, false);
draw_set_alpha(1);

var _s = min(_gw / sprite_get_width(spr_bilhete_tela), _gh / sprite_get_height(spr_bilhete_tela)) * 0.8;
var _x = (_gw - sprite_get_width(spr_bilhete_tela) * _s) / 2 + sprite_get_xoffset(spr_bilhete_tela) * _s;
var _y = (_gh - sprite_get_height(spr_bilhete_tela) * _s) / 2 + sprite_get_yoffset(spr_bilhete_tela) * _s;
draw_sprite_ext(spr_bilhete_tela, 0, _x, _y, _s, _s, 0, c_white, 1);