///Magical Sight Interaction

//argument0: hangi varlıkla temas ettik?
//image_xscale*Other.image_xscale: ne taraftan temas ettik? 1 ise arkadan, -1 ise önden temas ettik

{
    DashCooldown = 0;
    Dash = false;
    MagicalInteraction = Other.object_index;
    mask_index = sprite_index;
    switch(Other.object_index) {
        case obj_Beulian:
            switch(image_xscale*Other.image_xscale) {
                case 1:
                    break;
                    
                case -1:
                    break;
                }
            break;
            
        case obj_Minyoo:
            LeftX = -36;
            RightX = 36;
            switch(image_xscale*Other.image_xscale) {
                case 1:
                
                    break;
                    
                case -1:
                    MovementPermission = false;
                    JumpPermission = false;
                    sprite_index = spr_MagicalMinyooTelUp;
                    mask_index = sprite_index;
                    image_index = 0;
                    image_speed = 1/3;
                    VSpeed = 0;
                    HSpeed = 0;
                    x = Other.x;
                    y = Other.y;
                    break;
                }
            break;
            
        case obj_Damast:
            switch(image_xscale) {
                case 1:
                    sprite_index = spr_DamastFly;
                    mask_index = sprite_index;
                    hspeed = 4;
                    VSpeed = 0;
                    HSpeed = 0;
                    Invincibility = true;
                    JumpPermission = false;
                    DashCooldown = 0;
                    alarm[0] = -1; //Invincibility sayacını kapat
                    break;
                    
                case -1:
                    break;
                }
            break;
            
        case obj_Zodax:
            switch(image_xscale*Other.image_xscale) {
                case 1:
                case -1:
                    if sign(Other.Coefficient) = 1 {
                        x = Other.x+Other.TeleportX*Other.Coefficient;
                        y = Other.y+Other.TeleportY*Other.Coefficient-32;
                        }
                    else {
                        x = Other.xstart;
                        y = Other.ystart-32;
                        }
                    break;
                }
            break;
            
        case obj_Palpus:
            switch(image_xscale*Other.image_xscale) {
                case 1:
                    break;
                    
                case -1:
                    break;
                }
            break;
            
        }
}
