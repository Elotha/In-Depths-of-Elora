///Last Dialogues

{
    display_set_gui_size(view_wport[0],view_hport[0]);
    draw_set_font(fnt_AchievementDescription);
    
    var d;
    if dialogues_ypoints != -1 //Dialogues
        {
        for(d = 0; d < array_length_1d(dialogues_ypoints); d++)
            {
            draw_text_colour(view_wport[0]/2-270,dialogues_ypoints[d],last_dialogues[d+last_dialogues_offset],c_black,c_black,c_black,c_black,journal_alpha);
            }
        }
    if lines_ypoints != -1 //Lines
        {
        for(d = 0; d < array_length_1d(lines_ypoints); d++)
            {
            draw_sprite_ext(spr_JournalLine,0,view_wport[0]/2,lines_ypoints[d],3,3,0,c_white,journal_alpha);
            }
        }
    if dialog_parts_ypoints != -1 //Part Dialogues
        {
        var h = array_length_1d(dialog_parts_ypoints);
        if h > 1 then for(d = 0; d < h; d++)
            {
            draw_text_colour(view_wport[0]/2-270,dialog_parts_ypoints[d],dialog_parts_string[d],c_black,c_black,c_black,c_black,journal_alpha*(0.4/(h-1)*(h-d-1))+0.2);
            }
        else draw_text_colour(view_wport[0]/2-270,dialog_parts_ypoints[d],dialog_parts_string[d],c_black,c_black,c_black,c_black,journal_alpha*0.4);
        }
        
    //////////
    /*
    
    var ypoint = view_hport[0]/2-278;
    var d = 0;
    do
        {
        draw_text_colour(view_wport[0]/2-270,ypoint,last_dialogues[d+last_dialogues_offset],c_black,c_black,c_black,c_black,journal_alpha); //Diyaloğu yaz
        if (++d) + last_dialogues_offset = array_length_1d(last_dialogues) //Başka girdi kalmamışsa döngüyü kır
            {
            with(last_dialogues_arrow[1]) image_index = 0;
            break;
            }
        ypoint += string_height(last_dialogues[d-1+last_dialogues_offset]) + last_dialogues_sep;
        if ypoint < view_hport[0]/2+360 then draw_sprite_ext(spr_JournalLine,0,view_wport[0]/2,ypoint,3,3,0,c_white,journal_alpha); //Line
        ypoint += last_dialogues_sep;
        }
    until ypoint+string_height(last_dialogues[d+last_dialogues_offset]) > view_hport[0]/2+360 //Bir sonraki girdi sınırları aşıyorsa döngüyü kır
    if d+last_dialogues_offset < array_length_1d(last_dialogues) //Yazılmamış girdi kaldı mı?
        {
        var h = string_count("#",last_dialogues[d+last_dialogues_offset]);
        var last_dialogues_lines;
        for(h = h; h >= 0; h--) //Kaç satırın sığacağını hesapla
            {
            if ypoint+string_height(last_dialogues_str[h]) < view_hport[0]/2+380 then break;
            }
        if h > -1 //En azından bir satır sığıyorsa
            {
            var str_last = last_dialogues[d+last_dialogues_offset];
            for(var s = 0; s <= h; s++) //Satırlara ayırma işlemi
                {
                last_dialogues_lines[s] = string_copy(str_last,1,string_pos("#",str_last));
                str_last = string_replace(str_last,last_dialogues_lines[s],"");
                }
            for(var j = 0; j < h; j++) //Satırlara bölünmüş diyaloğu yazdır
                {
                draw_text_colour(view_wport[0]/2-270,ypoint,last_dialogues_lines[j],c_black,c_black,c_black,c_black,journal_alpha*(0.4/h)*(h-j)+0.2);
                ypoint += 26;
                }
            if h = 0 then draw_text_colour(view_wport[0]/2-270,ypoint,last_dialogues_lines[j],c_black,c_black,c_black,c_black,journal_alpha/2); //Sadece tek satır sığıyorsa
            }
        }
    else
        {
        with(last_dialogues_arrow[1]) image_index = 0;
        }*/
}
