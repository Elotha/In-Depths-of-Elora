///Friction

{
    if h_speed > 0.05 then h_speed -= 0.05;
    if h_speed < -0.05 then h_speed += 0.05;
    if h_speed > -0.05 && h_speed < 0.05 then h_speed = 0;
    
    if v_speed > 0.05 then v_speed -= 0.05;
    if v_speed < -0.05 then v_speed += 0.05;
    if v_speed > -0.05 && v_speed < 0.05 then v_speed = 0;
}
