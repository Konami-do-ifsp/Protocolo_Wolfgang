
draw_set_font(fnt_dialogo)
if (bar_alpha < 0.01) exit;

var _w = 420;
var _h = 18;
var _x = (display_get_gui_width() - _w) / 2;
var _y = display_get_gui_height() - 715;

var _pct   = clamp(hp / max_hp, 0, 1);
var _trail = clamp(hp_trail / max_hp, 0, 1);

draw_set_alpha(bar_alpha);


draw_set_color(c_black);
draw_rectangle(_x - 3, _y - 3, _x + _w + 3, _y + _h + 3, false);
draw_set_color(c_maroon);
draw_rectangle(_x, _y, _x + _w, _y + _h, false);


draw_set_color(c_white);
draw_rectangle(_x, _y, _x + _w * _trail, _y + _h, false);

draw_set_color(fast ? c_orange : c_red);
draw_rectangle(_x, _y, _x + _w * _pct, _y + _h, false);


draw_set_color(c_black);
draw_line_width(_x + _w * 0.5, _y, _x + _w * 0.5, _y + _h, 2);

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_text(_x + _w / 2, _y - 8, boss_name);


draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_color(c_white);