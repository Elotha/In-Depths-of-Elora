///Load

{
    //Controls
    
    if control_left_string[0] = control_left_string[1] then controls[MENU_LEFT] = "LEFT: " + control_left_string[0];
    else controls[MENU_LEFT] = "LEFT: " + control_left_string[0] + " OR " + control_left_string[1];
    
    if control_right_string[0] = control_right_string[1] then controls[MENU_RIGHT] = "RIGHT: " + control_right_string[0];
    else controls[MENU_RIGHT] = "RIGHT: " + control_right_string[0] + " OR " + control_right_string[1];
    
    controls[JUMP] = "JUMP: " + control_jump_string;
    
    if control_cameraup_string[0] = control_cameraup_string[1] then controls[CAMERAUP] = "CAMERA UP: " + control_cameraup_string[0];
    controls[CAMERAUP] = "CAMERA UP: " + control_cameraup_string[0] + " OR " + control_cameraup_string[1];
    
    if control_cameradown_string[0] = control_cameradown_string[1] then controls[CAMERADOWN] = "CAMERA DOWN: " + control_cameradown_string[0];
    controls[CAMERADOWN] = "CAMERA DOWN: " + control_cameradown_string[0] + " OR " + control_cameradown_string[1];;
    
    controls[CONT_JOURNAL] = "JOURNAL: " + control_journal_string;;
    controls[MENU_INTERACT] = "INTERACT: " + control_interact_string;
    controls[PAUSEMENU] = "PAUSE MENU: " + control_pause_string;;
    controls[HUDKEY] = "HUD KEY: " + control_pause_string;;
    controls[CONT_DEFAULT] = "RETURN TO DEFAULT";
    controls[CONT_BACK] = "BACK";
    
    //Gameplay
    
    global.hud = hud;
    global.on_startup = on_startup;
    global.dialog_speed = dialog_speed;
    global.language = language;
    global.speedrun_timer = speedrun_timer;
    
    hud[0] = "ALWAYS SHOW";
    hud[1] = "ONLY WHEN INTERACT";
    hud[2] = "ONLY WHEN PRESS THE HUD KEY";
    hud[3] = "NEVER";
    
    on_startup[0] = "MENU";
    on_startup[1] = "CONTINUE";
    
    dialog_speed[0] = "1";
    dialog_speed[1] = "2";
    dialog_speed[2] = "4";
    dialog_speed[3] = "8";
    
    language[0] = "ENGLISH";
    language[1] = "TURKISH";
    
    speedrun_timer[0] = "OFF";
    speedrun_timer[1] = "ON";
    
    gameplay[HUD] = "HUD: " + "<" + hud[0] + ">";
    gameplay[ONSTARTUP] = "ON STARTUP: " + "<" + on_startup[0] + ">";
    gameplay[DIALOGSPEED] = "DIALOG SPEED: " + "<" + dialog_speed[1] + ">";
    gameplay[LANGUAGE] = "LANGUAGE: " + "<" + language[0] + ">";
    gameplay[SPEEDRUN] = "SPEEDRUN TIMER: " + "<" + speedrun_timer[0] + ">";
    gameplay[GAMEP_BACK] = "BACK";
    
    //Graphics
    
    /*global.fullscreen = fullscreen;
    global.resolution_x = resolution_x;
    global.resolution_y = resolution_y;
    global.graphics_quality = graphics_quality;*/
    
    v_sync[0] = "ON";
    v_sync[1] = "OFF";
    
    fullscreen[0] = "ON";
    fullscreen[1] = "OFF";
    
    resolution[0] = "1920 X 1080";
    resolution[1] = "1600 X 900";
    
    graphics_quality[0] = "HIGH";
    graphics_quality[1] = "LOW";
    
    graphics[V_SYNC] = "V-SYNC: " + "<" + v_sync[0] + ">";
    graphics[FULLSCREEN] = "FULLSCREEN: " + "<"  + fullscreen[0] + ">";;
    graphics[RESOLUTION] = "RESOLUTION: " + "<"  + resolution[0] + ">";;
    graphics[GRAP_QUALITY] = "GRAPHICS QUALITY: " + "<"  + graphics_quality[0] + ">";;
    graphics[GRAP_BACK] = "BACK";
    
    //Audio
    
    audio[MASTER_VOLUME] = "MASTER VOLUME: " + "<" + string(global.master_volume) + "/10" + ">";;
    audio[MUSIC_VOLUME] = "MUSIC VOLUME: " + "<" + string(global.music_volume) + "/10" + ">";;;
    audio[SOUNDS_VOLUME] = "SOUND EFFECTS VOLUME: " + "<" + string(global.sounds_volume) + "/10" + ">";;;
    audio[VOICES_VOLUME] = "VOICES VOLUME: " + "<" + string(global.voices_volume) + "/10" + ">";;;
    audio[AUDIO_BACK] = "BACK";
}
