///Magical Movement

{
    switch(MagicalInteraction){
        case obj_Minyoo:
            switch(sprite_index) {
                case spr_MagicalMinyooLines:
                    //Gittiğimiz yönde blok var mı?
                    BlockVer = instance_place(x,y+VSpeed-1,obj_Block);
                    
                    //Düşüyor muyuz?
                    if BlockVer = noone {
                        if abs(VSpeed) < FallingLimit {
                            VSpeed -= FallingSpeed;
                            }
                        }
                        
                    //Yere geldik mi?
                    if sign(VSpeed) = -1 {
                        if BlockVer != noone {
                            if object_is_ancestor(BlockVer.object_index,obj_PlatformThinParent) && sign(VSpeed) = -1 { //İnce bir platforma aşağıdan yukarıya doğru denk gelmişse
                                y = BlockVer.y-8;
                                sprite_index = spr_MagicalMinyooTelUp2;
                                mask_index = sprite_index;
                                image_index = 0;
                                image_speed = 1/3;
                                VSpeed = 0;
                                HSpeed = 0;
                                exit;
                                }
                            if sign(VSpeed) = -1 { //Yukarı doğru gidiyorsa sprite ve derinlik ayarlamalarını yap
                                image_yscale = -1;
                                depth = PLATFORM+50;
                                }
                            sprite_index = spr_MagicalMinyooWalk;
                            mask_index = sprite_index;
                            move_contact_solid(90,ceil(abs(VSpeed)));
                            VSpeed = 0;
                            image_speed = 0;
                            MovementPermission = true;
                            }
                        }
                        
                    //Hareketi gerçekleştir
                    y += VSpeed;
                    break;
                    
                case spr_MagicalMinyooWalk:
                    if MovementPermission {
                        scr_HorizontalInputs();
                        
                        //Gittiğimiz yönde blok bitiyor mu?
                        var BlockAhead = collision_rectangle(x+40*image_xscale,y,x+64*image_xscale,y+(24*image_yscale),obj_Block,false,true);
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
                            image_speed = 1/HSpeed;
                            }
                        else image_speed = 0;
                            
                        //Yatay hareketi gerçekleştir
                        x += HSpeed;
                        }
                    
                    break;
                
                }
            break;
        }
}
