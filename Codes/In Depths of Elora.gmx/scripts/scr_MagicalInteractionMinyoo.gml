///Magical Interaction: Minyoo

//argument0: Magical interaction type
//argument1: Other lazım mı?

{
    LeftX = -36;
    RightX = 36;
    MinyooRange = Other.Range;
    JumpPermission = false;
    if argument1 {
        x = Other.x;
        y = Other.y;
        }
    switch(argument0) {
        case -2: //Havada yakaladık, yukarı gidiyoruz
            MovementPermission = false;
            MagicalInteractionSpace = 0;
            switch(InteractionID.sprite_index) {
                case spr_MinyooTeleportationUp:
                    sprite_index = spr_MagicalMinyooTelUp;
                    mask_index = sprite_index;
                    image_index = InteractionID.image_index;
                    image_speed = InteractionID.image_speed;
                    MinyooRangeCount = 0;
                    MinyooGravityDir = -1;
                    VSpeed = 0;
                    HSpeed = 0;
                    break;
                
                case spr_MinyooLines:
                    if JumpCount < JumpMax then JumpCount++;
                    sprite_index = spr_MagicalMinyooLines;
                    mask_index = sprite_index;
                    MinyooRangeCount = InteractionID.RangeCount;
                    MinyooGravityDir = InteractionID.GravityDir;
                    VSpeed = InteractionID.VSpeed;
                    HSpeed = 0;
                    break;
                    
                case spr_MinyooTeleportationUp2:
                    sprite_index = spr_MagicalMinyooTelUp2;
                    mask_index = sprite_index;
                    image_index = InteractionID.image_index;
                    image_speed = InteractionID.image_speed;
                    MinyooRangeCount = 0;
                    MinyooGravityDir = -1;
                    VSpeed = 0;
                    HSpeed = 0;
                    break;
                }
            break;
            
        case -1: //Yerdeydik, yukarı gidiyoruz
            switch(InteractionID.image_yscale) {
                case -1: //Bloğun altında gezen bir minyooyu kullanarak yukarı çıkmaya çalışıyoruz
                    MinyooBlockUp = instance_place(x,y-4,obj_Block);
                    var Check = false;
                    if MinyooBlockUp != noone {
                        if MinyooBlockUp.y > 96 { //Üstümüzdeki blok haritanın sonuna gitmiyorsa
                            MinyooBlockY = MinyooBlockUp.y;
                            Check = true;
                            sprite_index = spr_MagicalMinyooTelDown;
                            image_yscale = -1;
                            }                            
                        }
                    if !Check { 
                        scr_MagicalInteractionMinyoo(0,true);
                        MagicalInteractionSpace = 0;
                        exit;
                        }
                    break;
                    
                case 1: //Bloğun üstünde gezen bir minyooyu kullanarak yukarı çıkmaya çalışıyoruz
                    sprite_index = spr_MagicalMinyooTelUp;
                    if JumpCount < JumpMax then JumpCount++;
                    MinyooRangeCount = 0;
                    break;
                }
            MovementPermission = false;
            mask_index = sprite_index;
            image_index = 0;
            image_speed = 1/3;
            MinyooGravityDir = -1;
            MagicalInteractionSpace = 0;
            VSpeed = 0;
            HSpeed = 0;
            break;
            
        case 0: //Sabitiz
            MovementPermission = true;
            sprite_index = spr_MagicalMinyooWalk;
            mask_index = sprite_index;
            image_speed = 0;
            image_index = 0;
            if InteractionID.image_yscale = -1 {
                image_yscale = -1;
                depth = PLATFORM+50;
                MinyooGravityDir = -1;
                }
            else {
                image_yscale = 1;
                depth = MONSTER;
                MinyooGravityDir = 1;
                }
            MinyooRangeCount = 0;
            VSpeed = 0;
            HSpeed = 0;
            break;
            
        case 1: //Yerdeydik, aşağı gidiyoruz
            switch(InteractionID.image_yscale) {
                case -1: //Bloğun altında gezen bir minyooyu kullanarak aşağı inmeye çalışıyoruz
                    VSpeed = FallingSpeed;
                    HSpeed = 0;            
                    sprite_index = spr_MagicalMinyooWalk;
                    image_speed = 0;
                    image_yscale = 1;
                    break;
                    
                case 1: //Bloğun üstünde gezen bir minyooyu kullanarak aşağı inmeye çalışıyoruz
                    MinyooBlockDown = instance_place(x,y+4,obj_Block);
                    var Check = false;
                    if MinyooBlockDown != noone {
                        if (MinyooBlockDown.y+MinyooBlockDown.image_yscale*8) < room_height-96 { //Altımızdaki blok haritanın sonuna gitmiyorsa
                            MinyooBlockY = MinyooBlockDown.image_yscale*8;
                            Check = true;
                            sprite_index = spr_MagicalMinyooTelDown;
                            image_speed = 1/3;
                            VSpeed = 0;
                            HSpeed = 0;
                            }                            
                        }
                    if !Check { 
                        scr_MagicalInteractionMinyoo(0,true);
                        MagicalInteractionSpace = 0;
                        exit;
                        }
                    break;
                }
            MovementPermission = false;
            mask_index = sprite_index;
            image_index = 0;
            MinyooRangeCount = 0;
            MinyooGravityDir = 1;
            if JumpCount < JumpMax then JumpCount++;
            break;
            
        case 2: //Havada yakaladık, aşağı gidiyoruz
            MovementPermission = false;
            MagicalInteractionSpace = 0;
            switch(InteractionID.sprite_index) {
                case spr_MinyooTeleportationDown:
                    sprite_index = spr_MagicalMinyooTelDown;
                    mask_index = sprite_index;
                    image_index = InteractionID.image_index;
                    image_speed = InteractionID.image_speed;
                    MinyooRangeCount = 0;
                    MinyooGravityDir = -1;
                    VSpeed = 0;
                    HSpeed = 0;
                    MinyooBlockY = 48;
                    break;
                
                case spr_MinyooWalk:
                    sprite_index = spr_MagicalMinyooWalk;
                    mask_index = sprite_index;
                    MinyooRangeCount = InteractionID.RangeCount;
                    MinyooGravityDir = InteractionID.GravityDir;
                    VSpeed = InteractionID.VSpeed;
                    HSpeed = 0;
                    break;
                    
                case spr_MinyooTeleportationDown2:
                    sprite_index = spr_MagicalMinyooTelDown2;
                    mask_index = sprite_index;
                    image_index = InteractionID.image_index;
                    image_speed = InteractionID.image_speed;
                    MinyooRangeCount = 0;
                    MinyooGravityDir = -1;
                    VSpeed = 0;
                    HSpeed = 0;
                    break;
                }
            break;
        }
}
