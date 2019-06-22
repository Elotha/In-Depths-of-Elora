///Music

//argument0: scr_Volumes(argument0)

{
    if global.MusicVolume > 0 && global.MasterVolume > 0 {
        switch(room) {
            case rm_Menu:
                if !audio_is_playing(snd_MainMenu) then global.CurrentMusic = audio_play_sound(snd_MainMenu,10,true);
                break;
                
            case rm_Gist:
                if !audio_is_playing(snd_Music) then global.CurrentMusic = audio_play_sound(snd_Music,10,true);
                break;
                
            case rm_Gist2:
                if !audio_is_playing(snd_Gist2) then global.CurrentMusic = audio_play_sound(snd_Gist2,10,true);
                break;
            
            default:
                if !audio_is_playing(snd_Music) then global.CurrentMusic = audio_play_sound(snd_Music,10,true);
            }
        if argument0 != false then scr_Volumes(argument0);
        }
    else if room = rm_Menu then audio_stop_sound(snd_MainMenu);
    else if audio_is_playing(global.CurrentMusic) then audio_stop_sound(global.CurrentMusic);
}
