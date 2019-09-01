///Magical Sight

{
    //Büyü görüşü modu
    if keyboard_check_pressed(Control[ControlKeys.MagicalSight]) && Focus = "Character" { //Açma Kapama
        if !MagicalSight && obj_HUD.SoulPower > 10 { //Kapalıysa
            if (MovementPermission or Dash) {
                MagicalSight = true;
                
                //Renklendirmeler ve görünürlük ayarlamaları
                image_blend = c_aqua;
                with(obj_Environment) {
                    if object_index = obj_Plant || object_index = obj_MagicalPlant then event_user(0);
                    else image_blend = c_aqua;
                    }
                with(obj_Geyser) image_blend = c_aqua;
                with(obj_Checkpoint) image_blend = c_aqua;
                with(obj_BlockTiming) image_blend = c_aqua;
                with(obj_BlockTiming2) image_blend = c_aqua;
                with(obj_BlockTimingGray) visible = false;
                with(obj_BlockTimingGray2) visible = false;
                with(obj_BlockTimingBlue) visible = true;
                with(obj_BlockTimingBlue2) visible = true;
                with(obj_BlockGray) instance_change(obj_PlaceholderGray,false);
                tile_layer_hide(401);
                with(obj_PlaceholderBlue) instance_change(obj_BlockBlue,false);
                tile_layer_show(402);
                with(obj_ZodaxBush) image_blend = c_aqua;
                with(obj_KeyMonster) {
                    if sprite_index = spr_KeyMonsterBlue then visible = true;
                    if sprite_index = spr_KeyMonsterGray then visible = false;
                    }
                with(obj_KeyBlue) visible = true;
                with(obj_KeyGray) visible = false;
                with(obj_DoorGray) visible = false;
                with(obj_DoorBlue) visible = true;
                
                
                var Tiles = tile_get_ids();
                for(var i = 0; i < array_length_1d(Tiles); i++) {
                    var tt = tile_get_background(Tiles[i]);
                    if tt = ts_Platforms then tile_set_background(Tiles[i],ts_PlatformsBlue);
                    else if tt = ts_Liquid then tile_set_background(Tiles[i],ts_LiquidBlue);
                    }
                }
            }
        else scr_MagicalSightClose();
        }
        
    if MagicalSight { //Açıksa zamanı azalt
        if --obj_HUD.SoulPower = 0 then scr_MagicalSightClose();
        }
    else if keyboard_check_pressed(Control[ControlKeys.ManaPotion]) && Focus = "Character" { //Büyü görüşünde değilsek, mana potion tuşuna basarsak ve hareket özgürlüğümüz varsa
        if obj_HUD.MagicEssence > 0 && !MagicalSight && obj_HUD.SoulPower != obj_HUD.SoulPowerMax {
            obj_HUD.MagicEssence--;
            obj_HUD.SoulPower = min(obj_HUD.SoulPower+40,obj_HUD.SoulPowerMax);
            alarm[4] = -1;
            }
        }

}
