///Potion

//argument0: sound index
//argument1: image_blend
//argument2: PotionText

{
    var Effect = instance_create(other.x+16,other.y+16,obj_ItemEffect);
    scr_PlaySound(argument0);
    with(Effect) image_blend = argument1;
    with(obj_HUD)  {
        ww = string_width(argument2)-32;
        
        var t = scr_PotionTextLength(ww);
        if t = -1 then exit;
        
        var i = 0;
        while PotionTextFull[i] != -1 {
            i++;
            if i = array_length_1d(PotionTextFull) then break;
            }
        PotionNumber[i] = t;
        PotionText[i] = "";
        PotionTextFull[i] = argument2;
        PotionTextLength[i] = StartPoint[t];
        
        PotionDir[i] = true;
        Count[i] = 0;
        Timing[i] = 1;
        i++;
        }
}
