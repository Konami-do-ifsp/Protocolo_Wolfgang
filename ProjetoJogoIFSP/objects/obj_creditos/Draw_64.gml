var _gw = display_get_gui_width();
var _gh = display_get_gui_height();

draw_set_font(fnt_dialogo);
draw_set_color(c_black);
draw_rectangle(0, 0, _gw, _gh, false);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for (var c = 0; c < colunas; c++)
{
    var _x = c * tam_letra + tam_letra / 2;
    var _linha_cabeca = floor(col_y[c] / tam_letra);

    for (var k = 0; k < rastro; k++)
    {
        var _linha = _linha_cabeca - k;
        var _y = _linha * tam_letra;

        if (_y < -tam_letra || _y > _gh) continue;

        var _indice = (((col_off[c] + _linha) mod codigo_len) + codigo_len) mod codigo_len + 1;
        var _letra = string_char_at(codigo_texto, _indice);

        if (k == 0)
        {
            draw_set_color(make_color_rgb(200, 255, 200));
            draw_set_alpha(alpha * 0.9);
        }
        else
        {
            draw_set_color(c_lime);
            draw_set_alpha(alpha * 0.45 * (1 - k / rastro));
        }

        draw_text_transformed(_x, _y, _letra, escala_letra, escala_letra, 0);
    }
}

for (var i = 0; i < array_length(linhas); i++)
{
    var _texto = linhas[i];
    var _y = posicao_y + i * espacamento;

    if (_texto == "" || _y < -60 || _y > _gh + 60) continue;

    var _escala = 1;
    var _cor = c_white;

    if (string_copy(_texto, 1, 2) == "##")
    {
        _texto = string_delete(_texto, 1, 2);
        _escala = 2;
        _cor = c_orange;
    }
    else if (string_char_at(_texto, 1) == "#")
    {
        _texto = string_delete(_texto, 1, 1);
        _cor = c_yellow;
    }

    var _borda = clamp(min(_y, _gh - _y) / 120, 0, 1);
    draw_set_alpha(alpha * _borda);

    draw_set_color(c_black);
    draw_text_transformed(_gw / 2 + 2, _y + 2, _texto, _escala, _escala, 0);
    draw_set_color(_cor);
    draw_text_transformed(_gw / 2, _y, _texto, _escala, _escala, 0);
}

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);