///Volumes

{
    switch(argument0)
        {
        case "Master":
            audio_sound_gain(global.current_music,0.7*(global.music_volume/10)*(global.master_volume/10),0);
            audio[MASTER_VOLUME] = "MASTER VOLUME: " + "<" + string(global.master_volume) + "/10" + ">";;
            break;
            
        case "Music":
            audio_sound_gain(global.current_music,0.7*(global.music_volume/10)*(global.master_volume/10),0);
            audio[MUSIC_VOLUME] = "MUSIC VOLUME: " + "<" + string(global.music_volume) + "/10" + ">";;
            break;
            
        case "Sounds":
            //audio_sound_gain(global.current_music,0.7*global.music_volume,0);
            audio[SOUNDS_VOLUME] = "SOUNDS VOLUME: " + "<" + string(global.sounds_volume) + "/10" + ">";;
            break;
            
        }
}
