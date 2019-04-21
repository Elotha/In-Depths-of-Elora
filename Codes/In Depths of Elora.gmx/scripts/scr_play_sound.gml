///Play Sound

{
    if global.sounds_volume > 0
        {
        var snd = audio_play_sound(argument0,15,false);
        audio_sound_gain(snd,(global.sounds_volume/10)*(global.master_volume/10),0);
        }
}
