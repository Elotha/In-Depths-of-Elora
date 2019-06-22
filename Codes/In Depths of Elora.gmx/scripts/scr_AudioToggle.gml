///Audio Toggle

//argument0: Music or Sounds

{
    if argument0 = "Master" {
        if global.MasterVolume > 0 {
            global.MasterVolumeLast = global.MasterVolume;
            global.MasterVolume = 0;
            }
        else global.MasterVolume = global.MasterVolumeLast;
        scr_Music("Master");
        ini_open(CurrentProfile + "_Config.ini");
        ini_write_real("Audio","Master",global.MasterVolume);
        ini_close();
        }
        
    if argument0 = "Music" {
        if global.MusicVolume > 0 {
            global.MusicVolumeLast = global.MusicVolume;
            global.MusicVolume = 0;
            }
        else global.MusicVolume = global.MusicVolumeLast;
        scr_Music("Music");
        ini_open(CurrentProfile + "_Config.ini");
        ini_write_real("Audio","Music",global.MusicVolume);
        ini_close();
        }
        
    if argument0 = "Sounds" {
        if global.SoundsVolume > 0 {
            global.SoundsVolumeLast = global.SoundsVolume;
            global.SoundsVolume = 0;
            if !ds_list_empty(SoundsList) {
                for(var i = 0; i < ds_list_size(SoundsList); i++) {
                    audio_stop_sound(ds_list_find_value(SoundsList,i));
                    }
                ds_list_clear(SoundsList);
                }
            }
        else global.SoundsVolume = global.SoundsVolumeLast;
        scr_Volumes("Sounds");
        ini_open(CurrentProfile + "_Config.ini");
        ini_write_real("Audio","Sounds",global.SoundsVolume);
        ini_close();
        }
}
