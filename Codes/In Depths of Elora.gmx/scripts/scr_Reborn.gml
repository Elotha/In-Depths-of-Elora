///Reborn

{
    //Temel Değişkenler
    MovementPermission = true; //Hareket etme tuşlarına basma iznimiz var mı?
    HSpeed = 0; //Yatay hız
    VSpeed = 0; //Dikey hız
    BlockUp = noone;
    BlockDown = noone;
    BlockCenter = noone;
    BlockHor = noone;
    
    //Zıplama
    JumpCount = 0; //Zıplama sayısı
    JumpPermission = true; //Zıplama tuşuna basma iznimiz var mı?
    
    //Dash
    Dash = false; //Anlık olarak dashte miyiz?
    DashCooldown = 0; //Dash cooldown
    
    //Görsel Değişkenler
    image_speed = 1/6; //Animasyon hızı   
    SpriteChange = false; //Sprite'ın değişip değişmediğini kontrol eden değer
    LastSprite = spr_CharacterIdle; //Step başında hangi sprite'a sahip olduğunu kaydeden değer
    SpriteLock = false;
    
    //Hasar Değişkenleri
    Invincibility = 0; //Hasar alma durumu
    InvincibilityCount = 0; //Yanıp sönme sayısı
    
    //Diğer Değişkenler
    Resistance = 1; //Direnç
    obj_HUD.SoulPower = obj_HUD.SoulPowerMax;
    global.Focus = "Character"; //Kontrol odağını karakter yap
    Focus = global.Focus;
    
    //Büyü görüşü modu
    MagicalSight = false; //Aktivasyon
    //MagicalSightTime = MagicalSightTimeMax; //Kalan kullanım
    MagicalSightCount = 0; //Alarm çalıştırma sayısı
    
    with(obj_Camera) { //Kamerayı karaktere sabitle
        x = other.x;
        y = other.y;
        }
}
