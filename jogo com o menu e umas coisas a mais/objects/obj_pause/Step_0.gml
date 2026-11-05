// 1. TECLA ESC PARA PAUSAR / DESPAUSAR
if (keyboard_check_pressed(vk_escape)) {
    pausado = !pausado;
    
    if (pausado) {
        instance_deactivate_all(true); // Congela o jogo
        estado_menu = "principal";
        opcoes_pause = menu_principal;
        qtd_opcoes = array_length(opcoes_pause);
        indice = 0;
        pos = 0;
    } else {
        instance_activate_all(); // Descongela
    }
}

// 2. NAVEGAÇÃO E SELEÇÃO QUANDO PAUSADO
if (pausado) {
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

    // Atualiza os textos dinâmicos do submenu de opções
    if (estado_menu == "opcoes") {
        var _txt_tela = tela_cheia ? "Tela Cheia: ON" : "Tela Cheia: OFF";
        menu_opcoes[0] = _txt_tela;
        menu_opcoes[1] = "FPS: " + string(taxa_quadros);
        menu_opcoes[2] = "Volume: " + string(volume_jogo * 100) + "%";
        opcoes_pause = menu_opcoes;
    }

    // 3. AÇÕES AO APERTAR ENTER
    var _enter = keyboard_check_pressed(vk_enter);

    if (_enter) {
        var _escolhido = indice % qtd_opcoes;
        if (_escolhido < 0) _escolhido += qtd_opcoes;
        
        // --- MENU DE PAUSA PRINCIPAL ---
        if (estado_menu == "principal") {
            switch(_escolhido) {
                case 0: // Continuar
                    pausado = false;
                    instance_activate_all();
                    break;
                    
                case 1: // Opções
                    estado_menu = "opcoes";
                    opcoes_pause = menu_opcoes;
                    qtd_opcoes = array_length(opcoes_pause);
                    indice = 0;
                    pos = 0;
                    break;
                    
                case 2: // Menu Principal (Sair da fase)
                    pausado = false;
                    instance_activate_all(); // Descongela antes de trocar de sala
                    audio_stop_all(); // PARA A MÚSICA DO MAPA E TODOS OS SONS
                    room_goto(menu_inicial); // Manda pro menu inicial
                    break;
                    
                case 3: // Sair do jogo
                    game_end();
                    break;
            }
        }
        // --- SUBMENU DE OPÇÕES DO PAUSE ---
        else if (estado_menu == "opcoes") {
            switch(_escolhido) {
                case 0: // Tela Cheia
                    tela_cheia = !tela_cheia;
                    window_set_fullscreen(tela_cheia);
                    break;
                    
                case 1: // FPS
                    if (taxa_quadros == 60) taxa_quadros = 144;
                    else if (taxa_quadros == 144) taxa_quadros = 30;
                    else taxa_quadros = 60;
                    game_set_speed(taxa_quadros, gamespeed_fps);
                    break;
                    
                case 2: // Volume
                    volume_jogo -= 0.25;
                    if (volume_jogo < 0) volume_jogo = 1.0;
                    audio_master_gain(volume_jogo);
                    break;
                    
                case 3: // Voltar ao Menu de Pausa Principal
                    estado_menu = "principal";
                    opcoes_pause = menu_principal;
                    qtd_opcoes = array_length(opcoes_pause);
                    indice = 1; // Posiciona em cima do botão "Opções"
                    pos = 1;
                    break;
            }
        }
    }
}