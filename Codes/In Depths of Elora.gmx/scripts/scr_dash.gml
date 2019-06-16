///Dash

{
    //Dash
    if dash_cooldown = 0 
        {
        if keyboard_check_pressed(ord('D')) && movement_permission
            {
            dash_cooldown = dash_cooldown_max;
            alarm[3] = dash_range;
            h_speed = dash_speed*image_xscale;
            v_speed = 0;
            movement_permission = false;
            dir_sign = image_xscale;
            }
        }
    else if dash_cooldown > 0
        {
        dash_cooldown--;
        if scr_permission_check() then if !movement_permission then if dash_cooldown < dash_cooldown_max-dash_range+8 then movement_permission = true;
        }
}
