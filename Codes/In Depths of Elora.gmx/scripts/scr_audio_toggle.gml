///Audio Toggle

//argument0: Music or Sounds

{
    if argument0 = "Master"
        {
        if global.master_volume > 0
            {
            global.master_volume_last = global.master_volume;
            global.master_volume = 0;
            scr_music();
            }
        else global.master_volume = global.master_volume_last;
        scr_music();
        scr_volumes("Master");
        ini_open(current_profile + "_config.ini");
        ini_write_real("Audio","Master",global.master_volume);
        ini_close();
        }
        
    if argument0 = "Music"
        {
        if global.music_volume > 0
            {
            global.music_volume_last = global.music_volume;
            global.music_volume = 0;
            }
        else global.music_volume = global.music_volume_last;
        scr_music();
        scr_volumes("Music");
        ini_open(current_profile + "_config.ini");
        ini_write_real("Audio","Music",global.music_volume);
        ini_close();
        }
        
    if argument0 = "Sounds"
        {
        if global.sounds_volume > 0
            {
            global.sounds_volume_last = global.sounds_volume;
            global.sounds_volume = 0;
            }
        else global.sounds_volume = global.sounds_volume_last;
        scr_volumes("Sounds");
        ini_open(current_profile + "_config.ini");
        ini_write_real("Audio","Sounds",global.sounds_volume);
        ini_close();
        }
}
