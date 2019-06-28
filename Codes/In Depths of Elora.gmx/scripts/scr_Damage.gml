///Death

{
    if !MagicalSight && global.Immortality then exit; //Ölümsüzlük modu açıksa ve büyü görüşünde değilsek
    
    //Bir çevre öğesine çarptık mı?
    var Environment = instance_place(x,y,obj_Environment);
    if Environment != noone {
        /*if Environment.object_index = obj_Liquid { //Sıvıya girmişsek işler değişir
            
            }*/
        }
    
    if Invincibility then exit; //Canımız zaten yanmışsa veya yanamayacak durumdaysa çalıştırma
    
    //Büyü görüşü modunda bir ruh taşına çarptık mı?
    if MagicalSight {
        var SoulStone = instance_place(x,y,obj_SoulStone);
        if SoulStone != noone {
            if Dash { //Ruh taşına dash atmışsak
                Other = SoulStone.MonsterID;
                scr_MagicalInteraction(true);
                exit;
                }
            else if global.Immortality then exit; //Büyü görüşü modunda ruh taşına çarptığımızda ölümsüzlük açıksa işlem yapma
            }
        }
    
    //Bir canavara çarptık mı?
    var Monster = instance_place(x,y,obj_Monster);
        
    //Herhangi bir şeye çarptıysak
    Other = noone;
    if MagicalSight { //Büyü görüşü modunda canavarlar bize zarar vermez
        if SoulStone != noone then Other = SoulStone.MonsterID;
        else if Environment != noone then Other = Environment;
        }
    else {
        if Monster != noone then Other = Monster;
        else if Environment != noone then Other = Environment;
        }
    
    if Other != noone { //Çarptığımız şey ile etkileşime girecek miyiz?
        if Other.object_index = obj_MagicalPlant && !MagicalSight then exit; //Eğer büyü görüşünde değilsek ve Magical Plant'a çarpmışsak çalıştırma
        if Other.object_index = obj_Minyoo && Other.sprite_index = spr_MinyooLines then exit; //Minyoo yukarı uçuyorsa çalıştırma
        obj_HUD.Health = max(0,obj_HUD.Health-(Other.Damage*Resistance));
        if obj_HUD.Health > 0 { //Henüz ölmedik
            Invincibility = true;
            HSpeed = -7*image_xscale;
            VSpeed = -7;
            JumpPermission = false;
            if DashCooldown < 40 then DashCooldown = 40;
            Dash = false;
            scr_PlaySound(choose(snd_Hurt1,snd_Hurt2,snd_Hurt3,snd_Hurt4,snd_Hurt5));
            
            SpriteLock = true;
            sprite_index = spr_CharacterDamaged;
            mask_index = sprite_index;
            image_index = 0;
            image_speed = global.FrameRate;
            alarm[2] = (1/image_speed)*image_number+20;
            }
        else scr_Death(); //Öldük
        scr_HUDInteract(); //Eğer HUD sadece etkileşim anında gözükür olarak ayarlanmışsa
        if MagicalSight then scr_MagicalSightClose();
        if Focus = "Journal" then scr_JournalClose();
        }
            
}
