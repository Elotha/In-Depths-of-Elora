///Jumping

{
    if jump_permission //Zıplama iznimiz var mı?
        {
        if keyboard_check_pressed(vk_space) || (old_mode && (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord('W'))))  //Inputlar
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
                    var effect = instance_create(x+(-8*image_xscale),y+26+v_speed+falling_speed,obj_DoubleJump_Effect);
                    with(effect) image_xscale = other.image_xscale;
                    if global.sounds
                        {
                        var snd = audio_play_sound(choose(snd_Jump1,snd_Jump2,snd_Jump3,snd_Jump4,snd_Jump5),15,false);
                        sound_volume(snd,1);
                        }
                    }
                    
                if jump_count = 0 //Yerde miyiz?
                    {
                    jump_count++;
                    v_speed = jump_speed;
                    if global.sounds
                        {
                        var snd = audio_play_sound(choose(snd_Jump1,snd_Jump2,snd_Jump3,snd_Jump4,snd_Jump5),15,false);
                        sound_volume(snd,1);
                        }
                    }
                }
            }
        }
}
