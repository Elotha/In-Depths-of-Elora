///Music

{
    if global.music_volume > 0 && global.master_volume > 0
        {
        switch(room)
            {
            case rm_Menu:
                if !audio_is_playing(snd_MainMenu) then global.current_music = audio_play_sound(snd_MainMenu,10,true);
                break;
                
            case rm_Gist:
                if !audio_is_playing(snd_Music) then global.current_music = audio_play_sound(snd_Music,10,true);
                break;
                
            case rm_Gist2:
                if !audio_is_playing(snd_Gist2) then global.current_music = audio_play_sound(snd_Gist2,10,true);
                break;
            
            default:
                if !audio_is_playing(snd_Music) then global.current_music = audio_play_sound(snd_Music,10,true);
                
            }
        }
    else if room = rm_Menu then audio_stop_sound(snd_MainMenu);
    else if audio_is_playing(global.current_music) then audio_stop_sound(global.current_music);
}
