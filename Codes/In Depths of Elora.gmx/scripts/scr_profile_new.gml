///Create a New Profile

{
    var check = false;
    if file_exists("profiles.ini") //Başka profil varsa
        {
        ini_open("profiles.ini");
        total = ini_read_real("Profiles","Total",0);
        var name_check = false;
        for(var g = 0; g < total; g++)
            {
            if new_profile = ini_read_string("Profiles",g,"")
                {
                name_check = true;
                break;
                }
            }
        if name_check //Başka bir profil ismi ile çakışıyor mu?
            {
            ini_close();
            description = "Profile name must be unique.";
            alarm[0] = 120;
            exit;
            }
        description = "";
        if alarm[0] != -1 then alarm[0] = -1;
        ini_write_real("Profiles","Total",ini_read_real("Profiles","Total",0)+1);
        current_profile = ini_read_string("Profiles","Current","Current");
        file_copy(current_profile + "_config.ini",string_lower(new_profile) + "_config.ini");
        check = true;
        }
    else //Bu ilk profilimiz ise
        {
        ini_open("profiles.ini");
        ini_write_real("Profiles","Total",1);
        }
    if game_is_started
        {
        game_is_started = false;
        menu_current = "Main Menu";
        scr_change_menu(main_menu,0);
        }
    else
        {
        menu_current = "Profiles";
        scr_change_menu(profiles,0);        
        }
    total = ini_read_real("Profiles","Total",0);
    ini_write_string("Profiles",total-1,new_profile);
    ini_write_string("Profiles","Current Number",total-1);
    ini_write_string("Profiles","Current",new_profile);
    ini_close();
    current_profile = new_profile;
    
    if !check
        {
        //Controls
       
        scr_control_defaults();
        
        //Gameplay
        ini_open(string_lower(current_profile) + "_config.ini");
        
        hud_current = ALWAYS_SHOW;
        ini_write_real("Gameplay","Hud",hud_current);
        
        on_startup_current = STARTUP_MENU;
        ini_write_real("Gameplay","On Startup",on_startup_current);
        
        dialog_speed_current = SPEED2;
        ini_write_real("Gameplay","Dialog Speed",dialog_speed_current);
        
        language_current = ENGLISH;
        ini_write_real("Gameplay","Language",language_current);
        
        speedrun_timer_current = OFF;
        ini_write_real("Gameplay","Speedrun Timer",speedrun_timer_current);
        
        //Graphics
    
        v_sync_current = ON;
        ini_write_real("Graphics","V-Sync",v_sync_current);
        
        fullscreen_current = ON;
        ini_write_real("Graphics","Fullscreen",fullscreen_current);
        
        resolution_current = R1920X1080;
        ini_write_real("Graphics","Resolution",resolution_current);
        
        graphics_quality_current = QUALITY_HIGH;
        ini_write_real("Graphics","Quality",graphics_quality_current);  
        
        //Audio
        
        global.master_volume = 10;
        ini_write_real("Audio","Master",global.master_volume);
        
        global.music_volume = 10;
        ini_write_real("Audio","Music",global.music_volume);
        
        global.sounds_volume = 10;
        ini_write_real("Audio","Sounds",global.sounds_volume);
        
        global.voices_volume = 10;
        ini_write_real("Audio","Voices",global.voices_volume);
        }
    
    ini_close();
    ini_open(string_lower(current_profile) + ".ini");
    ini_write_real("General","Level",rm_Level1);
    ini_close();
    
    ini_open("profiles.ini");
    total = ini_read_real("Profiles","Total",0);
    for (var i = 0; i < total; i++)
        {
        profile[i] = ini_read_string("Profiles",i,"");
        }
    ini_close();
    profiles[CURRENT_PROFILE] = "CURRENT PROFILE: " + "<" + current_profile + ">";
    scr_profile_strings();
}
