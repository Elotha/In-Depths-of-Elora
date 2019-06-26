///Magical Sight Interaction

//argument0: hangi varlıkla temas ettik?
//image_xscale*Other.image_xscale: ne taraftan temas ettik? 1 ise arkadan, -1 ise önden temas ettik

{
    DashCooldown = 1;
    Dash = false;
    MagicalInteraction = Other.object_index;
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
            switch(image_xscale*Other.image_xscale) {
                case 1:
                    var Block;
                    for(var i = 1; i < floor((room_height-y)/32); i++) {
                        Block = collision_rectangle(Other.x-32,Other.y+(i*32),Other.x+32,Other.y+((i+1)*32)+16,obj_Block,false,true);
                        if Block = noone then break;
                        }
                    if Block = noone {
                        x = Other.x;
                        y = Other.y+(i*32)+32;
                        }
                    break;
                    
                case -1:
                    y -= 32;
                    if JumpCount < JumpMax then JumpCount++;
                    VSpeed = JumpSpeed-2;
                    break;
                }
            break;
            
        case obj_Damast:
            switch(image_xscale) {
                case 1:
                    sprite_index = spr_DamastFly;
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
