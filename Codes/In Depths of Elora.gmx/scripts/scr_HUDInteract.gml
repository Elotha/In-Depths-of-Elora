///HUD Interact

{
    with(obj_HUD) if HUD = ONLY_INTERACT {//HUD When Interact
        HUDAlpha = 0.25;
        alarm[2] = 1; //Alphayı adım adım arttır
        alarm[1] = 120; //HUD'un geri kapanacağı süre
        }
}
