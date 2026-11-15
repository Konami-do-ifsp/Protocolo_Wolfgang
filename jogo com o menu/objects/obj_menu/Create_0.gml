estado_menu = "principal";
menu_principal = ["Jogar", "Opcoes", "Creditos", "Sair"];
menu_opcoes = ["Tela Cheia: OFF", "FPS: 60", "Volume: 100%", "Voltar"]; 

opcoes = menu_principal;
qtd_opcoes = array_length(opcoes);

tela_cheia = window_get_fullscreen();
taxa_quadros = 60;
game_set_speed(taxa_quadros, gamespeed_fps); 

volume_jogo = 1.0; 
creditos_y = room_height;
texto_creditos = "Lider\nOtavio\n\nScript\nOtavio e Tito\n\nSprites\nRafael\n\nSite\nDavi B.\n\nDocumentacao\nLian";

indice = 0; 
pos = indice; 

// --- AJUSTE DA CAIXA ---
larg_fim = 340; 
alt_fim = 220; 

larg_ini = larg_fim / 2; 
alt_ini = alt_fim / 2;

larg = larg_ini;
alt = alt_ini;

// --- AJUSTE DO TEXTO ---
scale_fim = 0.95; 
scale_ini = 0.4; 
scale_txt = scale_ini; 

animacao_entrada = 0;

if (!audio_is_playing(snd_musica_menu)) {
    audio_play_sound(snd_musica_menu, 1, true);
}