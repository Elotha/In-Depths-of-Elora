///Profile Load

{
    ini_open("profiles.ini");
    if ini_read_real("Profiles","Total",0) = 0 then return false;
    current_profile = ini_read_string("Profiles","Current","");
    ini_close();
    ini_open(string_lower(current_profile)+"_config.ini");
    
    //Controls
    
    control_left_string[0] = ini_read_string("Controls","Left1","LEFT ARROW");
    control_left_string[1] = ini_read_string("Controls","Left2","A");
    
    control_right_string[0] = ini_read_string("Controls","Right1","RIGHT ARROW");
    control_right_string[1] = ini_read_string("Controls","Right2","D");
    
    control_jump_string = ini_read_string("Controls","Jump","SPACE");
    
    control_cameraup_string[0] = ini_read_string("Controls","Camera Up1","UP ARROW");
    control_cameraup_string[1] = ini_read_string("Controls","Camera Up2","W");
    
    control_cameradown_string[0] = ini_read_string("Controls","Camera Down1","DOWN ARROW");
    control_cameradown_string[1] = ini_read_string("Controls","Camera Down2","S");
    
    control_interact_string = ini_read_string("Controls","Interact","E");
    
    control_journal_string = ini_read_string("Controls","Journal","TAB");
    
    control_pause_string = ini_read_string("Controls","Pause","ESCAPE");
    
    control_hud_string = ini_read_string("Controls","Hud","CTRL");
    
    //Gameplay
    
    hud_current = ini_read_real("Gameplay","Hud",ALWAYS_SHOW);
    
    on_startup_current = ini_read_real("Gameplay","On Startup",STARTUP_MENU);
    
    dialog_speed_current = ini_read_real("Gameplay","Dialog Speed",2);
    
    language_current = ini_read_real("Gameplay","Language",ENGLISH);
    
    speedrun_timer_current = ini_read_real("Gameplay","Speedrun Timer",OFF);
    
    //Graphics

    v_sync_current = ini_read_real("Graphics","V-Sync",ON);
    
    fullscreen_current = ini_read_real("Graphics","Fullscreen",ON);
    
    resolution_current = ini_read_real("Graphics","Resolution",R1920X1080);
    
    graphics_quality_current = ini_read_real("Graphics","Quality",QUALITY_HIGH);  
    
    display_reset(0,v_sync_current); //V-sync
    window_set_fullscreen(fullscreen_current); //Fullscreen
    
    //Audio
    
    global.master_volume = ini_read_real("Audio","Master",10);
    
    global.music_volume = ini_read_real("Audio","Music",10);
    
    global.sounds_volume = ini_read_real("Audio","Sounds",10);
    
    global.voices_volume = ini_read_real("Audio","Voices",10);        
    
    //Variables
    
    ini_close();
    description = "";
    menu_current = "Main Menu";
    scr_profile_strings();
    return true;
}
