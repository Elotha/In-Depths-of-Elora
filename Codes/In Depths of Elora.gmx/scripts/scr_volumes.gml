///Volumes

{
    switch(argument0) {
        case "Master":
            if audio_is_playing(global.CurrentMusic) then audio_sound_gain(global.CurrentMusic,0.7*(global.MusicVolume/10)*(global.MasterVolume/10),0);
            with(obj_MainMenu) Audio[EnumAudio.Master] = "MASTER VOLUME: " + "<" + string(global.MasterVolume) + "/10" + ">";;
            break;
            
        case "Music":
            if audio_is_playing(global.CurrentMusic) then audio_sound_gain(global.CurrentMusic,0.7*(global.MusicVolume/10)*(global.MasterVolume/10),0);
            with(obj_MainMenu) Audio[EnumAudio.Music] = "MUSIC VOLUME: " + "<" + string(global.MusicVolume) + "/10" + ">";;
            break;
            
        case "Sounds":
            with(obj_MainMenu) Audio[EnumAudio.Sounds] = "SOUNDS VOLUME: " + "<" + string(global.SoundsVolume) + "/10" + ">";;
            break;
            
        }
}
