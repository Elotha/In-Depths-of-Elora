///Vertical Movement

{    
    //Zıplama
    if Focus = "Character" { //Kontrol odağı karakterde ise
        if JumpPermission {
            if JumpCount < JumpMax {
                if keyboard_check_pressed(Control[ControlKeys.Jump]) {
                    if JumpCount++ = 1 { //İkinci kez zıplıyorsak
                        alarm[1] = -1; //Hayalet blok
                        /*var MagJump = scr_MagicalJump(); //Büyülü zıplayış var mı?
                        if MagJump > 0 then VSpeed = JumpSpeed-1-(MagJump*0.5); else*/ VSpeed = JumpSpeed;
                        sprite_index = spr_CharacterDoubleJump;
                        image_index = 0;
                        image_speed = 1/6;
                        scr_PlaySound(choose(snd_Jump1,snd_Jump2,snd_Jump3,snd_Jump4,snd_Jump5));
                        }
                    else { //Yerdeyken zıplıyorsak
                        VSpeed = JumpSpeed;
                        scr_PlaySound(choose(snd_Jump1,snd_Jump2,snd_Jump3,snd_Jump4,snd_Jump5));
                        }
                        
                    if Dash { //Dash varken zıplamışsak
                        HSpeed -= 4*sign(HSpeed);
                        Dash = false;
                        MovementPermission = true;
                        scr_HorizontalInputs();
                        }
                    }
                }            
                if JumpCount > 0 && keyboard_check(Control[ControlKeys.Jump]) { //Zıplama tuşuna basmaya devam ediyorsak
                    if sign(VSpeed) = -1 then VSpeed += JumpPlus;
                    }
            }
        }
        
    //Altımızda blok var mı?
    mask_index = spr_CharacterMask;
    BlockDown = instance_place(x,y+VSpeed+1,obj_Block);
    BlockCenter = instance_place(x,y,obj_BlockThinParent);
    BlockDownThin = instance_place(x,y+1,obj_BlockThinParent);
    if BlockDown != noone then if (BlockDown.object_index = obj_BlockTimingBlue && !MagicalSight) or (BlockDown.object_index = obj_BlockTimingGray && MagicalSight) {
        BlockDown = noone;
        }
        
    //Düşüyor muyuz?
    if BlockDown = noone or (BlockDown != noone && BlockCenter != noone && BlockDown = BlockCenter) {
        if !scr_IfDash() {
            if VSpeed < FallingLimit {
                if JumpCount = 0 && alarm[1] = -1 then alarm[1] = 10; //Hayalet blok
                VSpeed += FallingSpeed;
                }
            }
        }
        
    //Yere geldik mi?
    if sign(VSpeed) = 1 {
        if BlockDown != noone && BlockCenter = noone {
            JumpCount = 0;
            alarm[1] = -1; //Hayalet platform
            y += distance_to_object(BlockDown)-1;
            VSpeed = 0;
            if HSpeed != 0 && Invincibility && SpriteLock { //Canımız yandıktan sonra yere düştüğümüzde yatay hızımız varsa
                SpriteLock = false;
                JumpPermission = true;
                alarm[2] = -1; //SpriteLock alarmını kapat
                alarm[0] = 1; //Ölümsüzlük yanıp sönmesi efektini devreye sok
                }
            }
        }

    //Kafamızı bloğa çarpacak mıyız?
    if sign(VSpeed) = -1 {
        BlockUp = instance_place(x,y+VSpeed-1,obj_Block);
        if BlockUp != noone  {
            if  !object_is_ancestor(BlockUp.object_index,obj_BlockThinParent) {
                y += -distance_to_object(BlockUp)+1;
                VSpeed = 0;
                }
            }
        }
        
    //İnce platformlardan aşağı inme
    if BlockDown != noone && BlockCenter = noone && BlockDownThin != noone {
        if keyboard_check_pressed(Control[ControlKeys.Down]) {
            y++;
            }
        }
        
    //Hareketi gerçekleştir
    y += VSpeed;
                    
}
