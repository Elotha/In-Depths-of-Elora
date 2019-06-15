///Keyboard Inputs

{
    if invincibility && !movement_permission
        {
        if v_speed < -0.1 then v_speed += 0.1;
        }
            
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
            exit;
            }
        }
    else if dash_cooldown > 0
        {
        dash_cooldown--;
        if scr_permission_check() then if !movement_permission then if dash_cooldown < dash_cooldown_max-dash_range+8 then movement_permission = true;
        }
    
    //Left Right
    var left_press, right_press;
    if movement_permission
        {
        if keyboard_check(control[controlkeys.left]) then left_press = true; else left_press = false;
        if keyboard_check(control[controlkeys.right]) then right_press = true; else right_press = false;

        
        if ((left_press && right_press) xor (!left_press && !right_press)) then h_speed = 0;
        if left_press && !right_press then h_speed = -run_speed;
        if !left_press && right_press then h_speed = run_speed;
        
        if sign(h_speed) = 1 then dir_sign = 1;
        if sign(h_speed) = -1 then dir_sign = -1;
        }
}
