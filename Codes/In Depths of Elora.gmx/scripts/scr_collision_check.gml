///Collision Check And Movement
//
//argument0: ana karakter mi bu kodu çalıştırıyor?

{
        
}
/*
    if !place_meeting(x+h_speed,y+v_speed,obj_block_parent)
        {
        x += h_speed;
        y += v_speed;
        }
    else
        {
        var xx = x;
        var yy = y;
        var mpl = mp_linear_step_object(x+h_speed,y+v_speed,1,obj_block_parent);
        if !mpl
            {
            h_speed -= x-xx;
            v_speed -= y-yy;
            }
            
        scr_vertical_movement(argument0,argument0);
            
    if h_speed != 0 && v_speed = 0 //Hareket sadece yatayda
        {
        var block_hor = collision_rectangle(x,y-19,x+(abs(sprite_xoffset)*sign(h_speed))+h_speed,y+24,obj_block_parent,false,true);
        if !place_meeting(x+h_speed+sign(h_speed)*8,y,block_hor) //Sağ ya da sol serbest mi? (duruma göre çapraz da olabilir)
            {
            x += h_speed;
            }
        }
        
    else if h_speed = 0 && v_speed != 0 //Hareket sadece dikeyde
        {
        if sign(v_speed) = 1 //Yere iniyoruz
            {
            if block_down != noone // && y <= block_down.y
                {
                if argument0
                    {
                    jump_count = 0;
                    alarm[1] = -1;
                    }
                y += distance_to_object(block_down)-1;
                v_speed = 0;
                }
            }
            
        
        y += v_speed;
        } 
            
        
    else if h_speed != 0 && v_speed != 0 //Hareket hem yatayda hem dikeyde
        {
        if !place_meeting(x+h_speed,y+v_speed,obj_block_parent)
            {
            x += h_speed;
            y += v_speed;
            }
        else
            {
            var yy = y;
            var mpl = mp_linear_step_object(x+h_speed,y+v_speed,1,obj_block_parent);
            if !mpl
                {
                if v_speed != y-yy then v_speed = v_speed-(y-yy);
                if argument0 then block_down = collision_rectangle(x-bottom_x,y+32,x+bottom_x,y+32+v_speed+1,obj_block_parent,false,true);
                else block_down = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+v_speed+1,obj_block_parent,false,true);
                if block_down != noone
                    {
                    if argument0
                        {
                        jump_count = 0;
                        alarm[1] = -1;
                        }
                    //y += distance_to_object(block_down)-1;
                    v_speed = 0;
                    }
                h_speed = 0;
                if v_speed != 0 then y += v_speed;
                }
            }
        } 
}
