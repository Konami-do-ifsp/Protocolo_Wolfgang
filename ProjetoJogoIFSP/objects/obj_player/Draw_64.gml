
var _p = 4;                  
var _x = 20;
var _y = 20;
var _w = 200;               
var _h = 20;                 

var _pct = clamp(hp_anim / max_hp, 0, 1);       
var _cp = clamp(hp / max_hp, 0, 1);             

var _fw = floor((_w * _pct) / _p) * _p;          
if (hp > 0 && _fw < _p) _fw = _p;                


var _orange = make_color_rgb(255, 130, 0);
var _col;
if (_cp > 0.5)       _col = merge_color(c_yellow, c_lime, (_cp - 0.5) / 0.5);
else if (_cp > 0.25) _col = merge_color(_orange, c_yellow, (_cp - 0.25) / 0.25);
else                 _col = merge_color(c_red, _orange, _cp / 0.25);


if (_cp <= 0.25 && hp > 0)
    _col = merge_color(_col, c_white, 0.3 * (0.5 + 0.5 * sin(current_time * 0.012)));


var _edge = c_black;
if (flash_timer > 0 && ((flash_timer div 3) mod 2 == 0)) _edge = c_white;

draw_set_color(_edge);
draw_rectangle(_x, _y - _p, _x + _w - 1, _y - 1, false);                 
draw_rectangle(_x, _y + _h, _x + _w - 1, _y + _h + _p - 1, false);       
draw_rectangle(_x - _p, _y, _x - 1, _y + _h - 1, false);                 
draw_rectangle(_x + _w, _y, _x + _w + _p - 1, _y + _h - 1, false);       


var _bg = make_color_rgb(70, 12, 20);
draw_set_color(_bg);
draw_rectangle(_x, _y, _x + _w - 1, _y + _h - 1, false);
draw_set_color(merge_color(_bg, c_black, 0.4));
draw_rectangle(_x, _y + _h - _p, _x + _w - 1, _y + _h - 1, false);


if (_fw > 0)
{

    draw_set_color(_col);
    draw_rectangle(_x, _y, _x + _fw - 1, _y + _h - 1, false);


    draw_set_color(merge_color(_col, c_white, 0.5));
    draw_rectangle(_x, _y, _x + _fw - 1, _y + _p - 1, false);


    draw_set_color(merge_color(_col, c_black, 0.4));
    draw_rectangle(_x, _y + _h - _p, _x + _fw - 1, _y + _h - 1, false);

  
    if (_fw > _p * 2)
    {
        draw_set_color(merge_color(_col, c_black, 0.25));
        draw_rectangle(_x + _fw - _p, _y + _p, _x + _fw - 1, _y + _h - _p - 1, false);
    }

   
    draw_set_alpha(0.55);
    draw_set_color(c_white);
    draw_rectangle(_x + _p, _y + _p, _x + _p * 3 - 1, _y + _p * 2 - 1, false);
    draw_set_alpha(1);
}

draw_set_color(c_white);



var txtAspirador = "ASPIRADOR";
var txtSword = "MARTELO";

var x_ = display_get_gui_width() - 16;
var y_ = display_get_gui_height() - 16;

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

if (tem_aspirador()) {
    if (current_weapon == Weapon.ASPIRADOR)
        draw_set_font(fnt_gui_big);
    else
        draw_set_font(fnt_gui);

    draw_text(x_, y_ - 70, txtAspirador);
}

if (current_weapon == Weapon.SWORD)
    draw_set_font(fnt_gui_big);
else
    draw_set_font(fnt_gui);

draw_text(x_, y_ - 40, txtSword);

var _p = bag_px;
var _bl = global.bag;
var _bc = array_length(_bl);

var _bx = floor((display_get_gui_width() / 2) / _p) * _p;
var _by = floor((display_get_gui_height() - bag_y) / _p) * _p;

var _bh = draw_get_halign();
var _bv = draw_get_valign();
var _bcol = draw_get_color();
var _ba = draw_get_alpha();
var _bf = draw_get_font();
var _tf = gpu_get_texfilter();
gpu_set_texfilter(false);
draw_set_alpha(1);

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

    var _has;
    if (_rel == 0)       _has = (_bc >= 1);
    else if (_ar == 1)   _has = (_rel > 0) ? (_bc >= 2) : (_bc >= 3);
    else                 _has = (_bc >= 4);

    var _pos = _rel + bag_off;
    if (abs(_pos) > 1.6) continue;

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
            if (sprite_exists(bag_slot_spr))
            {
                draw_sprite_stretched(bag_slot_spr, 0, _x1, _y1, _sz, _sz);
            }
            else
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
        }
        continue;
    }

    var _it = item_get(_bl[(((bag_sel + _rel) mod _bc) + _bc) mod _bc]);

    if (sprite_exists(bag_slot_spr))
    {
        var _fs = (_on && sprite_exists(bag_slot_sel_spr)) ? bag_slot_sel_spr : bag_slot_spr;
        draw_sprite_stretched(_fs, 0, _x1, _y1, _sz, _sz);
    }
    else if (_on)
    {
        bag_panel(_x1, _y1, _x2, _y2, _p, _accent, _sel_fill, _sel_lite, _lo);
    }
    else
    {
        bag_panel(_x1, _y1, _x2, _y2, _p, _ink, _deep, _lite, _lo);
    }

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
    var _tw = (_bc - 1) * _p * 3 + _p * 4;
    var _dx = floor((_bx - _tw / 2) / _p) * _p;
    var _dy = _by + bag_big / 2 + _p * 3;

    for (var _i = 0; _i < _bc; _i++)
    {
        var _w = (_i == bag_sel) ? _p * 4 : _p * 2;
        bag_rect(_dx - 2, _dy - 2, _dx + _w + 2, _dy + _p + 2, _ink);
        bag_rect(_dx, _dy, _dx + _w, _dy + _p, (_i == bag_sel) ? _accent : _lite);
        _dx += _w + _p;
    }
}

if (bag_name_on && _bc > 0 && abs(bag_off) < 0.3)
{
    var _name = item_get(_bl[clamp(bag_sel, 0, _bc - 1)]).name;
    draw_set_font(fnt_gui);

    var _nw = ceil((string_width(_name) + _p * 6) / _p) * _p;
    var _nh = max(_p * 6, ceil((string_height(_name) + _p * 2) / _p) * _p);
    var _nx1 = floor((_bx - _nw / 2) / _p) * _p;
    var _ny2 = _by - bag_big / 2 - _p * 3;

    bag_panel(_nx1, _ny2 - _nh, _nx1 + _nw, _ny2, _p, _ink, _deep, _lite, _lo);

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    var _tx = _nx1 + _nw / 2;
    var _ty = _ny2 - _nh / 2;
    draw_set_color(_ink);
    draw_text(_tx + 1, _ty + 1, _name);
    draw_set_color(_cream);
    draw_text(_tx, _ty, _name);
}

if (_bc > 1)
{
    var _nudge = ((current_time div 350) mod 2) * 2;
    var _aoff = bag_gap + bag_small / 2 + _p * 3;

    if (sprite_exists(bag_arrow_spr))
    {
        bag_draw_spr(bag_arrow_spr, _bx - _aoff - _nudge, _by, 1, c_white, -1);
        bag_draw_spr(bag_arrow_spr, _bx + _aoff + _nudge, _by, 1, c_white, 1);
    }
    else
    {
        bag_arrow(_bx - _aoff - _nudge + _p * 2, _by + 2, -1, _p, _ink);
        bag_arrow(_bx + _aoff + _nudge - _p * 2, _by + 2, 1, _p, _ink);
        bag_arrow(_bx - _aoff - _nudge + _p * 2, _by, -1, _p, _cream);
        bag_arrow(_bx + _aoff + _nudge - _p * 2, _by, 1, _p, _cream);
    }
}

gpu_set_texfilter(_tf);
draw_set_font(_bf);
draw_set_halign(_bh);
draw_set_valign(_bv);
draw_set_color(_bcol);
draw_set_alpha(_ba);

draw_set_font(fnt_gui);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(1);