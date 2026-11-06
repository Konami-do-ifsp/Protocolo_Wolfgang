mx = device_mouse_x_to_gui(0);
my = device_mouse_y_to_gui(0);
blink++;


if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mx, my, close_x1, close_y1, close_x2, close_y2))
{
    instance_destroy();
    exit;
}

var _old_font = draw_get_font();
draw_set_font(font);


if (mouse_check_button_pressed(mb_left))
{
    if (point_in_rectangle(mx, my, run_x1, run_y1, run_x2, run_y2))
    {
        run_code();
    }
    else if (point_in_rectangle(mx, my, clear_x1, clear_y1, clear_x2, clear_y2))
    {
        term = [];
        term_scroll = 0;
    }
    else if (point_in_rectangle(mx, my, ed_x1, ed_y1, ed_x2, ed_y2))
    {
        
        cur_row = clamp(ed_scroll + floor((my - ed_y1 - 4) / lh), 0, array_length(lines) - 1);
        var _line = lines[cur_row];
        var _n = string_length(_line);
        var _rel = mx - (ed_x1 + gutter + 4);
        var _col = hscroll;
        while (_col < _n)
        {
            var _w0 = string_width(string_copy(_line, hscroll + 1, _col - hscroll));
            var _w1 = string_width(string_copy(_line, hscroll + 1, _col - hscroll + 1));
            if (_rel < (_w0 + _w1) / 2) break;
            _col++;
        }
        cur_col = _col;
        moved = true;
    }
}

if (keyboard_check_pressed(vk_f5)) run_code();


var _wheel = mouse_wheel_down() - mouse_wheel_up();
if (_wheel != 0)
{
    if (point_in_rectangle(mx, my, ed_x1, ed_y1, ed_x2, ed_y2))
        ed_scroll = clamp(ed_scroll + _wheel * 3, 0, max(0, array_length(lines) - ed_rows));
    else if (point_in_rectangle(mx, my, term_x1, term_y1, term_x2, term_y2))
        term_scroll = clamp(term_scroll + _wheel * 3, 0, max(0, array_length(term) - term_rows));
}


var _typed = keyboard_string;
keyboard_string = "";
for (var _i = 1; _i <= string_length(_typed); _i++)
{
    var _ch = string_char_at(_typed, _i);
    if (ord(_ch) < 32) continue;

    if (_ch == "}")
    {
        
        var _bef = string_copy(lines[cur_row], 1, cur_col);
        if (string_length(_bef) >= 4 && string_replace_all(_bef, " ", "") == "")
        {
            lines[cur_row] = string_delete(lines[cur_row], cur_col - 3, 4);
            cur_col -= 4;
        }
    }

    ed_insert(_ch);
    moved = true;
}

if (kp(vk_enter)) { ed_newline(true); moved = true; }

if (keyboard_check_pressed(vk_tab)) { ed_insert("    "); moved = true; }

if (kp(vk_backspace))
{
    if (cur_col > 0)
    {
        lines[cur_row] = string_delete(lines[cur_row], cur_col, 1);
        cur_col--;
    }
    else if (cur_row > 0)
    {
        var _prev = string_length(lines[cur_row - 1]);
        lines[cur_row - 1] += lines[cur_row];
        array_delete(lines, cur_row, 1);
        cur_row--;
        cur_col = _prev;
    }
    moved = true;
}

if (kp(vk_delete))
{
    if (cur_col < string_length(lines[cur_row]))
    {
        lines[cur_row] = string_delete(lines[cur_row], cur_col + 1, 1);
    }
    else if (cur_row < array_length(lines) - 1)
    {
        lines[cur_row] += lines[cur_row + 1];
        array_delete(lines, cur_row + 1, 1);
    }
    moved = true;
}

if (kp(vk_left))
{
    if (cur_col > 0) cur_col--;
    else if (cur_row > 0) { cur_row--; cur_col = string_length(lines[cur_row]); }
    moved = true;
}
if (kp(vk_right))
{
    if (cur_col < string_length(lines[cur_row])) cur_col++;
    else if (cur_row < array_length(lines) - 1) { cur_row++; cur_col = 0; }
    moved = true;
}
if (kp(vk_up))
{
    if (cur_row > 0) { cur_row--; cur_col = min(cur_col, string_length(lines[cur_row])); }
    moved = true;
}
if (kp(vk_down))
{
    if (cur_row < array_length(lines) - 1) { cur_row++; cur_col = min(cur_col, string_length(lines[cur_row])); }
    moved = true;
}
if (keyboard_check_pressed(vk_home)) { cur_col = 0; moved = true; }
if (keyboard_check_pressed(vk_end))  { cur_col = string_length(lines[cur_row]); moved = true; }


if (keyboard_check(vk_control) && keyboard_check_pressed(ord("V")) && clipboard_has_text())
{
    ed_paste(clipboard_get_text());
    moved = true;
}

if (moved)
{
    moved = false;
    blink = 0;

    if (cur_row < ed_scroll) ed_scroll = cur_row;
    if (cur_row >= ed_scroll + ed_rows) ed_scroll = cur_row - ed_rows + 1;

    var _lw = ed_x2 - ed_x1 - gutter - 16;
    if (cur_col < hscroll) hscroll = cur_col;
    while (hscroll < cur_col && string_width(string_copy(lines[cur_row], hscroll + 1, cur_col - hscroll)) > _lw) hscroll++;
}

draw_set_font(_old_font);