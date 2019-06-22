///Play Sound

{
    if global.SoundsVolume > 0 {
        var Snd = audio_play_sound(argument0,15,false);
        ds_list_add(SoundsList,Snd);
        with(obj_Audio) if alarm[0] = -1 then alarm[0] = 60;
        audio_sound_gain(Snd,(global.SoundsVolume/10)*(global.MasterVolume/10),0);
        }
}
