///Horizontal Movement

//argument0: hareket gerçekleştirilecek mi?
//argument1: sürtünme kuvveti için başka bir faktör varsa true, yoksa false

{
     //Altında blok yoksa sürtünmeden etkilensin
     if BlockVer = noone || argument1 || abs(HSpeed) > HorLimit {
        if HSpeed > 0 then HSpeed = max(HSpeed+Friction*sign(HSpeed),0);
        if HSpeed < 0 then HSpeed = min(HSpeed+Friction*sign(HSpeed),0);
        }
        
    //Gittiği yatay yön serbest mi?
    if abs(HSpeed) > 0 {
        BlockHor = instance_place(x+floor(abs(HSpeed))*sign(HSpeed)+sign(HSpeed),y,obj_Block);
        if BlockHor != noone {
            move_contact_solid(90+(90*-sign(HSpeed)),HSpeed);
            HSpeed = 0;
            }
        }
        
    //Yatay hareketi gerçekleştir
    if argument0 then x += HSpeed;
}
