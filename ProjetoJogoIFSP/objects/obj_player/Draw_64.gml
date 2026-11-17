var _tf = gpu_get_texfilter();
gpu_set_texfilter(false);
draw_set_alpha(1);
draw_set_color(c_white);


var _esc = 3;
var _hstep = sprite_get_width(spr_coracao_cheio) * _esc - 36;
var _estados = [spr_coracao_vazio, spr_coracao_meio, spr_coracao_cheio];

for (var i = 0; i < ceil(max_hp / 2); i++)
{
    var _new = clamp(hp - i * 2, 0, 2);
    var _perdeu = dano_timer > 0 && clamp(dano_de - i * 2, 0, 2) > clamp(dano_ate - i * 2, 0, 2);
    var _spr = _estados[_new];
    var _img = 0;

    if (_perdeu)
    {
        _spr = (_new == 0) ? spr_tomando_dano_vazio : spr_tomando_dano_metade;
        _img = clamp((1 - dano_timer / 20) * sprite_get_number(_spr), 0, sprite_get_number(_spr) - 1);
    }

    draw_sprite_ext(_spr, _img,
        20 + i * _hstep + sprite_get_xoffset(_spr) * _esc,
        20 + sprite_get_yoffset(_spr) * _esc,
        _esc, _esc, 0, c_white, 1);
}


var _gx = display_get_gui_width() - 16;
var _gy = display_get_gui_height() - 16;

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

if (tem_aspirador())
{
    draw_set_font(current_weapon == Weapon.ASPIRADOR ? fnt_gui_big : fnt_gui);
    draw_text(_gx, _gy - 70, "ASPIRADOR");
}

draw_set_font(current_weapon == Weapon.SWORD ? fnt_gui_big : fnt_gui);
draw_text(_gx, _gy - 40, "MARTELO");


var _p = bag_px;
var _bl = global.bag;
var _bc = array_length(_bl);
var _bx = floor((display_get_gui_width() / 2) / _p) * _p;
var _by = floor((display_get_gui_height() - bag_y) / _p) * _p;

var _ink = make_color_rgb(22, 18, 30);
var _deep = make_color_rgb(44, 38, 60);
var _lite = make_color_rgb(108, 98, 132);
var _lo = make_color_rgb(30, 26, 42);
var _sel_fill = make_color_rgb(66, 56, 84);
var _sel_lite = make_color_rgb(140, 124, 160);
var _accent = make_color_rgb(230, 150, 60);
var _cream = make_color_rgb(242, 228, 196);
var _dim = make_color_rgb(150, 140, 165);

var _step = _p * 2;
var _border = [-2, 2, -1, 1, 0];

for (var _o = 0; _o < 5; _o++)
{
    var _rel = _border[_o];
    var _ar = abs(_rel);
    var _pos = _rel + bag_off;
    if (abs(_pos) > 1.6) continue;

    var _has;
    if (_rel == 0)     _has = (_bc >= 1);
    else if (_ar == 1) _has = (_rel > 0) ? (_bc >= 2) : (_bc >= 3);
    else               _has = (_bc >= 4);

    var _t = clamp(abs(_pos), 0, 1);
    var _sz = round(lerp(bag_big, bag_small, _t) / _step) * _step;
    var _hs = _sz / 2;
    var _sx = round((_bx + _pos * bag_gap) / _p) * _p;
    var _x1 = _sx - _hs;
    var _x2 = _sx + _hs;
    var _y1 = _by - _hs;
    var _y2 = _by + _hs;
    var _on = (_t < 0.5);

    if (!_has)
    {
        if (_ar <= 1)
        {
            bag_panel(_x1, _y1, _x2, _y2, _p, _ink, _lo, _lo, _lo);
            for (var _cy = _y1 + _p; _cy < _y2 - _p; _cy += _p)
            {
                for (var _cx = _x1 + _p; _cx < _x2 - _p; _cx += _p)
                {
                    if ((floor((_cx - _x1) / _p) + floor((_cy - _y1) / _p)) mod 2 == 0)
                        bag_rect(_cx, _cy, _cx + _p, _cy + _p, _deep);
                }
            }
        }
        continue;
    }

    var _it = item_get(_bl[(((bag_sel + _rel) mod _bc) + _bc) mod _bc]);

    if (_on) bag_panel(_x1, _y1, _x2, _y2, _p, _accent, _sel_fill, _sel_lite, _lo);
    else     bag_panel(_x1, _y1, _x2, _y2, _p, _ink, _deep, _lite, _lo);

    if (sprite_exists(_it.spr))
    {
        var _md = max(sprite_get_width(_it.spr), sprite_get_height(_it.spr));
        var _k = max(1, floor((_sz * bag_fill) / _md));
        bag_draw_spr(_it.spr, _sx + 2, _by + 2, _k, _ink);
        bag_draw_spr(_it.spr, _sx, _by, _k, _on ? c_white : _dim);
    }
    else
    {
        draw_set_font(fnt_gui);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_color(_on ? _cream : _dim);
        draw_text(_sx, _by, "?");
    }
}


if (_bc > 1 && _bc <= 12)
{
    var _dx = floor((_bx - ((_bc - 1) * _p * 3 + _p * 4) / 2) / _p) * _p;
    var _dy = _by + bag_big / 2 + _p * 3;

    for (var _i = 0; _i < _bc; _i++)
    {
        var _w = (_i == bag_sel) ? _p * 4 : _p * 2;
        bag_rect(_dx - 2, _dy - 2, _dx + _w + 2, _dy + _p + 2, _ink);
        bag_rect(_dx, _dy, _dx + _w, _dy + _p, (_i == bag_sel) ? _accent : _lite);
        _dx += _w + _p;
    }
}


if (_bc > 0 && abs(bag_off) < 0.3)
{
    var _name = item_get(_bl[clamp(bag_sel, 0, _bc - 1)]).name;
    draw_set_font(fnt_gui);

    var _nw = ceil((string_width(_name) + _p * 6) / _p) * _p;
    var _nh = max(_p * 6, ceil((string_height(_name) + _p * 2) / _p) * _p);
    var _nx1 = floor((_bx - _nw / 2) / _p) * _p;
    var _ny2 = _by - bag_big / 2 - _p * 3;
    var _tx = _nx1 + _nw / 2;
    var _ty = _ny2 - _nh / 2;

    bag_panel(_nx1, _ny2 - _nh, _nx1 + _nw, _ny2, _p, _ink, _deep, _lite, _lo);

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(_ink);
    draw_text(_tx + 1, _ty + 1, _name);
    draw_set_color(_cream);
    draw_text(_tx, _ty, _name);
}


if (_bc > 1)
{
    var _nudge = ((current_time div 350) mod 2) * 2;
    var _aoff = bag_gap + bag_small / 2 + _p * 3;
    var _ax1 = _bx - _aoff - _nudge + _p * 2;
    var _ax2 = _bx + _aoff + _nudge - _p * 2;

    bag_arrow(_ax1, _by + 2, -1, _p, _ink);
    bag_arrow(_ax2, _by + 2, 1, _p, _ink);
    bag_arrow(_ax1, _by, -1, _p, _cream);
    bag_arrow(_ax2, _by, 1, _p, _cream);
}

gpu_set_texfilter(_tf);
draw_set_font(fnt_gui);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(1);