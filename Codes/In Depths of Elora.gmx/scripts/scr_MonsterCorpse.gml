///Alpha

{
    var Corpse = instance_create(x,y,obj_MonsterCorpse);
    switch(object_index) {
        case obj_Palpus:
            with(Corpse) sprite_index = spr_PalpusDeath;
            break;
            
        case obj_Minyoo:
            with(Corpse) sprite_index = spr_MinyooDeath;
            break;
            
        case obj_Beulian:
            with(Corpse) sprite_index = spr_BeulianDeath;
            break;
            
        case obj_Zodax:
            with(Corpse) sprite_index = spr_ZodaxDeath;
            break;
            
        }
    with(Corpse) {
        image_xscale = other.image_xscale;
        image_index = image_number-1;
        image_speed = 0;
        alarm[0] = 2;
        HSpeed = other.HSpeed;
        VSpeed = other.VSpeed;
        depth = MONSTER;
        }
        
    instance_destroy();
}
