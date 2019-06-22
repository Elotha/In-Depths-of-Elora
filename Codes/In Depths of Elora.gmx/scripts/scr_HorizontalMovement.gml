///Horizontal Movement

{
    if !Dash { //Dash atmıyorsak
    
        //Hiçbir tuşa basmıyorsak ya da iki yöne birden basıyorsak veya hareket iznimiz yoksa, ve yatayda hızımız sıfır değilse sürtünme kuvveti uygula
        if (InputDir = 0 && HSpeed > 0) or HSpeed > HorLimit then HSpeed = max(HSpeed+Friction*sign(HSpeed),0);
        if (InputDir = 0 && HSpeed < 0) or HSpeed < -HorLimit then HSpeed = min(HSpeed+Friction*sign(HSpeed),0);
        
        //Sağa ya da sola basıyorsak
        if InputDir = 1 && HSpeed < HorLimit then HSpeed = min(HSpeed+HorAcceleration,4);
        if InputDir = -1 && HSpeed > -HorLimit then HSpeed = max(HSpeed-HorAcceleration,-4);
        }
   
    //Gittiğimiz yatay yön serbest mi?
    if abs(HSpeed) > 0 {
        BlockHor = instance_place(x+floor(abs(HSpeed))*sign(HSpeed)+sign(HSpeed),y,obj_Block);
        if BlockHor != noone && !object_is_ancestor(BlockHor.object_index,obj_PlatformThinParent) {
            move_contact_all(90+(90*-sign(HSpeed)),HSpeed);
            Dash = false;
            HSpeed = 0;
            }
        }
    mask_index = sprite_index;
    
    //Hasar alma durumunda yatay hız sıfırlanana kadar sprite değiştirme
    if SpriteLock {
        if HSpeed = 0 then SpriteLock = false;
        }
        
    //Yatay hareketi gerçekleştir
    x += HSpeed;
}
