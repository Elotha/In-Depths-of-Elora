///Jumping

{
    if jump_permission //Zıplama iznimiz var mı?
        {
        if keyboard_check_pressed(vk_space) //Inputlar
            {
            if jump_count < jump_max //Zıplama sayımız maksimum zıplama sayısından düşük mü?
                {
                if jump_count = 1 //İkinci kez zıplıyoruz
                    {
                    jump_count++;
                    alarm[1] = -1;
                    v_speed = jump_speed;
                    sprite_index = spr_CharacterDoubleJump;
                    image_index = 0;
                    image_speed = 1/6;
                    var effect = instance_create(x+(-8*image_xscale),y+26+v_speed+global.falling_speed,obj_DoubleJump_Effect);
                    with(effect) image_xscale = other.image_xscale;
                    }
                    
                if jump_count = 0 //Yerde miyiz?
                    {
                    jump_count++;
                    v_speed = jump_speed;
                    }
                }
            }
        }
}
