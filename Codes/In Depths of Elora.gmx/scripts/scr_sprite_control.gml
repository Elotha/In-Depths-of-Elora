///Sprite Control

{
    if invincibility && !movement_permission && !jump_permission
        {
        if sprite_index != spr_character_damaged
            {
            sprite_index = spr_character_damaged;
            image_index = 0;
            image_speed = 1/6;
            }
        }
        
    else
        {
        if h_speed != 0 then image_xscale = sign(h_speed);
        if block_down != noone
            {
            if block_down.y > y
                {
                if h_speed = 0 && sprite_index != spr_character_idle
                    {
                    sprite_index = spr_character_idle;
                    image_index = 0;
                    image_speed = 1/12;
                    }
                
                if h_speed != 0 && sprite_index != spr_character_run
                    {
                    sprite_index = spr_character_run;
                    image_index = 0;
                    image_speed = 1/6;
                    }
                }
            }
        else
            {
            if (sprite_index = spr_character_jump && image_index = 5) || (sprite_index = spr_character_doublejump && image_index = 3) || (sign(v_speed) = 1 && sprite_index != spr_character_fly)
                {
                sprite_index = spr_character_fly;
                image_index = 0;
                image_speed = 1/6;
                }
                
            if sign(v_speed) = -1
                {
                if jump_count = 1 && sprite_index != spr_character_jump  && sprite_index != spr_character_fly
                    {
                    sprite_index = spr_character_jump;
                    image_index = 0;
                    image_speed = 1/6;
                    }
                }
            }
        }
}
