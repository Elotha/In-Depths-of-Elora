///Create a New Profile

{
    if file_exists("profiles.ini")
        {
        ini_open("profiles.ini");
        ini_write_real("PROFILES","TOTAL",ini_read_real("PROFILES","TOTAL",0)+1);
        }
    else
        {
        ini_open("profiles.ini");
        ini_write_real("PROFILES","TOTAL",1);
        }
    ini_write_string("PROFILES","CURRENT",new_profile);
    ini_close();
    
    
    //Controls
        
    ini_open(string_lower(new_profile) + ".ini");
    control_left_string[0] = "LEFT ARROW";
    control_left_string[1] = "A";
    ini_write_string("CONTROLS","LEFT1",control_left_string[0]);
    ini_write_string("CONTROLS","LEFT2",control_left_string[1]);
    
    control_right_string[0] = "RIGHT ARROW";
    control_right_string[1] = "D";
    ini_write_string("CONTROLS","RIGHT1",control_right_string[0]);
    ini_write_string("CONTROLS","RIGHT2",control_right_string[1]);
    
    control_jump_string = "SPACE";
    ini_write_string("CONTROLS","JUMP",control_jump_string);
    
    control_cameraup_string[0] = "UP ARROW";
    control_cameraup_string[1] = "W";
    ini_write_string("CONTROLS","CAMERAUP1",control_cameraup_string[0]);
    ini_write_string("CONTROLS","CAMERAUP2",control_cameraup_string[1]);
    
    control_cameradown_string[0] = "DOWN ARROW";
    control_cameradown_string[1] = "S";
    ini_write_string("CONTROLS","CAMERADOWN1",control_cameradown_string[0]);
    ini_write_string("CONTROLS","CAMERADOWN2",control_cameradown_string[1]);
    
    control_interact_string = "E";
    ini_write_string("CONTROLS","INTERACT",control_interact_string);
    
    control_journal_string = "TAB";
    ini_write_string("CONTROLS","JOURNAL",control_journal_string);
    
    control_pause_string = "ESCAPE";
    ini_write_string("CONTROLS","PAUSEMENU",control_pause_string);
    
    //Gameplay
    
    hud = "ALWAYS SHOW";
    ini_write_string("GAMEPLAY","HUD",hud);
    
    on_startup = "MENU";
    ini_write_string("GAMEPLAY","ONSTARTUP",on_startup);
    
    dialog_speed = 2;
    ini_write_real("GAMEPLAY","DIALOGSPEED",dialog_speed);
    
    language = "ENGLISH";
    ini_write_string("GAMEPLAY","LANGUAGE",language);
    
    speedrun_timer = "OFF";
    ini_write_string("GAMEPLAY","SPEEDRUN TIMER",speedrun_timer);
    
    //Graphics

    v_sync = "ON";
    ini_write_string("GRAPHICS","V_SYNC",v_sync);
    
    fullscreen = "ON";
    ini_write_string("GRAPHICS","FULLSCREEN",fullscreen);
    
    resolution_x = "1920";
    ini_write_string("GRAPHICS","RESOLUTIONX",resolution_x);
    
    resolution_y = "1080";
    ini_write_string("GRAPHICS","RESOLUTIONY",resolution_y);
    
    graphics_quality = "HIGH";
    ini_write_string("GRAPHICS","QUALITY",graphics_quality);  
    
    //Audio
    
    global.master_volume = 10;
    ini_write_real("AUDIO","MASTER",global.master_volume);
    
    global.music_volume = 10;
    ini_write_real("AUDIO","MUSIC",global.music_volume);
    
    global.sounds_volume = 10;
    ini_write_real("AUDIO","SOUNDS",global.sounds_volume);
    
    global.voices_volume = 10;
    ini_write_real("AUDIO","VOICES",global.voices_volume);
    
    ini_close();
    
    scr_profile_load();
}
