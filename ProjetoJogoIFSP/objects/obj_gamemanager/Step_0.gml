var _sala_menu = (room == menu_inicial);
var _sala_sem_musica_geral = (_sala_menu || room == room_luk || room == rm_creditos);
var _sala_inicio = (room == rm_intro || room == cenario1);

if (_sala_sem_musica_geral)
{
    if (audio_is_playing(snd_dungeon1)) audio_stop_sound(snd_dungeon1);
    if (audio_is_playing(snd_cabecao_song)) audio_stop_sound(snd_cabecao_song);
    if (audio_is_playing(snd_musica_inicio)) audio_stop_sound(snd_musica_inicio);
}
else if (_sala_inicio)
{
    if (audio_is_playing(snd_musica_menu)) audio_stop_sound(snd_musica_menu);
    if (audio_is_playing(snd_dungeon1)) audio_stop_sound(snd_dungeon1);
    if (audio_is_playing(snd_cabecao_song)) audio_stop_sound(snd_cabecao_song);

    if (!audio_is_playing(snd_musica_inicio))
        audio_play_sound(snd_musica_inicio, 1, true);
}
else
{
    if (audio_is_playing(snd_musica_menu)) audio_stop_sound(snd_musica_menu);
    if (audio_is_playing(snd_musica_inicio)) audio_stop_sound(snd_musica_inicio);

    var _luta_boss = instance_exists(obj_cabecao) && obj_cabecao.aggro;

    if (_luta_boss)
    {
        if (audio_is_playing(snd_dungeon1)) audio_stop_sound(snd_dungeon1);

        if (!audio_is_playing(snd_cabecao_song))
            audio_play_sound(snd_cabecao_song, 2, true);
    }
    else
    {
        if (audio_is_playing(snd_cabecao_song)) audio_stop_sound(snd_cabecao_song);

        if (!audio_is_playing(snd_dungeon1))
            audio_play_sound(snd_dungeon1, 1, true);
    }
}

if (global.hitstop > 0) {
    global.hitstop -= 1;
}

if (room == room_luk) {
    global.podeglitch = true;
    global._tem_aspirador = true;
}