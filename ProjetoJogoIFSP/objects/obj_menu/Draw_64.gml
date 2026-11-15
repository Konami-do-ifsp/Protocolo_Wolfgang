var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

draw_set_alpha(animacao_entrada);

if (estado_menu == "creditos") {
    draw_set_font(fnt_gui_big);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    
    draw_text(_gui_w / 2, creditos_y, texto_creditos);
    draw_text_transformed(_gui_w / 2, _gui_h - 50, "Pressione ENTER para voltar", 0.5, 0.5, 0);
    
    draw_set_halign(-1);
    draw_set_valign(-1);
    draw_set_color(-1);
} 
else {
    // --- DESENHO NORMAL DO MENU EM ROLETA ---
    var _dia = 12.8; 
    var _itens_visiveis = 8;
    var _tam = 420 * animacao_entrada; 
    
    var _pulso_x = sin(current_time / 300) * 15;

    for (var i = floor(pos) - _itens_visiveis; i <= floor(pos) + _itens_visiveis; i++)
    {	
        var _dir = (i - pos) * _dia;
        
        var _x = (_gui_w + 100) - lengthdir_x(_tam, _dir) + _pulso_x; 
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
        var _texto = opcoes[_idx_texto]; 
        
        // Desenha a caixa do botão
        draw_sprite_stretched(tb_menu, 0, _x - _w/2, _y - _h/2, _w, _h);
        
        draw_set_font(fnt_gui_big);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_colour(_cor);
        
        // --- ESCALA DINÂMICA (Evita que textos longos saiam da caixa) ---
        var _largura_texto_px = string_width(_texto) * _scale_atual;
        var _largura_maxima = _w * 0.8; // Deixa 10% de margem em cada lado da caixa
        var _scale_final = _scale_atual;
        
        if (_largura_texto_px > _largura_maxima) {
            _scale_final = _scale_atual * (_largura_maxima / _largura_texto_px);
        }
        
        draw_text_transformed(_x, _y, _texto, _scale_final, _scale_final, 0);
        
        draw_set_font(-1);
        draw_set_halign(-1);
        draw_set_valign(-1);
        draw_set_colour(-1);
    }
}

draw_set_alpha(1);

// --- DESENHO DA LOGO ---
if (estado_menu == "principal") {
    var _logo_x = _gui_w * 0.32; 
    
    var _flutuar_y = sin(current_time / 350) * 8;
    var _logo_y = (_gui_h * 0.45) + _flutuar_y; 
    
    var _pulso_scale = sin(current_time / 500) * 0.02; 
    var _scale_base = 0.62; 
    var _scale = (_scale_base + _pulso_scale) * animacao_entrada; 
    
    var _alpha = animacao_entrada;
    
    draw_sprite_ext(Sprite_logo, -1, _logo_x, _logo_y, _scale, _scale, 0, c_white, _alpha);
}