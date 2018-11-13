///Vertical Movement
//
//argument0: bottom_x kullanılacak mı?
//argument1: bu kodu ana karakter mi çalıştırıyor?

{
    if argument0 then block_down = collision_rectangle(x-bottom_x,y+32,x+bottom_x,y+32+v_speed+1,obj_block_parent,false,true);
    else block_down = collision_rectangle(bbox_left,bbox_bottom-8,bbox_right,bbox_bottom+v_speed+1,obj_block_parent,false,true);
    if block_down = noone
        {
        if v_speed < global.falling_limit then v_speed += global.falling_speed;
        if argument1 then if jump_count = 0 && alarm[1] = -1 then alarm[1] = 10;
        }
        
    if sign(v_speed) = 1 //Yere iniyoruz
        {
        if block_down != noone // && y <= block_down.y
            {
            if argument1
                {
                jump_count = 0;
                alarm[1] = -1;
                }
            y += distance_to_object(block_down)-1;
            v_speed = 0;
            scr_sound_effect(-1,snd_footstep,RUN_STEP);
            }
        }
        
    if sign(v_speed) = -1 //Yükseliyoruz
            {
            if argument0 then block_up = collision_rectangle(x-bottom_x,y-12,x+bottom_x,bbox_top+v_speed,obj_block_parent,false,true);
            else block_up = collision_rectangle(bbox_left,y,bbox_right,bbox_top+v_speed,obj_block_parent,false,true);
            if place_meeting(x,y+v_speed,block_up) //&& block_up.y > y //Yukarda blok var ve kafamızı çarpmak üzereyiz
                {
                y -= distance_to_object(block_up);
                v_speed = 0;
                }
            }
            
    y += v_speed;
}
