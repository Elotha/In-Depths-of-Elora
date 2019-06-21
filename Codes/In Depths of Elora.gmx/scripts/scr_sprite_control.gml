///Sprite Control

{
    if magical_sight then if sprite_index = spr_DamastFly then exit;
    if invincibility && !movement_permission && !jump_permission
        {
        if sprite_index != spr_CharacterDamaged
            {
            sprite_index = spr_CharacterDamaged;
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
                if h_speed = 0 && sprite_index != spr_CharacterIdle
                    {
                    sprite_index = spr_CharacterIdle;
                    image_index = 0;
                    image_speed = 1/12;
                    }
                
                if h_speed != 0 && sprite_index != spr_CharacterRun
                    {
                    sprite_index = spr_CharacterRun;
                    image_index = 0;
                    image_speed = 1/6;
                    }
                }
            }
        else
            {
            if (sprite_index = spr_CharacterJump && image_index = 5) || (sprite_index = spr_CharacterDoubleJump && image_index = 3) || (sign(v_speed) = 1 && sprite_index != spr_CharacterFly)
                {
                sprite_index = spr_CharacterFly;
                image_index = 0;
                image_speed = 1/6;
                }
                
            if sign(v_speed) = -1
                {
                if jump_count = 1 && sprite_index != spr_CharacterJump  && sprite_index != spr_CharacterFly
                    {
                    sprite_index = spr_CharacterJump;
                    image_index = 0;
                    image_speed = 1/6;
                    }
                }
            }
        }
    if sprite_index != last_sprite then sprite_change = true; else sprite_change = false;
}
