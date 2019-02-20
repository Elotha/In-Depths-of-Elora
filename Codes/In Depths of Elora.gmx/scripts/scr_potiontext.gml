///String Length
//
//argument0: number of everything

{
    if potion_dir[argument0]
        {
        if string_length(potion_text[argument0]) != string_length(potion_text_full[argument0])
            {
            count[argument0]++;
            potion_text[argument0] = string_copy(potion_text_full[argument0],1,count[argument0]);
            timing[argument0] = 1;
            }
        else 
            {
            potion_dir[argument0] = !potion_dir[argument0];
            timing[argument0] = room_speed*1.5;
            }
        }
    else
        {
        if string_length(potion_text[argument0]) != 0 || potion_text[argument0] != ""
            {
            count[argument0]--;
            potion_text[argument0] = string_copy(potion_text_full[argument0],0,count[argument0]);
            timing[argument0] = 1;
            }
        else
            {
            potion_text[argument0] = -1;
            potion_text_full[argument0] = -1;
            potion_text_length[argument0] = -1;
            length[potion_number[argument0]] = 0;
            var check = true;
            for(var c = 0; c < array_length_1d(length); c++)
                {
                if length != 0 then check = false;
                }
            if check
                {
                for(var b = 0; b < array_length_1d(start_point); b++)
                    {
                    start_point[b] = 0;
                    }
                }
            }
        
        }
}
