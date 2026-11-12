var _sala_sem_musica_geral = (room == room_luk || room == rm_creditos);

if (_sala_sem_musica_geral)
{
    if (audio_is_playing(snd_dungeon1)) audio_stop_sound(snd_dungeon1);
    if (audio_is_playing(snd_cabecao_song)) audio_stop_sound(snd_cabecao_song);
}
else
{
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