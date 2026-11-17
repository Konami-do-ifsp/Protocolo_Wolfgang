var _old_font = draw_get_font();
draw_set_font(font);
var _gw = display_get_gui_width();
var _gh = display_get_gui_height();


draw_set_alpha(0.65);
draw_set_color(c_black);
draw_rectangle(0, 0, _gw, _gh, false);
draw_set_alpha(1);

draw_set_color(make_color_rgb(30, 30, 38));
draw_rectangle(px, py, px + pw, py + ph, false);
draw_set_color(make_color_rgb(80, 80, 100));
draw_rectangle(px, py, px + pw, py + ph, true);


draw_set_color(make_color_rgb(45, 45, 58));
draw_rectangle(px, py, px + pw, py + title_h, false);
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_text(px + 12, py + title_h / 2, "Editor de Código - MiniC");
draw_set_valign(fa_top);
draw_btn(close_x1, close_y1, close_x2, close_y2, "X", make_color_rgb(170, 50, 50));


draw_btn(run_x1, run_y1, run_x2, run_y2, "Rodar", make_color_rgb(40, 140, 70));
draw_btn(clear_x1, clear_y1, clear_x2, clear_y2, "Limpar terminal", make_color_rgb(70, 70, 90));
draw_set_color(make_color_rgb(120, 120, 140));
draw_set_valign(fa_middle);
draw_text(clear_x2 + 14, (run_y1 + run_y2) / 2, "F5 = rodar");
draw_set_valign(fa_top);


draw_set_color(make_color_rgb(22, 22, 28));
draw_rectangle(ed_x1, ed_y1, ed_x2, ed_y2, false);
draw_set_color(make_color_rgb(28, 28, 36));
draw_rectangle(ed_x1, ed_y1, ed_x1 + gutter, ed_y2, false);

var _tx = ed_x1 + gutter + 4;
var _avail = ed_x2 - _tx - 4;
var _last = min(array_length(lines) - 1, ed_scroll + ed_rows - 1);

for (var _r = ed_scroll; _r <= _last; _r++)
{
    var _ly = ed_y1 + 4 + (_r - ed_scroll) * lh;

    if (_r == cur_row)
    {
        draw_set_color(make_color_rgb(38, 38, 50));
        draw_rectangle(ed_x1 + gutter, _ly - 1, ed_x2, _ly + lh - 3, false);
    }

    
    draw_set_color((_r == cur_row) ? c_white : make_color_rgb(110, 110, 125));
    draw_set_halign(fa_right);
    draw_text(ed_x1 + gutter - 8, _ly, string(_r + 1));
    draw_set_halign(fa_left);

    
    var _s = string_delete(lines[_r], 1, hscroll);
    while (string_length(_s) > 0 && string_width(_s) > _avail) _s = string_delete(_s, string_length(_s), 1);
    draw_set_color(make_color_rgb(220, 220, 230));
    draw_text(_tx, _ly, _s);
}


if ((blink div 30) mod 2 == 0 && cur_row >= ed_scroll && cur_row <= _last)
{
    var _cx = _tx + string_width(string_copy(lines[cur_row], hscroll + 1, cur_col - hscroll));
    var _cy = ed_y1 + 4 + (cur_row - ed_scroll) * lh;
    draw_set_color(c_white);
    draw_rectangle(_cx, _cy, _cx + 1, _cy + lh - 3, false);
}

draw_set_color(make_color_rgb(80, 80, 100));
draw_rectangle(ed_x1, ed_y1, ed_x2, ed_y2, true);


draw_set_color(make_color_rgb(10, 10, 14));
draw_rectangle(term_x1, term_y1, term_x2, term_y2, false);
draw_set_color(make_color_rgb(150, 150, 165));
draw_text(term_x1 + 8, term_y1 + 4, "Terminal");
draw_set_color(make_color_rgb(60, 60, 75));
draw_line(term_x1, term_y1 + term_head - 2, term_x2, term_y1 + term_head - 2);

var _ty0 = term_y1 + term_head;
var _tavail = term_x2 - term_x1 - 16;
var _tlast = min(array_length(term) - 1, term_scroll + term_rows - 1);

for (var _tr = term_scroll; _tr <= _tlast; _tr++)
{
    var _e = term[_tr];

    if (_e.err) draw_set_color(make_color_rgb(255, 100, 100));
    else if (_e.dim) draw_set_color(make_color_rgb(120, 120, 135));
    else draw_set_color(make_color_rgb(170, 255, 170));

    var _ts = _e.txt;
    while (string_length(_ts) > 0 && string_width(_ts) > _tavail) _ts = string_delete(_ts, string_length(_ts), 1);
    draw_text(term_x1 + 8, _ty0 + (_tr - term_scroll) * lh, _ts);
}

draw_set_color(make_color_rgb(80, 80, 100));
draw_rectangle(term_x1, term_y1, term_x2, term_y2, true);

draw_set_font(_old_font);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);