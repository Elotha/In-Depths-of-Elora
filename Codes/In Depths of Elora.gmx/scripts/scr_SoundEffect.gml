///Sound Effect
//
//argument0: -1 ise direkt sesi çal, 0 ise loop yok ama spriteın değişmiş olması lazım, 0'dan büyük ise kaç karede bir loop olacağı
//argument1: hangi ses efekti?
//argument2: StepCount[argument2] kodu

{
    if argument0 = -1 {
        if !audio_is_playing(argument1) then audio_play_sound(argument1,1,false);
        }
    else if argument0 = 0 {
        if SpriteChange && !audio_is_playing(argument1) then audio_play_sound(argument1,1,false);
        }
    else if argument0 > 0 {
        if StepCount[argument2] = 0 {
            audio_play_sound(argument1,1,false);
            StepCount[argument2] = argument0;
            }
        else StepCount[argument2]--;
        }
}
