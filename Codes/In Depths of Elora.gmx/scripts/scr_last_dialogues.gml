///Last Dialogues

{
    display_set_gui_size(view_wport[0],view_hport[0]);
    draw_set_font(fnt_AchievementDescription);
    
    var ypoint = view_hport[0]/2-262;
    var d = 0;
    do
        {
        draw_text_colour(view_wport[0]/2-262,ypoint,last_dialogues[d],c_black,c_black,c_black,c_black,journal_alpha); //Dialog
        ypoint += string_height(last_dialogues[d])+last_dialogues_sep;
        draw_sprite_ext(spr_JournalLine,0,view_wport[0]/2,ypoint,3,3,0,c_white,journal_alpha); //Line
        ypoint += last_dialogues_sep;
        d++;
        if d = array_length_1d(last_dialogues) then break;
        }
    until ypoint+string_height(last_dialogues[d]) > view_hport[0]/2+256
    if d < array_length_1d(last_dialogues)
        {
        draw_text_colour(view_wport[0]/2-262,ypoint,last_dialogues[d],c_black,c_black,c_black,c_black,journal_alpha); //Dialog
        }
}
