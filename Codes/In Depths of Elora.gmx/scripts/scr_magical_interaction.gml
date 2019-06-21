///Magical Sight Interaction

//argument0: hangi varlıkla temas ettik?
//image_xscale*other.image_xscale: ne taraftan temas ettik? 1 ise arkadan, -1 ise önden temas ettik

{
    dash_cooldown = 1;
    switch(other.object_index)
        {
        case obj_Beulian:
            switch(image_xscale*other.image_xscale)
                {
                case 1:
                    break;
                    
                case -1:
                    break;
                }
            break;
            
        case obj_Minyoo:
            switch(image_xscale*other.image_xscale)
                {
                case 1:
                    var block;
                    for(var i = 1; i < floor((room_height-y)/32); i++)
                        {
                        block = collision_rectangle(other.x-32,other.y+(i*32),other.x+32,other.y+((i+1)*32)+16,obj_Block,false,true);
                        if block = noone then break;
                        }
                    if block = noone
                        {
                        x = other.x;
                        y = other.y+(i*32)+32;
                        }
                    break;
                    
                case -1:
                    y -= 32;
                    if jump_count < jump_max then jump_count++;
                    v_speed = jump_speed-2;
                    break;
                }
            break;
            
        case obj_Damast:
            switch(image_xscale)
                {
                case 1:
                    sprite_index = spr_DamastFly;
                    hspeed = 4;
                    v_speed = 0;
                    h_speed = 0;
                    invincibility = true;
                    jump_permission = false;
                    dash_cooldown = 0;
                    break;
                    
                case -1:
                    break;
                }
            break;
            
        case obj_Zodax:
            switch(image_xscale*other.image_xscale)
                {
                case 1:
                case -1:
                    if sign(other.coefficient) = 1
                        {
                        x = other.x+other.teleport_x*other.coefficient;
                        y = other.y+other.teleport_y*other.coefficient-32;
                        }
                    else
                        {
                        x = other.xstart;
                        y = other.ystart-32;
                        }
                    break;
                }
            break;
            
        case obj_Palpus:
            switch(image_xscale*other.image_xscale)
                {
                case 1:
                    break;
                    
                case -1:
                    break;
                }
            break;
            
        }
}
