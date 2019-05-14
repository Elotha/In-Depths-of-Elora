///Defaults

{
    ini_open(string_lower(current_profile) + "_config.ini");
    
    control_string[controlkeys.left] = "LEFT ARROW";
    control[controlkeys.left] = vk_left;
    ini_write_string("Controls",controlkeys.left,control_string[controlkeys.left]);
    
    control_string[controlkeys.right] = "RIGHT ARROW";
    control[controlkeys.right] = vk_right;
    ini_write_string("Controls",controlkeys.right,control_string[controlkeys.right]);
    
    control_string[controlkeys.jump] = "SPACE";
    control[controlkeys.jump] = vk_space;
    ini_write_string("Controls",controlkeys.jump,control_string[controlkeys.jump]);
    
    control_string[controlkeys.cameraup] = "UP ARROW";
    control[controlkeys.cameraup] = vk_up;
    ini_write_string("Controls",controlkeys.cameraup,control_string[controlkeys.cameraup]);
    
    control_string[controlkeys.cameradown] = "DOWN ARROW";
    control[controlkeys.cameradown] = vk_down;
    ini_write_string("Controls",controlkeys.cameradown,control_string[controlkeys.cameradown]);
    
    control_string[controlkeys.interact] = "E";
    control[controlkeys.interact] = ord('A');
    ini_write_string("Controls",controlkeys.interact,control_string[controlkeys.interact]);
    
    control_string[controlkeys.journal] = "J";
    control[controlkeys.journal] = ord('J');
    ini_write_string("Controls",controlkeys.journal,control_string[controlkeys.journal]);
    
    control_string[controlkeys.hud] = "LEFT CONTROL";
    control[controlkeys.hud] = vk_lcontrol;
    ini_write_string("Controls",controlkeys.hud,control_string[controlkeys.hud]);
    
    control_string[controlkeys.music] = "M";
    control[controlkeys.music] = ord('M');
    ini_write_string("Controls",controlkeys.music,control_string[controlkeys.music]);
    
    control_string[controlkeys.sounds] = "N";
    control[controlkeys.sounds] = ord('N');
    ini_write_string("Controls",controlkeys.sounds,control_string[controlkeys.sounds]);
    
    obj_Audio.music_key = control[controlkeys.music];
    obj_Audio.sounds_key = control[controlkeys.sounds];
    
    ini_close();
    
    global.wasd_check = true;
}
