///scr_SoulPieceReturn()

{
    x = SoulPieceID.x;
    y = SoulPieceID.y;
    sprite_index = SoulPieceID.sprite_index;
    image_index = SoulPieceID.image_index;
    image_xscale = SoulPieceID.image_xscale;
    image_yscale = SoulPieceID.image_yscale;
    image_blend = SoulPieceID.image_blend;
    mask_index = SoulPieceID.mask_index;
    depth = SoulPieceID.depth;
    JumpCount = SoulPieceID.JumpCount;
    MagicalInteraction = SoulPieceID.MagicalInteraction;
    if MagicalInteraction then InteractionID = SoulPieceID.InteractionID;
    destroy(SoulPieceID);
    SoulPiece = false;
    
    //Temel Değişkenler
    MovementPermission = true; //Hareket etme tuşlarına basma iznimiz var mı?
    HSpeed = 0; //Yatay hız
    VSpeed = 0; //Dikey hız
    BlockUp = noone;
    BlockDown = noone;
    BlockCenter = noone;
    BlockHor = noone;
    obj_HUD.SoulPower = max(obj_HUD.SoulPower,SoulPowerAmount);
    
    //Zıplama
    JumpPermission = true; //Zıplama tuşuna basma iznimiz var mı?
    
    //Dash
    Dash = false; //Anlık olarak dashte miyiz?
    DashCooldown = 0; //Dash cooldown
    
    //Görsel Değişkenler
    image_speed = 1/6; //Animasyon hızı   
    SpriteChange = false; //Sprite'ın değişip değişmediğini kontrol eden değer
    SpriteLock = false;
    
    //Hasar Değişkenleri
    Invincibility = 0; //Hasar alma durumu
    InvincibilityCount = 0; //Yanıp sönme sayısı
}
