///Keyboard Inputs

{
    if invincibility && !movement_permission
            {
            if v_speed < -0.1 then v_speed += 0.1;
            }
            
    var left_press, right_press;
    if movement_permission
        {
        if keyboard_check(control[controlkeys.left]) || (wasd_check && keyboard_check(ord('A'))) then left_press = true; else left_press = false;
        if keyboard_check(control[controlkeys.right]) || (wasd_check && keyboard_check(ord('D'))) then right_press = true; else right_press = false;

        
        if ((left_press && right_press) xor (!left_press && !right_press)) then h_speed = 0;
        if left_press && !right_press then h_speed = -run_speed;
        if !left_press && right_press then h_speed = run_speed;
        
        if sign(h_speed) = 1 then dir_sign = 1;
        if sign(h_speed) = -1 then dir_sign = -1;
        }
}
