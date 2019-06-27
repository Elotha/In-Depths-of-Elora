///Monster Vertical

//argument0: hareket gerçekleştirilecek mi?
{
    //Altında blok var mı?
    BlockVer = instance_place(x,y+VSpeed+1,obj_Block);
    
    //Düşüyor mu?
    if BlockVer = noone {
        if VSpeed < FallingLimit {
            VSpeed += FallingSpeed;
            }
        }
        
    //Yere geldi mi?
    if sign(VSpeed) = 1 {
        if BlockVer != noone {
            y += distance_to_object(BlockVer)-1;
            VSpeed = 0;
            }
        }
        
    //Hareketi gerçekleştir
    if argument0 y += VSpeed;
}
