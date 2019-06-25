///Sprite Control

{
    if Focus = "Death" then exit;
    if SpriteLock then exit; //Canımız yanmışsa ve canımızın yanma spriteında kitlenmişse çalıştırma
    if MagicalSight then if sprite_index = spr_DamastFly then exit; //Damasta dönüşmüşsek çalıştırma
    if HSpeed != 0 then image_xscale = sign(HSpeed); //Yatay hareket varsa simetriyi yatay hıza göre ayarla
    if BlockDown != noone && BlockCenter = noone { //Yerdeysek
        if BlockDown.y > y {
            if HSpeed = 0 && sprite_index != spr_CharacterIdle {
                sprite_index = spr_CharacterIdle;
                image_index = 0;
                image_speed = 1/12;
                }
            
            if HSpeed != 0 && sprite_index != spr_CharacterRun {
                sprite_index = spr_CharacterRun;
                image_index = 0;
                image_speed = 1/6;
                }
            }
        }
    else { //Havadaysak
        if Dash { //Dash varsa ve havadaysak FLY görseline geç
            if sprite_index != spr_CharacterFly { 
                sprite_index = spr_CharacterFly;
                image_index = 0;
                }
            }
        else if (sprite_index = spr_CharacterJump && image_index = 5) || (sprite_index = spr_CharacterDoubleJump && image_index = 3) || (sign(VSpeed) = 1 && sprite_index != spr_CharacterFly) {
            sprite_index = spr_CharacterFly;
            image_index = 0;
            image_speed = 1/6;
            }
            
        if sign(VSpeed) = -1 {
            if JumpCount = 1 && sprite_index != spr_CharacterJump  && sprite_index != spr_CharacterFly {
                sprite_index = spr_CharacterJump;
                image_index = 0;
                image_speed = 1/6;
                }
            }
        }
    if sprite_index != LastSprite then SpriteChange = true; else SpriteChange = false;
}
