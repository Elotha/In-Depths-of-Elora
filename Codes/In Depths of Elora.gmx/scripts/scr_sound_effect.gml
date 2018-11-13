///Sound Effect
//
//argument0: -1 ise direkt sesi çal, 0 ise loop yok ama spriteın değişmiş olması lazım, 0'dan büyük ise kaç karede bir loop olacağı
//argument1: hangi ses efekti?
//argument2: step_count[argument2] kodu

{
    if argument0 = -1
        {
        if !audio_is_playing(argument1) then audio_play_sound(argument1,1,false);
        }
    else if argument0 = 0
        {
        if sprite_change && !audio_is_playing(argument1) then audio_play_sound(argument1,1,false);
        }
    else if argument0 > 0
        {
        if step_count[argument2] = 0
            {
            audio_play_sound(argument1,1,false);
            step_count[argument2] = argument0;
            }
        else step_count[argument2]--;
        }
}
