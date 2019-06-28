///Magical

{
    //Büyü görüşü modunda bir canavarın özelliğini kullanıyorsak
    if MagicalInteraction != -1 {
        MagicalInteraction = -1;
        mask_index = spr_CharacterMask;
        depth = CHARACTER;
        image_yscale = 1;
        var BlockCheck = instance_place(x,y,obj_Block); //Bir bloğun içine sıkıştık mı?
        if BlockCheck != noone {
            if !object_is_ancestor(BlockCheck,obj_PlatformThinParent) { //İnce platformsa boşver
                var CollUp = collision_rectangle(x-9,y-16,x+9,y-18,obj_Block,false,true);
                var CollDown = collision_rectangle(x-9,y+29,x+9,y+31,obj_Block,false,true);
                if CollUp != noone && CollDown = noone { //Yukarıdan sıkıştık
                    move_outside_solid(270,64);
                    }
                if CollUp = noone && CollDown != noone { //Aşağıdan sıkıştık
                    move_outside_solid(90,64);
                    }
                }
            }
        
        //İzinleri eski haline getir
        if Focus = "Character" {
            MovementPermission = true;
            JumpPermission = true;
            }
            
        //Sprite ayarlaması
        switch(sprite_index) {
            case spr_MagicalMinyooLines:
                sprite_index = spr_CharacterFly;
                break;
                }
                
        //Altımızda blok var mı?
        mask_index = spr_CharacterMask;
        BlockDown = instance_place(x,y+VSpeed+1,obj_Block);
        BlockCenter = instance_place(x,y,obj_PlatformThinParent);
        BlockDownThin = instance_place(x,y+1,obj_PlatformThinParent);
            
        //Düşüyor muyuz?
        if BlockDown = noone or (BlockDown != noone && BlockCenter != noone && BlockDown = BlockCenter) {
            if !scr_IfDash() {
                if VSpeed < FallingLimit {
                    VSpeed += FallingSpeed;
                    }
                }
            }
        else JumpCount = 0; //Düşmüyorsak zıplamayı sıfırla
        }
}
