draw_set_font(fnt_gui)
var _s = 0.7;
var _px = floor(x);
var _py = floor(y);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(make_color_rgb(40, 8, 16));
draw_text_transformed(_px + 1, _py, txt, _s, _s, 0);
draw_text_transformed(_px - 1, _py, txt, _s, _s, 0);
draw_text_transformed(_px, _py + 1, txt, _s, _s, 0);
draw_text_transformed(_px, _py - 1, txt, _s, _s, 0);

draw_set_color(make_color_rgb(230, 50, 60));
draw_text_transformed(_px, _py, txt, _s, _s, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);