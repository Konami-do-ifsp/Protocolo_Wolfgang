animacao_entrada = lerp(animacao_entrada, 1, 0.1); 

//TELA DE CREDITOS
if (estado_menu == "creditos") {
    creditos_y -= 1.5; 
    
    
    if (keyboard_check_pressed(vk_enter)) {
        estado_menu = "principal";
        opcoes = menu_principal;
        qtd_opcoes = array_length(opcoes);
        indice = 2; 
        pos = 2;
        animacao_entrada = 0; 
    }
} 

else {
    var _up = keyboard_check_pressed(vk_up);
    var _down = keyboard_check_pressed(vk_down);
    var _input = _down - _up;

    if (_input != 0) {
        indice = indice + _input;
        larg = larg_ini;
        alt = alt_ini;
        scale_txt = scale_ini; 
    }

    pos = lerp(pos, indice, 0.1);
    var _fazer = (abs(pos - indice) < 0.1); 

    if (_fazer) {
        larg = lerp(larg, larg_fim, 0.3);
        scale_txt = lerp(scale_txt, scale_fim, 0.3);
    }
    if (larg > larg_fim - 2) {
        alt = lerp(alt, alt_fim, 0.1);
    }

    if (estado_menu == "opcoes") {
        var _txt_tela = tela_cheia ? "Tela Cheia: ON" : "Tela Cheia: OFF";
        menu_opcoes[0] = _txt_tela;
        menu_opcoes[1] = "FPS: " + string(taxa_quadros);
        menu_opcoes[2] = "Volume: " + string(volume_jogo * 100) + "%";
        opcoes = menu_opcoes; 
    }

    var _enter = keyboard_check_pressed(vk_enter);

    if (_enter) {
        var _escolhido = indice % qtd_opcoes;
        if (_escolhido < 0) _escolhido += qtd_opcoes;
        
        if (estado_menu == "principal") {
            switch(_escolhido) {
                case 0: 
                    audio_stop_sound(snd_musica_menu); 
                    room_goto(rm_intro)
                    break;
                case 1: 
                    estado_menu = "opcoes";
                    opcoes = menu_opcoes;
                    qtd_opcoes = array_length(opcoes);
                    indice = 0; 
                    pos = 0;
                    animacao_entrada = 0;
                    break;
                case 2: 
                    estado_menu = "creditos";
                    creditos_y = display_get_gui_height(); 
                    animacao_entrada = 0;
                    break;
                case 3: 
                    game_end();
                    break;
            }
        }
        else if (estado_menu == "opcoes") {
            switch(_escolhido) {
                case 0: 
                    tela_cheia = !tela_cheia;
                    window_set_fullscreen(tela_cheia);
                    break;
                case 1: 
                    if (taxa_quadros == 60) taxa_quadros = 144;
                    else if (taxa_quadros == 144) taxa_quadros = 30;
                    else taxa_quadros = 60;
                    game_set_speed(taxa_quadros, gamespeed_fps); 
                    break;
                case 2: 
                    volume_jogo -= 0.25;
                    if (volume_jogo < 0) volume_jogo = 1.0;
                    audio_master_gain(volume_jogo); 
                    break;
                case 3: 
                    estado_menu = "principal";
                    opcoes = menu_principal;
                    qtd_opcoes = array_length(opcoes);
                    indice = 1; 
                    pos = 1;
                    animacao_entrada = 0;
                    break;
            }
        }
    }
}