///Profile Load

{
    if file_exists("Config.ini") {
        ini_open("Config.ini");
        var GameVer = ini_read_real("Config","Game Version",0);
        ini_close();
        if GameVer != GAMEVERSION {
            ini_open("Profiles.ini");
            var ProfileTotal = ini_read_real("Profiles","Total",0);
            var ProfileDelete = -1;
            for(var q = 0; q < ProfileTotal; q++) {
                ProfileDelete[q] = string_lower(ini_read_string("Profiles",q,""));
                if file_exists(ProfileDelete[q] + "_Config.ini") {
                    file_delete(ProfileDelete[q] + "_Config.ini");
                    file_delete(ProfileDelete[q] + ".ini");
                    }
                }
            ini_close();
            file_delete("Profiles.ini");
            file_delete("Config.ini");
            return false;
            }
        }
    else {
        if file_exists("profiles.ini") { //Versiyonlama sisteminden önceki dosyalar bulunuyorsa hepsini temizle
            ini_open("profiles.ini");
            var ProfileTotal = ini_read_real("Profiles","Total",0);
            var ProfileDelete = -1;
            for(var q = 0; q < ProfileTotal; q++) {
                ProfileDelete[q] = string_lower(ini_read_string("Profiles",q,""));
                if file_exists(ProfileDelete[q] + "_config.ini") {
                    file_delete(ProfileDelete[q] + "_config.ini");
                    file_delete(ProfileDelete[q] + ".ini");
                    }
                }
            ini_close();
            file_delete("profiles.ini");
            file_delete("config.ini");
            }
        
        ini_open("Config.ini");
        ini_write_real("Config","Game Version",GAMEVERSION);
        ini_close();
        }

    ini_open("Profiles.ini");
    if ini_read_real("Profiles","Total",0) = 0 {
        ini_close();
        return false;
        }
    CurrentProfileNumber = ini_read_real("Profiles","Current Number",0);
    CurrentProfile = string_lower(ini_read_string("Profiles",CurrentProfileNumber,""));
    ini_write_string("Profiles","Current",string_upper(CurrentProfile));
    ini_close();
    ini_open(CurrentProfile+"_Config.ini");
    
    //Controls
    
    ControlString[ControlKeys.Left] = ini_read_string("Controls",ControlKeys.Left,"LEFT ARROW")
    scr_ControlLoad(ControlKeys.Left,true);
    
    ControlString[ControlKeys.Right] = ini_read_string("Controls",ControlKeys.Right,"RIGHT ARROW");    
    scr_ControlLoad(ControlKeys.Right,true);
    
    ControlString[ControlKeys.Up] = ini_read_string("Controls",ControlKeys.Up,"UP ARROW");    
    scr_ControlLoad(ControlKeys.Up,true);
    
    ControlString[ControlKeys.Down] = ini_read_string("Controls",ControlKeys.Down,"DOWN ARROW");    
    scr_ControlLoad(ControlKeys.Down,true);
    
    ControlString[ControlKeys.Jump] = ini_read_string("Controls",ControlKeys.Jump,"SPACE");
    scr_ControlLoad(ControlKeys.Jump,true);
    
    ControlString[ControlKeys.Dash] = ini_read_string("Controls",ControlKeys.Dash,"D");
    scr_ControlLoad(ControlKeys.Dash,true);
    
    ControlString[ControlKeys.ManaPotion] = ini_read_string("Controls",ControlKeys.ManaPotion,"R");
    scr_ControlLoad(ControlKeys.ManaPotion,true);
    
    ControlString[ControlKeys.MagicalSight] = ini_read_string("Controls",ControlKeys.MagicalSight,"F");
    scr_ControlLoad(ControlKeys.MagicalSight,true);
    
    ControlString[ControlKeys.CameraUp] = ini_read_string("Controls",ControlKeys.CameraUp,"W");
    scr_ControlLoad(ControlKeys.CameraUp,true);    
    
    ControlString[ControlKeys.CameraDown] = ini_read_string("Controls",ControlKeys.CameraDown,"S");
    scr_ControlLoad(ControlKeys.CameraDown,true);
    
    ControlString[ControlKeys.Interact] = ini_read_string("Controls",ControlKeys.Interact,"E");
    scr_ControlLoad(ControlKeys.Interact,true);
    
    ControlString[ControlKeys.Journal] = ini_read_string("Controls",ControlKeys.Journal,"TAB");
    scr_ControlLoad(ControlKeys.Journal,true);
    
    ControlString[ControlKeys.HUD] = ini_read_string("Controls",ControlKeys.HUD,"CTRL");
    scr_ControlLoad(ControlKeys.HUD,true);
    
    ControlString[ControlKeys.Music] = ini_read_string("Controls",ControlKeys.Music,"M");
    scr_ControlLoad(ControlKeys.Music,true);
    
    ControlString[ControlKeys.Sounds] = ini_read_string("Controls",ControlKeys.Sounds,"N");
    scr_ControlLoad(ControlKeys.Sounds,true);

    obj_Audio.MusicKey = Control[ControlKeys.Music];
    obj_Audio.SoundsKey = Control[ControlKeys.Sounds];
    
    //Gameplay
    
    HUDCurrent = ini_read_real("Gameplay","HUD",ALWAYS_SHOW);    
    OnStartupCurrent = ini_read_real("Gameplay","On Startup",STARTUP_MENU);    
    DialogSpeedCurrent = ini_read_real("Gameplay","Dialog Speed",2);    
    LanguageCurrent = ini_read_real("Gameplay","Language",ENGLISH);    
    SpeedrunTimerCurrent = ini_read_real("Gameplay","Speedrun Timer",OFF);
    
    //Graphics

    var VSync = ini_read_real("Graphics","V-Sync",ON);
    if VSync != global.VSync {
        vVSyncCurrent = VSync;
        display_reset(0,VSyncCurrent);
        global.VSync = VSyncCurrent;
        }
    else VSyncCurrent = global.VSync;
    
    
    FullscreenCurrent = ini_read_real("Graphics","Fullscreen",ON);    
    ResolutionCurrent = ini_read_real("Graphics","Resolution",R1920X1080);    
    GraphicsQualityCurrent = ini_read_real("Graphics","Quality",QUALITY_HIGH);
    
    window_set_fullscreen(FullscreenCurrent); //Fullscreen
    
    //Audio
    
    global.MasterVolume = ini_read_real("Audio","Master",10);
    global.MusicVolume = ini_read_real("Audio","Music",10);
    global.SoundsVolume = ini_read_real("Audio","Sounds",10);
    if global.MasterVolume = 0 then global.MasterVolumeLast = 10;
    if global.MusicVolume = 0 then global.MusicVolumeLast = 10;
    if global.SoundsVolume = 0 then global.SoundsVolumeLast = 10;
    
    //Variables
    
    ini_close();    
    Description = "";
    scr_ProfileStrings();
    return true;
}
