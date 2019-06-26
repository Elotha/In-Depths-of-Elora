///Magical Sight

{
    //Büyü görüşü modu
    if keyboard_check_pressed(Control[ControlKeys.MagicalSight]) && (MovementPermission or Dash) && Focus = "Character" { //Açma Kapama
        if !MagicalSight && MagicalSightTime > 10 { //Kapalıysa
            MagicalSight = true;
            image_blend = c_aqua;
            with(obj_Environment) {
                if object_index = obj_Plant || object_index = obj_MagicalPlant then event_user(0);
                else image_blend = c_aqua;
                }
            with(obj_Monster) image_blend = c_aqua;
            with(obj_Geyser) image_blend = c_aqua;
            with(obj_Checkpoint) image_blend = c_aqua;
            with(obj_PlatformTiming) image_blend = c_aqua;
            with(obj_PlatformTiming2) image_blend = c_aqua;
            with(obj_ZodaxSign) image_blend = c_aqua;
            var Tiles = tile_get_ids();
            for(var i = 0; i < array_length_1d(Tiles); i++) {
                var tt = tile_get_background(Tiles[i]);
                if tt = ts_Platforms then tile_set_background(Tiles[i],ts_PlatformsBlue);
                else if tt = ts_Liquid then tile_set_background(Tiles[i],ts_LiquidBlue);
                }
            scr_SoulStones(true);
            }
        else scr_MagicalSightClose();
        }
        
    if MagicalSight { //Açıksa zamanı azalt
        if --MagicalSightTime = 0 then scr_MagicalSightClose();
        }
    else if keyboard_check_pressed(Control[ControlKeys.ManaPotion]) && Focus = "Character" { //Büyü görüşünde değilsek, mana potion tuşuna basarsak ve hareket özgürlüğümüz varsa
        if obj_HUD.MagicEssence > 0 && !MagicalSight && MagicalSightTime != MagicalSightTimeMax {
            obj_HUD.MagicEssence--;
            MagicalSightTime = MagicalSightTimeMax;
            alarm[4] = -1;
            }
        }

}
