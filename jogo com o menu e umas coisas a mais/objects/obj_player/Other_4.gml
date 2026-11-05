if (room == cenario1) {
    if (audio_is_playing(snd_dungeon1)) {
        audio_stop_sound(snd_dungeon1);
    }
    

    
   
    if (!audio_is_playing(msc_cenario1)) { 
        audio_play_sound(msc_cenario1, 1, true);
    }
}

if (room == cenario1) {
    spd = 2;
} else {
    spd = 4; 
}