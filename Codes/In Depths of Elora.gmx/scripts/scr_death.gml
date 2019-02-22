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
        death.death_type = argument0;
        death.image_xscale = image_xscale;
        lives--;
        instance_destroy();
        }
    else
        {
        if global.sounds then audio_play_sound(choose(snd_Hurt1,snd_Hurt2,snd_Hurt3,snd_Hurt4,snd_Hurt5,snd_Hurt6,snd_Hurt7),15,false);
        }
}
