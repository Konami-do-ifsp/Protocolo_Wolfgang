if (!variable_instance_exists(id, "musica_fairy_cenario1")) musica_fairy_cenario1 = false;

var _sala_sem_musica = (room == room_luk || room == rm_creditos);
var _luta_boss = (instance_exists(obj_cabecao) && obj_cabecao.aggro) || instance_exists(obj_aviso_matar);

var _construindo_fairy = instance_exists(obj_fairy_invocada);
var _dialogo_fairy = false;

if (instance_exists(obj_dialogue) && obj_dialogue.active)
{
    for (var i = 0; i < array_length(obj_dialogue.dialogue); i++)
    {
        if (obj_dialogue.dialogue[i].speaker == "fairy")
        {
            _dialogo_fairy = true;
            break;
        }
    }
}

// Ativa só no cenario1 e mantém tocando até o John sair da sala (entrar na dungeon)
if (room == cenario1)
{
    if (_construindo_fairy || _dialogo_fairy)
    {
        musica_fairy_cenario1 = true;
    }
}
else
{
    musica_fairy_cenario1 = false;
}

var _musica_desejada = noone;

if (!_sala_sem_musica)
{
    if (room == room_first)
    {
        _musica_desejada = snd_musica_menu;
    }
    else if (room == rm_intro)
    {
        _musica_desejada = snd_cenario1;
    }
    else if (musica_fairy_cenario1)
    {
        _musica_desejada = snd_dialogo_fairy1;
    }
    else if (_luta_boss)
    {
        _musica_desejada = snd_cabecao_song;
    }
    else if (room == cenario1)
    {
        _musica_desejada = snd_cenario1;
    }
    else if (room == dungeon2)
    {
        _musica_desejada = snd_dungeon2;
    }
    else
    {
        _musica_desejada = snd_dungeon1;
    }
}

if (music_playing != _musica_desejada)
{
    audio_stop_all();

    if (_musica_desejada != noone)
    {
        audio_play_sound(_musica_desejada, 1, true);
    }

    music_playing = _musica_desejada;
}

if (global.hitstop > 0) {
    global.hitstop -= 1;
}

if (room == room_luk) {
    global.podeglitch = true;
    global._tem_aspirador = true;
}