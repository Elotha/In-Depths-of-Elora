///Potion
//
//argument0: sound index
//argument1: image_blend
//argument2: potion_text

{
    var effect = instance_create(other.x+16,other.y+16,obj_ItemEffect);
    scr_play_sound(argument0);
    with(effect) image_blend = argument1;
    with(obj_HUD) 
        {
        ww = string_width(argument2)-32;
        
        var t = scr_potion_text_length(ww);
        if t = -1 then exit;
        
        var i = 0;
        while potion_text_full[i] != -1 
            {
            i++;
            if i = array_length_1d(potion_text_full) then break;
            }
            potion_number[i] = t;
        potion_text[i] = "";
        potion_text_full[i] = argument2;
        potion_number[i] = t;
        potion_text_length[i] = start_point[t];
        
        potion_dir[i] = true;
        count[i] = 0;
        timing[i] = 1;
        i++;
        }
}
