///Profile Load

{
    ini_open("profiles.ini");
    if ini_read_real("Profiles","Total",0) = 0
        {
        ini_close();
        return false;
        }
    current_profile_number = ini_read_real("Profiles","Current Number",0);
    current_profile = ini_read_string("Profiles",current_profile_number,"");
    ini_write_string("Profiles","Current",current_profile);
    ini_close();
    ini_open(string_lower(current_profile)+"_config.ini");
    
    //Controls
    
    control_string[controlkeys.left] = ini_read_string("Controls",controlkeys.left,"LEFT ARROW")
    scr_control_load(controlkeys.left,true);
    
    control_string[controlkeys.right] = ini_read_string("Controls",controlkeys.right,"RIGHT ARROW");    
    scr_control_load(controlkeys.right,true);
    
    control_string[controlkeys.jump] = ini_read_string("Controls",controlkeys.jump,"SPACE");
    scr_control_load(controlkeys.jump,true);
    
    control_string[controlkeys.cameraup] = ini_read_string("Controls",controlkeys.cameraup,"UP ARROW");
    scr_control_load(controlkeys.cameraup,true);    
    
    control_string[controlkeys.cameradown] = ini_read_string("Controls",controlkeys.cameradown,"DOWN ARROW");
    scr_control_load(controlkeys.cameradown,true);
    
    control_string[controlkeys.interact] = ini_read_string("Controls",controlkeys.interact,"E");
    scr_control_load(controlkeys.interact,true);
    
    control_string[controlkeys.journal] = ini_read_string("Controls",controlkeys.journal,"TAB");
    scr_control_load(controlkeys.journal,true);
    
    control_string[controlkeys.hud] = ini_read_string("Controls",controlkeys.hud,"CTRL");
    scr_control_load(controlkeys.hud,true);
    
    control_string[controlkeys.music] = ini_read_string("Controls",controlkeys.music,"M");
    scr_control_load(controlkeys.music,true);
    
    control_string[controlkeys.sounds] = ini_read_string("Controls",controlkeys.sounds,"N");
    scr_control_load(controlkeys.sounds,true);
    
    //Gameplay
    
    hud_current = ini_read_real("Gameplay","Hud",ALWAYS_SHOW);    
    on_startup_current = ini_read_real("Gameplay","On Startup",STARTUP_MENU);    
    dialog_speed_current = ini_read_real("Gameplay","Dialog Speed",2);    
    language_current = ini_read_real("Gameplay","Language",ENGLISH);    
    speedrun_timer_current = ini_read_real("Gameplay","Speedrun Timer",OFF);
    
    //Graphics

    var vsync = ini_read_real("Graphics","V-Sync",ON);
    if vsync != global.v_sync
        {
        v_sync_current = vsync;
        //display_reset(0,v_sync_current);
        global.v_sync = v_sync_current;
        }
    else v_sync_current = global.v_sync;
    
    
    fullscreen_current = ini_read_real("Graphics","Fullscreen",ON);    
    resolution_current = ini_read_real("Graphics","Resolution",R1920X1080);    
    graphics_quality_current = ini_read_real("Graphics","Quality",QUALITY_HIGH);
    
    window_set_fullscreen(fullscreen_current); //Fullscreen
    
    //Audio
    
    global.master_volume = ini_read_real("Audio","Master",10);    
    global.music_volume = ini_read_real("Audio","Music",10);    
    global.sounds_volume = ini_read_real("Audio","Sounds",10);    
    global.voices_volume = ini_read_real("Audio","Voices",10);        
    
    //Variables
    
    ini_close();
    description = "";
    //menu_current = "Main Menu";
    scr_profile_strings();
    return true;
}
