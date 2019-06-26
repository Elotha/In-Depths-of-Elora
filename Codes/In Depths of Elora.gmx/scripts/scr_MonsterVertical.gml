///Monster Vertical

//argument0: hareket gerçekleştirilecek mi?

{
    //Altımızda blok var mı?
    BlockVer = instance_place(x,y+VSpeed+1,obj_Block);
    
    //Düşüyor muyuz?
    if BlockVer = noone {
        if VSpeed < FallingLimit {
            VSpeed += FallingSpeed;
            }
        }
        
    //Yere geldik mi?
    if sign(VSpeed) = 1 {
        if BlockVer != noone {
            y += distance_to_object(BlockVer)-1;
            VSpeed = 0;
            }
        }
        
    //Hareketi gerçekleştir
    if argument0 then y += VSpeed;
}
