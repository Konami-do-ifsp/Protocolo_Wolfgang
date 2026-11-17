var _sala_sem_musica = (room == room_luk || room == rm_creditos);
var _luta_boss = instance_exists(obj_cabecao) && obj_cabecao.aggro;


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

var _fairy_ativo = _construindo_fairy || _dialogo_fairy;
var _musica_desejada = noone;


if (!_sala_sem_musica)
{
    if (_fairy_ativo)
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