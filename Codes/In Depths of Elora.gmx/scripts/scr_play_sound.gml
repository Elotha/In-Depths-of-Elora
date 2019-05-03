///Play Sound

{
    if global.sounds_volume > 0
        {
        var snd = audio_play_sound(argument0,15,false);
        ds_list_add(sounds_list,snd);
        with(obj_Audio) if alarm[0] = -1 then alarm[0] = 60;
        audio_sound_gain(snd,(global.sounds_volume/10)*(global.master_volume/10),0);
        }
}
