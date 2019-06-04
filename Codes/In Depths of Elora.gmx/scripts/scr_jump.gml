///Jumping

{
    if jump_permission && movement_permission //Zıplama iznimiz var mı?
        {
        if keyboard_check_pressed(control[controlkeys.jump])  //Inputlar
            {
            var last_count = jump_count;
            //if place_meeting(x,y,obj_WallJump) then jump_count = 0; else jump_count = last_count;
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
                    scr_play_sound(choose(snd_Jump1,snd_Jump2,snd_Jump3,snd_Jump4,snd_Jump5));
                    }
                    
                if jump_count = 0 //Yerde miyiz?
                    {
                    jump_count++;
                    v_speed = jump_speed;
                    scr_play_sound(choose(snd_Jump1,snd_Jump2,snd_Jump3,snd_Jump4,snd_Jump5));
                    }
                }
            }
        if jump_count != 0 && keyboard_check(control[controlkeys.jump])
            {
            if sign(v_speed) = -1 then v_speed -= jump_plus;
            }
        }
}
