if (!pausado) exit;

var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();


draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(0, 0, _gui_w, _gui_h, false);
draw_set_alpha(1.0);


var _dia = 12.8; 
var _itens_visiveis = 8;
var _tam = 500; 
var _pulso_x = sin(current_time / 300) * 15;

for (var i = floor(pos) - _itens_visiveis; i <= floor(pos) + _itens_visiveis; i++)
{	
    var _dir = (i - pos) * _dia;
    
    var _x = _gui_w - lengthdir_x(_tam, _dir) + _pulso_x; 
    var _y = _gui_h / 2 + (i - pos) * 150;
    
    var _cor = c_black;
    var _w = larg_ini;
    var _h = alt_ini;
    var _scale_atual = scale_ini;
    
    if (i == indice)
    {
        _cor = c_red;
        _w = larg;
        _h = alt;
        _scale_atual = scale_txt;
    }
    
    var _idx_texto = i % qtd_opcoes;
    if (_idx_texto < 0) _idx_texto += qtd_opcoes; 
    var _texto = opcoes_pause[_idx_texto]; 
    
    draw_sprite_stretched(tb_menu, 0, _x - _w/2, _y - _h/2, _w, _h);
    
    draw_set_font(fnt_gui_big);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_colour(_cor);
    
    draw_text_transformed(_x, _y, _texto, _scale_atual, _scale_atual, 0);
    
    draw_set_font(-1);
    draw_set_halign(-1);
    draw_set_valign(-1);
    draw_set_colour(-1);
}