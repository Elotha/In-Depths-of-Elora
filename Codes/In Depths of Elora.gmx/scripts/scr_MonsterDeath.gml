///Monster Death

//argument0 = sprite_index

{
    //if other.object_index = object_index then exit;
    if sprite_index = argument0 then exit;
    sprite_index = argument0;
    image_index = 0;
    speed = 0;
    scr_Checkpoint(true);
    
    switch(argument0) {
        case spr_MinyooDeath:
            HSpeed = lengthdir_x(6,90+(50*image_xscale));
            VSpeed = lengthdir_y(6,90+(50*image_xscale));
            image_speed = 1/3;
            break;
            
        case spr_BeulianDeath:
            if image_speed = 1/3 then image_speed = 1/6;
            break;
            
        case spr_ZodaxDeath:
            alarm[0] = -1; //Işınlanmayı kapat
            break;
            
        case spr_PalpusDeath:
            image_speed = 1/8;
            break;
        }
        
}
