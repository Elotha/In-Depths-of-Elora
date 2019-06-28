///Magical Sight Interaction

//argument0: temel değişkenler ayarlansın mı?
//image_xscale*Other.image_xscale: ne taraftan temas ettik? 1 ise arkadan, -1 ise önden temas ettik

{
    if argument0 {
        DashCooldown = 0;
        Dash = false;
        MagicalInteraction = Other.object_index;
        InteractionID = Other;
        mask_index = sprite_index;
        }
    switch(MagicalInteraction) {
        case obj_Beulian:
            switch(image_xscale*InteractionID.image_xscale) {
                case 1:
                    break;
                    
                case -1:
                    break;
                }
            break;
            
        case obj_Minyoo:
            switch(InteractionID.sprite_index ) {
                //Aşağı giden minyoo
                case spr_MinyooTeleportationDown:
                case spr_MinyooTeleportationDown2:
                    MagicalInteractionSpace = 0;
                    scr_MagicalInteractionMinyoo(2,true);
                    break;
                    
                //Yukarı giden minyoo
                case spr_MinyooTeleportationUp:
                case spr_MinyooTeleportationUp2:
                case spr_MinyooLines:
                    MagicalInteractionSpace = 0;
                    scr_MagicalInteractionMinyoo(-2,true);
                    break;
                    
                case spr_MinyooWalk:
                    if InteractionID.VSpeed != 0 { //Yukardan aşağı düşen minyoo
                        MagicalInteractionSpace = 0;
                        scr_MagicalInteractionMinyoo(2,true);
                        }
                    else { //Sabit minyoo
                        if argument0 then MagicalInteractionSpace = 20;
                        if keyboard_check(Control[ControlKeys.Up]) {
                            scr_MagicalInteractionMinyoo(-1,true);
                            }
                        
                        else if keyboard_check(Control[ControlKeys.Down]) {
                            scr_MagicalInteractionMinyoo(1,true);
                            }
                        
                        else scr_MagicalInteractionMinyoo(0,true);
                        }
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
            switch(image_xscale*InteractionID.image_xscale) {
                case 1:
                case -1:
                    if sign(InteractionID.Coefficient) = 1 {
                        x = InteractionID.x+InteractionID.TeleportX*InteractionID.Coefficient;
                        y = InteractionID.y+InteractionID.TeleportY*InteractionID.Coefficient-32;
                        }
                    else {
                        x = InteractionID.xstart;
                        y = InteractionID.ystart-32;
                        }
                    break;
                }
            break;
            
        case obj_Palpus:
            switch(image_xscale*InteractionID.image_xscale) {
                case 1:
                    break;
                    
                case -1:
                    break;
                }
            break;
            
        }
}
