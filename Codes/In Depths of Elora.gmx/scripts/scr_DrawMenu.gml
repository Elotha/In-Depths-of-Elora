///Draw

{
    for(var i = 0+Offset; i < min(5,array_length_1d(argument0))+Offset; i++) {
        draw_set_alpha(Alpha);
        draw_text_transformed(room_width/2+5+(Selected[i]*4),176+(i*32)-(Offset*32),argument0[i],1+Selected[i],1+Selected[i],0);
        if Selected[i] = 0.5 {
            draw_sprite(spr_MenuIndicatorLeft,-1,room_width/2+6+(Selected[i]*4)-(string_width(argument0[i])*1.5+32)/2,166+(i*32)-(Offset*32));
            draw_sprite(spr_MenuIndicatorRight,-1,room_width/2+6+(Selected[i]*4)+(string_width(argument0[i])*1.5+32)/2,166+(i*32)-(Offset*32));
            }
        draw_set_alpha(1);
        }
    if ShowFirst != "" then draw_text_transformed(room_width/2+8,154,ShowFirst,1.5,1.5,0);
    if ShowLast != "" then draw_text_transformed(room_width/2+8,168+5*32,ShowLast,1.5,1.5,0);
}
