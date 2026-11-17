draw_set_font(fnt_gui_big);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var _gw = display_get_gui_width();
var _centro_x = _gw / 2;
var _pos_y = 20;

draw_set_color(c_black);
draw_text(_centro_x + 2, _pos_y + 2, "Mate todos os inimigos!");

draw_set_color(c_red);
draw_text(_centro_x, _pos_y, "Mate todos os inimigos!");

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);