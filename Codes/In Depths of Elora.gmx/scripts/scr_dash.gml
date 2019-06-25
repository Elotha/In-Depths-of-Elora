///Dash

{
    if DashCooldown = 0 { //Dash atmamışsak
        if Focus = "Character" { //Kontrol odağı karakterde ise
            if keyboard_check_pressed(Control[ControlKeys.Dash]) && MovementPermission {
                DashCooldown = DashCooldownMax;
                if InputDir != 0 then HSpeed = DashSpeed*InputDir; else HSpeed = DashSpeed*image_xscale;
                VSpeed = 0;
                MovementPermission = false;
                Dash = true;
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
