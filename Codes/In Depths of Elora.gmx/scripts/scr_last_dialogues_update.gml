///Last Dialogues

//argument0 true ise yukardaki ok, false ise aşağıdaki ok

{
    if last_dialogues_offset > 0
        {
        if argument0 then with(last_dialogues_arrow[0]) next_index = 1; else with(last_dialogues_arrow[0]) image_index = 1;
        }
    else with(last_dialogues_arrow[0]) next_index = 0;
    display_set_gui_size(view_wport[0],view_hport[0]);
    draw_set_font(fnt_AchievementDescription);
    
    var limit = view_hport[0]/2+360;
    var ypoint = view_hport[0]/2-278;
    dialogues_ypoints = -1;
    lines_ypoints = -1;
    dialog_parts_ypoints = -1;
    dialog_parts_string = -1;
    var d = 0;
    do
        {
        dialogues_ypoints[d] = ypoint;
        if (d+1) + last_dialogues_offset = array_length_1d(last_dialogues) //Başka girdi kalmamışsa döngüyü kır
            {
            with(last_dialogues_arrow[1]) next_index = 0;
            exit;
            }
        ypoint += string_height(last_dialogues[d+last_dialogues_offset]) + last_dialogues_sep;
        if ypoint < limit then lines_ypoints[d++] = ypoint;
        else exit;
        ypoint += last_dialogues_sep;
        }
    until ypoint + string_height(last_dialogues[d+last_dialogues_offset]) > limit //Bir sonraki girdi sınırları aşıyorsa döngüyü kır
    
    if d+last_dialogues_offset < array_length_1d(last_dialogues) //Yazılmamış girdi kaldı mı?
        {
        if argument0 then with(last_dialogues_arrow[1]) image_index = 1; else with(last_dialogues_arrow[1]) next_index = 1; //Yazılmamış girdi kaldıysa aşağı ok aktif olsun
        var str_last = last_dialogues[d+last_dialogues_offset];
        for(var h = min(string_count("#",str_last),4); h >= 0; h--) //Kaç satırın sığacağını hesapla
            {
            if ypoint + string_height(last_dialogues_str[h]) < limit then break;
            }
        if h > -1 //En azından bir satır sığıyorsa
            {
            for(var s = 0; s <= h; s++) //Satırlara ayırma işlemi
                {
                dialog_parts_string[s] = string_copy(str_last,1,string_pos("#",str_last));
                str_last = string_replace(str_last,dialog_parts_string[s],"");
                }
            for(var j = 0; j <= h; j++) //Satırlara bölünmüş diyaloğu yazdır
                {
                dialog_parts_ypoints[j] = ypoint;
                ypoint += 26;
                }
            }
        }
    else with(last_dialogues_arrow[1]) next_index = 0; //Yazılmamış girdi kalmadıysa aşağı oku pasif hale getir
    display_set_gui_size(ww,hh);
}
