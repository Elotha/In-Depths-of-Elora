///Alpha

{
    var corpse = instance_create(x,y,obj_MonsterCorpse);
    switch(object_index)
        {
        case obj_Palpus:
            with(corpse) sprite_index = spr_PalpusDeath;
            break;
            
        case obj_Minyoo:
            with(corpse) sprite_index = spr_MinyooDeath;
            break;
            
        case obj_Beulian:
            with(corpse) sprite_index = spr_BeulianDeath;
            break;
            
        case obj_Zodax:
            with(corpse) sprite_index = spr_ZodaxDeath;
            break;
            
        }
    with(corpse)
        {
        image_xscale = other.image_xscale;
        image_index = image_number-1;
        image_speed = 0;
        alarm[0] = 2;
        h_speed = other.h_speed;
        v_speed = other.v_speed;
        }
        
    instance_destroy();
}
