var _gw = display_get_gui_width();
var _gh = display_get_gui_height();
var _cx = _gw / 2;
var _cy = _gh / 2;
var _ox = (shake > 0) ? random_range(-shake, shake) : 0;

// Fundo escurecido
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(0, 0, _gw, _gh, false);
draw_set_alpha(1);

// Painel
draw_set_color(make_color_rgb(40, 40, 48));
draw_roundrect(_cx - 200 + _ox, _cy - 130, _cx + 200 + _ox, _cy + 130, false);
draw_set_color(make_color_rgb(120, 120, 135));
draw_roundrect(_cx - 200 + _ox, _cy - 130, _cx + 200 + _ox, _cy + 130, true);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// LED de status
var _led = c_dkgray;
if (state == "wrong")   _led = c_red;
if (state == "success") _led = c_lime;
draw_set_color(_led);
draw_circle(_cx + _ox, _cy - 105, 8, false);

// Dígitos
for (var i = 0; i < 4; i++)
{
    var _bx = _cx - 150 + i * 80 + _ox;
    var _by = _cy - 40;
    var _sel = (i == selected && state == "input");

    draw_set_color(_sel ? make_color_rgb(70, 70, 85) : make_color_rgb(25, 25, 30));
    draw_rectangle(_bx, _by, _bx + 60, _by + 80, false);

    draw_set_color(_sel ? c_white : c_gray);
    draw_rectangle(_bx, _by, _bx + 60, _by + 80, true);

    draw_text_transformed(_bx + 30, _by + 40, string(digits[i]), 2, 2, 0);

    if (_sel)
    {
        draw_triangle(_bx + 30, _by - 14, _bx + 20, _by - 4, _bx + 40, _by - 4, false);
        draw_triangle(_bx + 30, _by + 94, _bx + 20, _by + 84, _bx + 40, _by + 84, false);
    }
}

// Texto de dica
draw_set_color(c_gray);
draw_text(_cx + _ox, _cy + 105, "Setas: mover/girar   Enter: confirmar   Esc: sair");

// Reset
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);