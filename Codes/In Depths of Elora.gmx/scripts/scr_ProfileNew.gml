///Create a New Profile

{
    var Check = false;
    if file_exists("Profiles.ini") {//Başka profil varsa
        ini_open("Profiles.ini");
        Total = ini_read_real("Profiles","Total",0);
        var NameCheck = false;
        for(var g = 0; g < Total; g++) {
            if NewProfile = ini_read_string("Profiles",g,"") {
                NameCheck = true;
                break;
                }
            }
        if NameCheck { //Başka bir profil ismi ile çakışıyor mu?
            ini_close();
            Description = "Profile name must be unique.";
            alarm[0] = 120;
            exit;
            }
        Description = "";
        if alarm[0] != -1 then alarm[0] = -1;
        ini_write_real("Profiles","Total",ini_read_real("Profiles","Total",0)+1);
        CurrentProfile = string_lower(ini_read_string("Profiles","Current","Current"));
        file_copy(CurrentProfile + "_Config.ini",string_lower(NewProfile) + "_Config.ini");
        Check = true;
        }
    else { //Bu ilk profilimiz ise
        ini_open("Profiles.ini");
        ini_write_real("Profiles","Total",1);
        }
    if MenuCreated {
        MenuCreated = false;
        MenuCurrent = "Main Menu";
        scr_ChangeMenu(MainMenu,0);
        }
    else {
        MenuCurrent = "Profiles";
        scr_ChangeMenu(Profiles,0);        
        }
    Total = ini_read_real("Profiles","Total",0);
    ini_write_string("Profiles",Total-1,NewProfile);
    ini_write_string("Profiles","Current Number",Total-1);
    ini_write_string("Profiles","Current",NewProfile);
    ini_close();
    CurrentProfile = string_lower(NewProfile);
    
    if !Check {
        //Controls
       
        scr_ControlDefaults();
        
        //Gameplay
        ini_open(CurrentProfile + "_Config.ini");
        
        OnStartupCurrent = STARTUP_MENU;
        ini_write_real("Gameplay","On Startup",OnStartupCurrent);
        
        HUDCurrent = ALWAYS_SHOW;
        ini_write_real("Gameplay","HUD",HUDCurrent);
        
        DashPresetCurrent = DASHKEY;
        ini_write_real("Gameplay","Dash Preset",DashPresetCurrent);
        
        DialogSpeedCurrent = SPEED2;
        ini_write_real("Gameplay","Dialog Speed",DialogSpeedCurrent);
        
        LanguageCurrent = ENGLISH;
        ini_write_real("Gameplay","Language",LanguageCurrent);
        
        SpeedRunTimerCurrent = OFF;
        ini_write_real("Gameplay","Speed Run Timer",SpeedRunTimerCurrent);
        
        //Graphics
    
        VSyncCurrent = ON;
        ini_write_real("Graphics","V-Sync",VSyncCurrent);
        
        FullscreenCurrent = ON;
        ini_write_real("Graphics","Fullscreen",FullscreenCurrent);
        
        ResolutionCurrent = R1920X1080;
        ini_write_real("Graphics","Resolution",ResolutionCurrent);
        
        GraphicsQualityCurrent = QUALITY_HIGH;
        ini_write_real("Graphics","Quality",GraphicsQualityCurrent);  
        
        //Audio
        
        global.MasterVolume = 10;
        ini_write_real("Audio","Master",global.MasterVolume);
        
        global.MusicVolume = 10;
        ini_write_real("Audio","Music",global.MusicVolume);
        
        global.SoundsVolume = 10;
        ini_write_real("Audio","Sounds",global.SoundsVolume);
        }
    
    ini_close();
    ini_open(CurrentProfile + ".ini");
    ini_write_real("General","Level",rm_Level1);
    ini_close();
    
    ini_open("Profiles.ini");
    Total = ini_read_real("Profiles","Total",0);
    for (var i = 0; i < Total; i++) {
        Profile[i] = ini_read_string("Profiles",i,"");
        }
    ini_close();
    Profiles[EnumProfiles.Current] = "CURRENT PROFILE: " + "<" + string_upper(CurrentProfile) + ">";
    scr_ProfileStrings();
    
    Description = "";
}
