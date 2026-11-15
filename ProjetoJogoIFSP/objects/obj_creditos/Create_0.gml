linhas = [
    "", "", "", "", "", "",
    "",
    "Um jogo feito por",
    "",
    "",
    "#Equipe",
    "Tito Jandozza Batista",
    "Rafael Bergson Lima",
    "Otavio Augusto Oliveira Shigeura da Silva",
    "Davi Nascimento Bayer",
    "Lian Matias de Oliveira Felipe",
    "",
    "",
    "#Liderança do Grupo",
    "Otavio Augusto Oliveira Shigeura da Silva",
    "",
    "",
    "#Programação",
    "Tito Jandozza Batista",
    "Otavio Augusto Oliveira Shigeura da Silva",
    "",
    "",
    "#História",
    "Rafael Bergson Lima",
    "",
    "",
    "#Arte",
    "Rafael Bergson Lima",
    "",
    "",
    "#Site",
    "Davi Nascimento Bayer",
    "",
    "",
    "#Documentação",
    "Lian Matias de Oliveira Felipe",
    "",
    "",
    "#Personagens",
    "John",
    "Luk",
    "Sr. Mateus",
    "Fairy",
    "Cabecão",
    "",
    "",
    "#Feito com",
    "GameMaker",
    "",
    "",
    "#Agradecimentos",
    "A todos que jogaram",
    "",
    "",
    "##Obrigado por jogar!"
];

espacamento = 60;
duracao = 60;
altura_gui = display_get_gui_height();

posicao_y = altura_gui;
y_parada = altura_gui / 2 - (array_length(linhas) - 1) * espacamento;
velocidade = (posicao_y - y_parada) / (duracao * game_get_speed(gamespeed_fps));

alpha = 0;
terminou = false;
espera_final = game_get_speed(gamespeed_fps) * 4;


codigo = [
    "if (global.hitstop > 0) exit;",
    "mask_index = spr_player_mask;",
    "global._tem_aspirador = true;",
    "function get_dialogue(_id)",
    "obj_dialogue.start_lines(get_dialogue(\"fairy_intro\"), \"fairy\");",
    "bag_add(item_id);",
    "global.baus_abertos[$ item_id] = true;",
    "state = state_pull_aspirador;",
    "hspd = lengthdir_x(spd, _direcao);",
    "vspd = lengthdir_y(spd, _direcao);",
    "if (hp <= 0 && !exploding) state = state_explode;",
    "instance_create_layer(x, y + 20, \"Effects\", obj_particles_wlk);",
    "global.item_order = [cpu, ssd, RAm, Placa_mae];",
    "if (animation_end()) { attacking = false; state = state_idle; }",
    "audio_play_sound(snd_walking, 1, true);",
    "function bag_selected(_id)",
    "var _near = instance_nearest(x, y, _obj);",
    "z = sin(_p * pi) * jump_height;",
    "x = lerp(start_x, target_x, _p);",
    "y = lerp(start_y, target_y, _p);",
    "hp_anim = lerp(hp_anim, hp, 0.1);",
    "room_goto(global.ultima_sala);",
    "draw_sprite_ext(sprite_index, image_index, x, y - z, face * sx, sy, 0, image_blend, image_alpha);",
    "with (obj_camera) { shake = 8; shake_time = 24; }"
];

codigo_texto = "";
for (var i = 0; i < array_length(codigo); i++) codigo_texto += codigo[i];
codigo_texto = string_replace_all(codigo_texto, " ", "");
codigo_len = string_length(codigo_texto);

tam_letra = 18;
escala_letra = 0.6;
rastro = 14;
colunas = floor(display_get_gui_width() / tam_letra);

col_y = array_create(colunas);
col_vel = array_create(colunas);
col_off = array_create(colunas);

for (var c = 0; c < colunas; c++)
{
    col_y[c] = random_range(-altura_gui, altura_gui);
    col_vel[c] = random_range(2, 6);
    col_off[c] = irandom(codigo_len - 1);
}

logo_frame = 0;