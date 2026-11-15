if (travada > 0)
{
    var _largura = display_get_gui_width();
    var _altura = display_get_gui_height();

    draw_set_alpha(0.5);

    repeat (6)
    {
        draw_set_color(choose(c_lime, c_aqua, c_fuchsia, c_white));
        var _faixa_y = random(_altura);
        draw_rectangle(0, _faixa_y, _largura, _faixa_y + irandom_range(4, 30), false);
    }

    draw_set_alpha(1);
    draw_set_color(c_white);
}