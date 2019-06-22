///Last Dialogues

{
    display_set_gui_size(view_wport[0],view_hport[0]);
    draw_set_font(fnt_AchievementDescription);
    
    var d;
    if DialoguesYPoints != -1 { //Dialogues
        for(d = 0; d < array_length_1d(DialoguesYPoints); d++) {
            draw_text_colour(view_wport[0]/2-270,DialoguesYPoints[d],LastDialogues[d+LastDialoguesOffset],c_black,c_black,c_black,c_black,JournalAlpha);
            }
        }
    if LinesYPoints != -1 { //Lines
        for(d = 0; d < array_length_1d(LinesYPoints); d++) {
            draw_sprite_ext(spr_JournalLine,0,view_wport[0]/2,LinesYPoints[d],3,3,0,c_white,JournalAlpha);
            }
        }
    if DialogPartsYPoints != -1 { //Part Dialogues
        var h = array_length_1d(DialogPartsYPoints);
        if h > 1 then for(d = 0; d < h; d++) {
            draw_text_colour(view_wport[0]/2-270,DialogPartsYPoints[d],DialogPartsYString[d],c_black,c_black,c_black,c_black,JournalAlpha*(0.4/(h-1)*(h-d-1))+0.2);
            }
        else draw_text_colour(view_wport[0]/2-270,DialogPartsYPoints[d],DialogPartsYString[d],c_black,c_black,c_black,c_black,JournalAlpha*0.4);
        }
        
    //////////
    /*
    
    var ypoint = view_hport[0]/2-278;
    var d = 0;
    do
        {
        draw_text_colour(view_wport[0]/2-270,ypoint,LastDialogues[d+LastDialoguesOffset],c_black,c_black,c_black,c_black,JournalAlpha); //Diyaloğu yaz
        if (++d) + LastDialoguesOffset = array_length_1d(LastDialogues) //Başka girdi kalmamışsa döngüyü kır
            {
            with(LastDialogues_arrow[1]) image_index = 0;
            break;
            }
        ypoint += string_height(LastDialogues[d-1+LastDialoguesOffset]) + LastDialogues_sep;
        if ypoint < view_hport[0]/2+360 then draw_sprite_ext(spr_JournalLine,0,view_wport[0]/2,ypoint,3,3,0,c_white,JournalAlpha); //Line
        ypoint += LastDialogues_sep;
        }
    until ypoint+string_height(LastDialogues[d+LastDialoguesOffset]) > view_hport[0]/2+360 //Bir sonraki girdi sınırları aşıyorsa döngüyü kır
    if d+LastDialoguesOffset < array_length_1d(LastDialogues) //Yazılmamış girdi kaldı mı?
        {
        var h = string_count("#",LastDialogues[d+LastDialoguesOffset]);
        var LastDialogues_lines;
        for(h = h; h >= 0; h--) //Kaç satırın sığacağını hesapla
            {
            if ypoint+string_height(LastDialogues_str[h]) < view_hport[0]/2+380 then break;
            }
        if h > -1 //En azından bir satır sığıyorsa
            {
            var str_last = LastDialogues[d+LastDialoguesOffset];
            for(var s = 0; s <= h; s++) //Satırlara ayırma işlemi
                {
                LastDialogues_lines[s] = string_copy(str_last,1,string_pos("#",str_last));
                str_last = string_replace(str_last,LastDialogues_lines[s],"");
                }
            for(var j = 0; j < h; j++) //Satırlara bölünmüş diyaloğu yazdır
                {
                draw_text_colour(view_wport[0]/2-270,ypoint,LastDialogues_lines[j],c_black,c_black,c_black,c_black,JournalAlpha*(0.4/h)*(h-j)+0.2);
                ypoint += 26;
                }
            if h = 0 then draw_text_colour(view_wport[0]/2-270,ypoint,LastDialogues_lines[j],c_black,c_black,c_black,c_black,JournalAlpha/2); //Sadece tek satır sığıyorsa
            }
        }
    else
        {
        with(LastDialogues_arrow[1]) image_index = 0;
        }*/
}
