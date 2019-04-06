///Load

{
    //Profiles
    
    profiles[CURRENT_PROFILE] = "CURRENT PROFILE: " + current_profile;
    
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
    
    global.hud = hud_current;
    global.on_startup = on_startup_current;
    global.dialog_speed = dialog_speed_current;
    global.language = language_current;
    global.speedrun_timer = speedrun_timer_current;
    
    gameplay[HUD] = "HUD: " + "<" + hud[hud_current] + ">";
    gameplay[ONSTARTUP] = "ON STARTUP: " + "<" + on_startup[on_startup_current] + ">";
    gameplay[DIALOGSPEED] = "DIALOG SPEED: " + "<" + dialog_speed[dialog_speed_current] + ">";
    gameplay[LANGUAGE] = "LANGUAGE: " + "<" + language[language_current] + ">";
    gameplay[SPEEDRUN] = "SPEEDRUN TIMER: " + "<" + speedrun_timer[speedrun_timer_current] + ">";
    gameplay[GAMEP_BACK] = "BACK";
    
    //Graphics
    
    global.v_sync = v_sync_current;
    global.fullscreen = fullscreen_current;
    global.resolution = resolution_current;
    global.graphics_quality = graphics_quality_current;
    
    graphics[V_SYNC] = "V-SYNC: " + "<" + v_sync[v_sync_current] + ">";
    graphics[FULLSCREEN] = "FULLSCREEN: " + "<"  + fullscreen[fullscreen_current] + ">";;
    graphics[RESOLUTION] = "RESOLUTION: " + "<"  + resolution[resolution_current] + ">";;
    graphics[GRAP_QUALITY] = "GRAPHICS QUALITY: " + "<"  + graphics_quality[graphics_quality_current] + ">";;
    graphics[GRAP_BACK] = "BACK";
    
    //Audio
    
    audio[MASTER_VOLUME] = "MASTER VOLUME: " + "<" + string(global.master_volume) + "/10" + ">";;
    audio[MUSIC_VOLUME] = "MUSIC VOLUME: " + "<" + string(global.music_volume) + "/10" + ">";;;
    audio[SOUNDS_VOLUME] = "SOUND EFFECTS VOLUME: " + "<" + string(global.sounds_volume) + "/10" + ">";;;
    audio[VOICES_VOLUME] = "VOICES VOLUME: " + "<" + string(global.voices_volume) + "/10" + ">";;;
    audio[AUDIO_BACK] = "BACK";
}
