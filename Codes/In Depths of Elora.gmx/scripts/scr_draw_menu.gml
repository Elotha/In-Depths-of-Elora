///Draw

{
    
    for(var i = 0+offset; i < min(5,array_length_1d(argument0))+offset; i++)
        {
        draw_set_alpha(alpha);
        draw_text_transformed(room_width/2,176+(i*32)-(offset*32),argument0[i],1+selected[i],1+selected[i],0);
        if selected[i] = 0.5
            {
            draw_sprite(spr_MenuIndicatorLeft,-1,room_width/2-(string_width(argument0[i])*1.5+32)/2,166+(i*32)-(offset*32));
            draw_sprite(spr_MenuIndicatorRight,-1,room_width/2+(string_width(argument0[i])*1.5+32)/2,166+(i*32)-(offset*32));
            }
        draw_set_alpha(1);
        }
    if show_first != "" then draw_text_transformed(room_width/2+3,154,show_first,1.5,1.5,0);
    if show_last != "" then draw_text_transformed(room_width/2+3,168+5*32,show_last,1.5,1.5,0);
}
