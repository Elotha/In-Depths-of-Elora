///Create Only One
//
//argument0: x koordinatı
//argument1: y koordinatı
//argument2: yaratılacak obje

{
    if instance_number(argument2) = 0 {
        var Inst = instance_create(argument0,argument1,argument2);
        return Inst;
        }
    else return noone;
}
