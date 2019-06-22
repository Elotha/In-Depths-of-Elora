///Last Dialogues

//argument0 true ise yukardaki ok, false ise aşağıdaki ok

{
    if LastDialoguesOffset > 0 {
        if argument0 then with(LastDialoguesArrow[0]) NextIndex = 1; else with(LastDialoguesArrow[0]) image_index = 1;
        }
    else with(LastDialoguesArrow[0]) NextIndex = 0;
    display_set_gui_size(view_wport[0],view_hport[0]);
    draw_set_font(fnt_AchievementDescription);
    
    var Limit = view_hport[0]/2+360;
    var YPoint = view_hport[0]/2-278;
    DialoguesYPoints = -1;
    LinesYPoints = -1;
    DialogPartsYPoints = -1;
    DialogPartsYString = -1;
    var d = 0;
    do {
        DialoguesYPoints[d] = YPoint;
        if (d+1) + LastDialoguesOffset = array_length_1d(LastDialogues) { //Başka girdi kalmamışsa döngüyü kır
            with(LastDialoguesArrow[1]) NextIndex = 0;
            exit;
            }
        YPoint += string_height(LastDialogues[d+LastDialoguesOffset]) + LastDialoguesSep;
        if YPoint < Limit then LinesYPoints[d++] = YPoint;
        else exit;
        YPoint += LastDialoguesSep;
        }
    until YPoint + string_height(LastDialogues[d+LastDialoguesOffset]) > Limit //Bir sonraki girdi sınırları aşıyorsa döngüyü kır
    
    if d+LastDialoguesOffset < array_length_1d(LastDialogues) { //Yazılmamış girdi kaldı mı?
        if argument0 then with(LastDialoguesArrow[1]) image_index = 1; else with(LastDialoguesArrow[1]) NextIndex = 1; //Yazılmamış girdi kaldıysa aşağı ok aktif olsun
        var StrLast = LastDialogues[d+LastDialoguesOffset];
        for(var h = min(string_count("#",StrLast),4); h >= 0; h--) { //Kaç satırın sığacağını hesapla
            if YPoint + string_height(LastDialoguesStr[h]) < Limit then break;
            }
        if h > -1 { //En azından bir satır sığıyorsa
            for(var s = 0; s <= h; s++) { //Satırlara ayırma işlemi
                DialogPartsYString[s] = string_copy(StrLast,1,string_pos("#",StrLast));
                StrLast = string_replace(StrLast,DialogPartsYString[s],"");
                }
            for(var j = 0; j <= h; j++) { //Satırlara bölünmüş diyaloğu yazdır
                DialogPartsYPoints[j] = YPoint;
                YPoint += 26;
                }
            }
        }
    else with(LastDialoguesArrow[1]) NextIndex = 0; //Yazılmamış girdi kalmadıysa aşağı oku pasif hale getir
    display_set_gui_size(ww,hh);
}
