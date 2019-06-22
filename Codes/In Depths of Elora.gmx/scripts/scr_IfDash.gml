///If Dash

{
    if Dash {
        if DashCooldown < DashCooldownMax-DashRange {
            Dash = false;
            HSpeed -= 4*sign(HSpeed);
            return false;
            }
        else return true;
        }
    else return false;
}
