///Music

{
    if global.music_volume > 0 && global.master_volume > 0
        {
        switch(room)
            {
            case rm_Menu:
                global.current_music = audio_play_sound(snd_MainMenu,10,true);
                break;
                
            case rm_Gist:
                global.current_music = audio_play_sound(snd_Music,10,true);
                break;
                
            case rm_Gist2:
                global.current_music = audio_play_sound(snd_Gist2,10,true);
                break;
            
            default:
                global.current_music = audio_play_sound(snd_Music,10,true);
                
            }
        audio_sound_gain(global.current_music,0.7*(global.music_volume/10)*(global.master_volume/10),0);
        }
    else audio_stop_sound(global.current_music);
    if room = rm_Menu then audio[MUSIC_VOLUME] = "MUSIC VOLUME: " + "<" + string(global.music_volume) + "/10" + ">";
}
