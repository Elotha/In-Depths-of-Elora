///Magical Movement

{
    if keyboard_check_pressed(Control[ControlKeys.Jump]) {
        scr_MagicalInteractionComeOut();
        exit;
        }
    switch(MagicalInteraction){
        case obj_Minyoo:
            switch(sprite_index) {
                case spr_MagicalMinyooLines:
                
                    //Yukarı çıkarken menzil kontrolü
                    if MinyooGravityDir = -1 {
                        MinyooRangeCount += abs(VSpeed);
                         if MinyooRangeCount >= MinyooRange-scr_SpeedResidual(abs(VSpeed)) {
                            MinyooGravityDir = 1;
                            }
                         }
                
                    //Gittiğimiz yönde blok var mı?
                    BlockVer = instance_place(x,y+VSpeed-1,obj_Block);
                    
                    //Düşüyor muyuz?
                    if BlockVer = noone {
                        if abs(VSpeed) < FallingLimit {
                            VSpeed += FallingSpeed*MinyooGravityDir;
                            if sign(VSpeed) != -1 {
                                scr_MagicalInteractionComeOut();
                                MinyooRangeCount = 0;
                                }
                            }
                        }
                    //Yere geldik mi?
                    if sign(VSpeed) != 0 {
                        if BlockVer != noone {
                            MinyooRangeCount = 0;
                            MinyooGravityDir = -1;
                            HSpeed = 0;
                            if object_is_ancestor(BlockVer.object_index,obj_BlockThinParent) && sign(VSpeed) = -1 { //İnce bir platforma aşağıdan yukarıya doğru denk gelmişse
                                if BlockVer.object_index = obj_BlockTiming or (BlockVer.object_index = obj_BlockThin && BlockVer.image_xscale = 4) then x = BlockVer.x+16;
                                y = BlockVer.y-8;
                                sprite_index = spr_MagicalMinyooTelUp2;
                                image_index = 0;
                                image_speed = 1/3;
                                VSpeed = 0;
                                exit;
                                }
                            if sign(VSpeed) = -1 { //Yukarı doğru gidiyorsa sprite ve derinlik ayarlamalarını yap
                                image_yscale = -1;
                                depth = PLATFORM+50;
                                }
                            move_contact_solid(90,ceil(abs(VSpeed)));
                            VSpeed = 0;
                            sprite_index = spr_MagicalMinyooWalk;
                            image_index = 0;
                            image_speed = 0;
                            MovementPermission = true;
                            }
                        }
                        
                    //Hareketi gerçekleştir
                    y += VSpeed;
                    break;
                    
                case spr_MagicalMinyooWalk:
                    if MovementPermission {
                        if --MagicalInteractionSpace > 0 { //Komut verebilme süresi
                            if keyboard_check_pressed(Control[ControlKeys.Up]) {
                                scr_MagicalInteractionMinyoo(-1,false);
                                MagicalInteractionSpace = 0;
                                exit;
                                }
                            else if keyboard_check_pressed(Control[ControlKeys.Down]) {
                                scr_MagicalInteractionMinyoo(1,false);
                                MagicalInteractionSpace = 0;
                                exit;
                                }
                            }
                            
                        scr_HorizontalInputs();
                        
                        //Gittiğimiz yönde blok bitiyor mu?
                        var BlockAhead = collision_rectangle(x+(10*abs(HSpeed))*image_xscale,y,x+(15*abs(HSpeed))*image_xscale,y+(24*image_yscale),obj_Block,false,true);
                        if BlockAhead = noone {
                            if InputDir = image_xscale then InputDir = 0;
                            }
                        
                        //Hiçbir tuşa basmıyorsak ya da iki yöne birden basıyorsak veya hareket iznimiz yoksa, ve yatayda hızımız sıfır değilse sürtünme kuvveti uygula
                        if (InputDir = 0 && HSpeed > 0) or HSpeed > HorLimit then HSpeed = max(HSpeed+Friction*sign(HSpeed),0);
                        if (InputDir = 0 && HSpeed < 0) or HSpeed < -HorLimit then HSpeed = min(HSpeed+Friction*sign(HSpeed),0);
                        
                        //Sağa ya da sola basıyorsak
                        if InputDir = 1 && HSpeed < HorLimit then HSpeed = min(HSpeed+HorAcceleration,4);
                        if InputDir = -1 && HSpeed > -HorLimit then HSpeed = max(HSpeed-HorAcceleration,-4);
                   
                        //Gittiğimiz yatay yön serbest mi?
                        if abs(HSpeed) > 0 {
                            BlockHor = instance_place(x+floor(abs(HSpeed))*sign(HSpeed)+sign(HSpeed),y,obj_Block);
                            if BlockHor != noone {
                                move_contact_solid(90+(90*-sign(HSpeed)),HSpeed);
                                HSpeed = 0;
                                }
                            }
                        //Yatay hız varsa görselliği ayarla
                        if HSpeed != 0 {
                            image_xscale = sign(HSpeed);
                            image_speed = HSpeed/10;
                            }
                        else image_speed = 0;
                            
                        //Yatay hareketi gerçekleştir
                        x += HSpeed;
                        }
                        
                   else { ///Aşağı düşüyoruz
                   
                       //Yukarı çıkarken menzil kontrolü
                        if MinyooGravityDir = 1 {
                            MinyooRangeCount += abs(VSpeed);
                             }
                    
                        //Gittiğimiz yönde blok var mı?
                        BlockVer = instance_place(x,y+VSpeed+1,obj_Block);
                        
                        //Düşüyor muyuz?
                        if BlockVer = noone {
                            if abs(VSpeed) < FallingLimit {
                                VSpeed += FallingSpeed*MinyooGravityDir;
                                }
                            }
                        //Yere geldik mi?
                        if sign(VSpeed) != 0 {
                            if BlockVer != noone {
                                //Fall Death MinyooRangeCount = 0;
                                HSpeed = 0;
                                move_contact_solid(270,ceil(abs(VSpeed)));
                                VSpeed = 0;
                                sprite_index = spr_MagicalMinyooWalk;
                                image_index = 0;
                                image_speed = 0;
                                MovementPermission = true;
                                depth = MONSTER;
                                }
                            }
                            
                        //Hareketi gerçekleştir
                        y += VSpeed;
                        
                        break;
                    
                    }
            break;
        }
    }
}
