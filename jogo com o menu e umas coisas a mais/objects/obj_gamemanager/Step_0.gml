if(!audio_is_playing(snd_dungeon1)){
	audio_play_sound(snd_dungeon1, 1, true);
}
if (global.hitstop > 0) {
    global.hitstop -= 1;
}