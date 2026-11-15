draw_set_alpha(animacao_entrada);

if (estado_menu == "creditos") {
    draw_set_font(fnt_gui_big);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    
    // Desenha o bloco de texto inteiro subindo
    draw_text(room_width / 2, creditos_y, texto_creditos);
    
    // Dica de como voltar presa no fundo da tela
    draw_text_transformed(room_width / 2, room_height - 50, "Pressione ENTER para voltar", 0.5, 0.5, 0);
    
    draw_set_halign(-1);
    draw_set_valign(-1);
    draw_set_color(-1);
} 
else {
    // --- DESENHO NORMAL DO MENU EM ROLETA ---
    var _dia = 12.8; 
    var _itens_visiveis = 8;
    var _tam = 500 * animacao_entrada; 
    
    // --- EFEITO DE PULSO LÁTERAL ---
    // current_time / 300 = controla a velocidade 
    // * 15 = controla a distância máxima em pixels que ele vai para os lados
    var _pulso_x = sin(current_time / 300) * 15;

    for (var i = floor(pos) - _itens_visiveis; i <= floor(pos) + _itens_visiveis; i++)
    {	
        var _dir = (i - pos) * _dia;
        
        // Adiciona o _pulso_x no final do cálculo do X
        var _x = room_width - lengthdir_x(_tam, _dir) + _pulso_x; 
        var _y = room_height / 2 + (i - pos) * 150;
        
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
}

draw_set_alpha(1);