///Dash

{
    if DashCooldown = 0 { //Dash atmamışsak
        if Focus = "Character" { //Kontrol odağı karakterde ise
            if MovementPermission {
                if DashPreset = DASHKEY or DashPreset = DASHBOTH {
                    if keyboard_check_pressed(Control[ControlKeys.Dash]) {
                        DashCooldown = DashCooldownMax;
                        if InputDir != 0 then HSpeed = DashSpeed*InputDir; else HSpeed = DashSpeed*image_xscale;
                        VSpeed = 0;
                        MovementPermission = false;
                        Dash = true;
                        }
                        
                    }
                if DashPreset = PRESSTWICE or DashPreset = DASHBOTH {
                    if keyboard_check_pressed(Control[ControlKeys.Left]) {
                        if alarm[3] != -1 {
                            if DashCheck = -1 {
                                DashCooldown = DashCooldownMax;
                                HSpeed = -DashSpeed;
                                VSpeed = 0;
                                MovementPermission = false;
                                Dash = true;
                                DashCheck = 0;
                                alarm[3] = -1;
                                }
                            else {
                                DashCheck = -1;
                                alarm[3] = DashKeyTime;
                                }
                            }
                        else {
                            alarm[3] = DashKeyTime;
                            DashCheck = -1;
                            }
                                
                        }
                    else if keyboard_check_pressed(Control[ControlKeys.Right]) {
                        if alarm[3] != -1 {
                            if DashCheck = 1 {
                                DashCooldown = DashCooldownMax;
                                HSpeed = DashSpeed;
                                VSpeed = 0;
                                MovementPermission = false;
                                Dash = true;
                                DashCheck = 0;
                                alarm[3] = -1;
                                }
                            else {
                                DashCheck = 1;
                                alarm[3] = DashKeyTime;
                                }
                            }
                        else {
                            alarm[3] = DashKeyTime;
                            DashCheck = 1;
                            }
                        }
                    }
                }
            }
        }
    else if DashCooldown > 0 { //Dash atmışsak
        DashCooldown--;
        if !MovementPermission && Focus = "Character" && !scr_IfDash() {
            MovementPermission = true;
            scr_HorizontalInputs();
            }
        }
}
