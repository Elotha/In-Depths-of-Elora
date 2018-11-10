///Alpha

{
    var corpse = instance_create(x,y,obj_monster_corpse);
    switch(object_index)
        {
        case obj_palpus:
            with(corpse) sprite_index = spr_palpus_death;
            break;
            
        case obj_minyoo:
            with(corpse) sprite_index = spr_minyoo_death;
            break;
            
        case obj_beulian:
            with(corpse) sprite_index = spr_beulian_death;
            break;
            
        case obj_zodax:
            with(corpse) sprite_index = spr_zodax_death;
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
