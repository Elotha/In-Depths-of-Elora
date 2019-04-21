///Volumes

{
    switch(argument0)
        {
        case "Master":
            audio_sound_gain(global.current_music,0.6*(global.music_volume/10)*(global.master_volume/10),0);
            break;
            
        case "Music":
            audio_sound_gain(global.current_music,0.6*(global.music_volume/10)*(global.master_volume/10),0);
            break;
            
        case "Sounds":
            //audio_sound_gain(global.current_music,0.6*global.music_volume,0);
            break;
            
        }
}
