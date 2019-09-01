///scr_DoorCheck()

{
    if global.Focus = "Character" {
        DoorID = instance_nearest(x,y,obj_DoorParent);
        if (DoorID.object_index = obj_DoorBlue && !MagicalSight) or (DoorID.object_index = obj_DoorGray && MagicalSight) or !DoorID.Locked {
            obj_HUD.DoorCheck = false;
            exit;
            }
        if DoorID.Proximity {
            if !obj_HUD.DoorCheck or obj_HUD.DoorCheck && DoorID != DoorIDPrevious {
                switch(DoorID.object_index) {
                    case obj_DoorGolden:
                        with(obj_HUD) {
                            KeyShow = "Golden"; 
                            KeyImage = 0;
                            KeyType = GOLDEN;
                            }       
                        break;
                        
                    case obj_DoorSilver:
                        with(obj_HUD) {
                            KeyShow = "Silver"; 
                            KeyImage = 1;
                            KeyType = SILVER;
                            }      
                        break;
                        
                    case obj_DoorGray:
                        with(obj_HUD) {
                            KeyShow = "Gray"; 
                            KeyImage = 2;
                            KeyType = GRAY;
                            }      
                        break;
                        
                    case obj_DoorBlue:
                        with(obj_HUD) {
                            KeyShow = "Blue"; 
                            KeyImage = 3;
                            KeyType = BLUE;
                            }      
                        break;
                    }
                obj_HUD.KeyReq = DoorID.KeyReq;
                obj_HUD.DoorCheck = true;
                if DoorID.Locked then if obj_HUD.KeyNumber[obj_HUD.KeyType] >= obj_HUD.KeyReq then DoorKey = true; else DoorKey = false;
                obj_HUD.DoorCheck = true;
                }
            if keyboard_check_pressed(Control[ControlKeys.Interact]) { //Kapıyı açma mekaniği
                if DoorKey {
                    DoorID.Unlock = true;
                    obj_HUD.KeyNumber[obj_HUD.KeyType] -= obj_HUD.KeyReq;
                    }
                }    
            }
        else obj_HUD.DoorCheck = false;
        DoorIDPrevious = DoorID;
        }       
}
