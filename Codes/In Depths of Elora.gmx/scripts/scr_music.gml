///Music

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
    audio_sound_gain(global.current_music,0.6,0);
}
