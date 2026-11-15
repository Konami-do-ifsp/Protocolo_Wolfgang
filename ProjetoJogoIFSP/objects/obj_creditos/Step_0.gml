alpha = min(alpha + 0.02, 1);

var _vel = keyboard_check(vk_space) ? velocidade * 4 : velocidade;

if (posicao_y > y_parada) posicao_y = max(y_parada, posicao_y - _vel);
else terminou = true;

for (var c = 0; c < colunas; c++)
{
    col_y[c] += col_vel[c];

    if (col_y[c] - rastro * tam_letra > altura_gui)
    {
        col_y[c] = irandom_range(-300, 0);
        col_vel[c] = random_range(2, 6);
        col_off[c] = irandom(codigo_len - 1);
    }
}

if (terminou)
{
    espera_final--;

    if (espera_final <= 0)
    {
        audio_stop_sound(snd_musica_creditos);
        room_goto(menu_inicial);
    }
}