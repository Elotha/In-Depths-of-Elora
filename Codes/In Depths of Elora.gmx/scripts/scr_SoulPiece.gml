///scr_SoulPiece()

//Soul power eklenecek

{
    if Focus = "Character" {
        if MagicalSight {
            if SoulPieceCount > 0 then SoulPieceCount--;
            else if !SoulPieceCollision then image_blend = c_aqua;
            if keyboard_check_pressed(Control[ControlKeys.ManaPotion]) && !Dash {
                if !SoulPiece { //Ruh parçası bırak
                    if obj_HUD.SoulPower >= 40  && SoulPieceCount = 0 {
                        SoulPowerAmount = floor(obj_HUD.SoulPower/4);
                        obj_HUD.SoulPower -= SoulPowerAmount;
                        SoulPiece = true;
                        SoulPieceCollision = true;
                        SoulPieceCount = 30;
                        SoulPieceID = instance_create(x,y,obj_SoulPiece);
                        with(SoulPieceID) {
                            sprite_index = other.sprite_index;
                            image_index = other.image_index;
                            image_xscale = other.image_xscale;
                            image_yscale = other.image_yscale;
                            image_blend = other.image_blend;
                            mask_index = other.mask_index;
                            depth = other.depth;
                            JumpCount = other.JumpCount;
                            MagicalInteraction = other.MagicalInteraction;
                            if MagicalInteraction then InteractionID = other.InteractionID;
                            }
                        image_blend = c_fuchsia;
                        }
                    }
                else scr_SoulPieceReturn(); //Ruh parçasına dön
                }
            }
        }
    if SoulPiece {
        if SoulPieceCollision {
            if !place_meeting(x,y,obj_SoulPiece) then SoulPieceCollision = false; //Ruh parçasının içinden çıkma
            }
        else if place_meeting(x,y,obj_SoulPiece) then scr_SoulPieceReturn(); //Tekrar değersek ruh parçasına dön
        }
}
