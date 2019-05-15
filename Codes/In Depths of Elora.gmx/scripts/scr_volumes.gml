///Volumes

{
    switch(argument0)
        {
        case "Master":
            if audio_is_playing(global.current_music) then audio_sound_gain(global.current_music,0.7*(global.music_volume/10)*(global.master_volume/10),0);
            audio[MASTER_VOLUME] = "MASTER VOLUME: " + "<" + string(global.master_volume) + "/10" + ">";;
            break;
            
        case "Music":
            if audio_is_playing(global.current_music) then audio_sound_gain(global.current_music,0.7*(global.music_volume/10)*(global.master_volume/10),0);
            audio[MUSIC_VOLUME] = "MUSIC VOLUME: " + "<" + string(global.music_volume) + "/10" + ">";;
            break;
            
        case "Sounds":
            audio[SOUNDS_VOLUME] = "SOUNDS VOLUME: " + "<" + string(global.sounds_volume) + "/10" + ">";;
            break;
            
        }
}
