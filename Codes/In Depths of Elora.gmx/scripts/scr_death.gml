///Death
//
//argument0 = Death Type

{
    if health > 0
        {
        health -= other.damage*resistance;
        invincibility = true;
        sprite_index = spr_CharacterDamaged;
        image_index = 0;
        image_speed = 1/6;
        speed = 0;
        h_speed = lengthdir_x(7,90+(30*image_xscale));
        v_speed = lengthdir_y(7,90+(30*image_xscale));
        jump_permission = false;
        movement_permission = false;
        alarm[2] = (1/image_speed)*image_number;
        }
        
    if health <= 0
        {
        var death = instance_create(x,y,obj_CharacterDeath);
        with(death) 
            {
            death_type = argument0;
            image_xscale = other.image_xscale;
            }
        lives--;
        instance_destroy();
        }
}
