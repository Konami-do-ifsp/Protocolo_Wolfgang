var _gw = display_get_gui_width();
var _gh = display_get_gui_height();

draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, _gw, _gh, false);

draw_set_color(c_lime);
repeat (300)
{
    draw_text(irandom(_gw), irandom(_gh), choose("0", "1"));
}

draw_set_alpha(1);
draw_set_color(c_white);