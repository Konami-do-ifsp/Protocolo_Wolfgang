pausado = false;
estado_menu = "principal"; 

// listas de opcoees
menu_principal = ["Continuar", "Opcoes", "Menu Principal", "Sair"];
menu_opcoes = ["Tela Cheia: OFF", "FPS: 60", "Volume: 100%", "Voltar"];

opcoes_pause = menu_principal;
qtd_opcoes = array_length(opcoes_pause);

//cConfigurações do jogo
tela_cheia = window_get_fullscreen();
taxa_quadros = 60;
volume_jogo = 1.0;

// posicionamento e tamanho
indice = 0; 
pos = indice; 

larg_fim = 350; 
alt_fim = 220;
larg_ini = larg_fim / 2; 
alt_ini = alt_fim / 2;

larg = larg_ini;
alt = alt_ini;
scale_fim = 0.95;       
scale_ini = 0.4; 
scale_txt = scale_ini;