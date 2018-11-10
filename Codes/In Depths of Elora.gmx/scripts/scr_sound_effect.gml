///Sound Effect
//
//argument0: 0 ise loop yok, 0'dan büyük ise kaç karede bir loop olacağı
//argument1: hangi ses efekti?
//argument2: step_count[argument2] kodu

{
    if argument0 = 0
        {
        audio_play_sound(argument1,1,false);
        }
    else
        {
        if step_count[argument2] = 0
            {
            audio_play_sound(argument1,1,false);
            step_count[argument2] = argument0;
            }
        else step_count[argument2]--;
        }
}
