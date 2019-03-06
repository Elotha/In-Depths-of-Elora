///Draw

{
    
    for(var i = 0; i < array_length_1d(argument0); i++)
        {
        draw_set_alpha(alpha);
        draw_text_transformed(room_width/2,176+(i*32),argument0[i],1+selected[i],1+selected[i],0);
        if selected[i] = 0.5
            {
            draw_sprite(spr_MenuIndicatorLeft,-1,room_width/2-(string_width(argument0[i])*1.5+32)/2,166+(i*32));
            draw_sprite(spr_MenuIndicatorRight,-1,room_width/2+(string_width(argument0[i])*1.5+32)/2,166+(i*32));
            }
        draw_set_alpha(1);
        }
}
