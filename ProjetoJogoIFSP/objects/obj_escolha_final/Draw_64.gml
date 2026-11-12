var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);
var _p = 4;

draw_set_font(fnt_dialogo);

draw_set_alpha(0.75);
draw_set_color(c_black);
draw_rectangle(0, 0, gw, gh, false);

draw_set_alpha(0.25);
draw_set_color(make_color_rgb(40, 20, 60));
for (var _y = 0; _y < gh; _y += 6)
{
    draw_rectangle(0, _y, gw, _y + 2, false);
}
draw_set_alpha(1);

var _jx = choose(-2, 0, 0, 2);
bag_panel(
    lutar_x + _jx, lutar_y, lutar_x + larg + _jx, lutar_y + alt, _p,
    make_color_rgb(10, 8, 16), make_color_rgb(60, 20, 30), make_color_rgb(110, 40, 50), make_color_rgb(30, 10, 20)
);

var _hover_aceitar = point_in_rectangle(_mx, _my, aceitar_x, aceitar_y, aceitar_x + larg, aceitar_y + alt);

if (_hover_aceitar)
{
    bag_panel(
        aceitar_x, aceitar_y, aceitar_x + larg, aceitar_y + alt, _p,
        make_color_rgb(10, 8, 16), make_color_rgb(90, 30, 40), make_color_rgb(160, 60, 70), make_color_rgb(50, 15, 25)
    );
    bag_arrow(aceitar_x + 28, aceitar_y + alt / 2, 1, _p, c_yellow);
    bag_arrow(aceitar_x + larg - 28, aceitar_y + alt / 2, -1, _p, c_yellow);
}
else
{
    bag_panel(
        aceitar_x, aceitar_y, aceitar_x + larg, aceitar_y + alt, _p,
        make_color_rgb(10, 8, 16), make_color_rgb(45, 40, 70), make_color_rgb(80, 75, 115), make_color_rgb(25, 20, 40)
    );
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _lutar_cx = lutar_x + larg / 2 + _jx;
var _lutar_cy = lutar_y + alt / 2;
draw_set_color(c_black);
draw_text(_lutar_cx + 2, _lutar_cy + 2, "Lutar com Luk");
draw_set_color(make_color_rgb(200, 150, 150));
draw_text(_lutar_cx, _lutar_cy, "Lutar com Luk");

var _aceitar_cx = aceitar_x + larg / 2;
var _aceitar_cy = aceitar_y + alt / 2;
draw_set_color(c_black);
draw_text(_aceitar_cx + 2, _aceitar_cy + 2, "Aceitar o destino");
draw_set_color(_hover_aceitar ? c_yellow : c_white);
draw_text(_aceitar_cx, _aceitar_cy, "Aceitar o destino");

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);