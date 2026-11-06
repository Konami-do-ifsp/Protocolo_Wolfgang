font = -1;   
var _old = draw_get_font();
draw_set_font(font);
lh = string_height("Ag") + 4;
draw_set_font(_old);

mx = 0;
my = 0;
rep = {};
blink = 0;
moved = true;

if (variable_global_exists("editor_code")) lines = global.editor_code;
else lines = [
    "// Exemplo em MiniC",
    "int soma = 0;",
    "for (int i = 1; i <= 5; i++) {",
    "    soma += i;",
    "}",
    "print(\"Soma =\", soma);"
];

cur_row = array_length(lines) - 1;
cur_col = string_length(lines[cur_row]);
ed_scroll = 0;
hscroll = 0;

term = [{ txt: "Clique em Rodar (ou aperte F5) para executar o código.", err: false, dim: true }];
term_scroll = 0;

keyboard_string = "";


kp = function(_k)
{
    var _key = string(_k);
    if (keyboard_check_pressed(_k)) { rep[$ _key] = 0; return true; }
    if (keyboard_check(_k))
    {
        var _t = variable_struct_exists(rep, _key) ? rep[$ _key] + 1 : 1;
        rep[$ _key] = _t;
        return (_t > 20 && (_t mod 2 == 0));
    }
    return false;
};


ed_insert = function(_txt)
{
    var _line = lines[cur_row];
    lines[cur_row] = string_copy(_line, 1, cur_col) + _txt + string_delete(_line, 1, cur_col);
    cur_col += string_length(_txt);
};

ed_newline = function(_indent)
{
    var _line = lines[cur_row];
    var _before = string_copy(_line, 1, cur_col);
    var _after = string_delete(_line, 1, cur_col);
    var _ind = "";

    if (_indent)
    {
        var _i = 1;
        while (_i <= string_length(_before) && string_char_at(_before, _i) == " ") { _ind += " "; _i++; }

        
        var _k = string_length(_before);
        while (_k > 0 && string_char_at(_before, _k) == " ") _k--;
        if (_k > 0 && string_char_at(_before, _k) == "{") _ind += "    ";
    }

    lines[cur_row] = _before;
    array_insert(lines, cur_row + 1, _ind + _after);
    cur_row++;
    cur_col = string_length(_ind);
};

ed_paste = function(_txt)
{
    _txt = string_replace_all(_txt, "\r", "");
    for (var _i = 1; _i <= string_length(_txt); _i++)
    {
        var _c = string_char_at(_txt, _i);
        if (_c == "\n") ed_newline(false);
        else if (_c == "\t") ed_insert("    ");
        else if (ord(_c) >= 32) ed_insert(_c);
    }
};


run_code = function()
{
    var _src = "";
    for (var i = 0; i < array_length(lines); i++) _src += lines[i] + "\n";

    term = mc_run(_src);
    array_push(term, { txt: "--- execução finalizada ---", err: false, dim: true });
    term_scroll = max(0, array_length(term) - term_rows);
};


calc_layout = function()
{
    var _gw = display_get_gui_width();
    var _gh = display_get_gui_height();

    pw = floor(_gw * 0.8);
    ph = floor(_gh * 0.86);
    px = (_gw - pw) div 2;
    py = (_gh - ph) div 2;
    title_h = 32;
    tool_h = 36;
    gutter = 44;

    close_x1 = px + pw - 30; close_y1 = py + 5; close_x2 = px + pw - 6; close_y2 = py + title_h - 5;

    run_x1 = px + 10;       run_y1 = py + title_h + 5; run_x2 = run_x1 + 90;   run_y2 = py + title_h + tool_h - 5;
    clear_x1 = run_x2 + 8;  clear_y1 = run_y1;         clear_x2 = clear_x1 + 150; clear_y2 = run_y2;

    var _top = py + title_h + tool_h;
    var _body = ph - title_h - tool_h - 10;

    ed_x1 = px + 10; ed_y1 = _top; ed_x2 = px + pw - 10; ed_y2 = _top + floor(_body * 0.6);
    term_x1 = ed_x1; term_y1 = ed_y2 + 8; term_x2 = ed_x2; term_y2 = py + ph - 10;

    term_head = lh + 6;
    ed_rows = max(1, floor((ed_y2 - ed_y1 - 8) / lh));
    term_rows = max(1, floor((term_y2 - term_y1 - term_head - 6) / lh));
};

draw_btn = function(_x1, _y1, _x2, _y2, _label, _col)
{
    var _hover = point_in_rectangle(mx, my, _x1, _y1, _x2, _y2);
    draw_set_color(_hover ? merge_color(_col, c_white, 0.25) : _col);
    draw_rectangle(_x1, _y1, _x2, _y2, false);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text((_x1 + _x2) / 2, (_y1 + _y2) / 2, _label);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
};

calc_layout();