///String Length

//argument0: number of everything

{
    if PotionDir[argument0] {
        if string_length(PotionText[argument0]) != string_length(PotionTextFull[argument0]) {
            Count[argument0]++;
            PotionText[argument0] = string_copy(PotionTextFull[argument0],1,Count[argument0]);
            Timing[argument0] = 1;
            }
        else  {
            PotionDir[argument0] = !PotionDir[argument0];
            Timing[argument0] = room_speed*1.5;
            }
        }
    else {
        if string_length(PotionText[argument0]) != 0 || PotionText[argument0] != "" {
            Count[argument0]--;
            PotionText[argument0] = string_copy(PotionTextFull[argument0],0,Count[argument0]);
            Timing[argument0] = 1;
            }
        else {
            PotionText[argument0] = -1;
            PotionTextFull[argument0] = -1;
            PotionTextLength[argument0] = -1;
            Length[PotionNumber[argument0]] = 0;
            var Check = true;
            for(var c = 0; c < array_length_1d(Length); c++) {
                if Length != 0 then Check = false;
                }
            if Check {
                for(var b = 0; b < array_length_1d(StartPoint); b++) {
                    StartPoint[b] = 0;
                    }
                }
            }
        
        }
}
