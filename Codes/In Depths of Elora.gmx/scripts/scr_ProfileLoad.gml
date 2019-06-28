///Profile Load

//Status: Oyun yeni açıldıysa "Game Start", profil değiştiriliyorsa "Main Menu", sadece settings için çalıştırılıyorsa "Settings"

{
    if Status = "Game Start" {
        if file_exists("Config.ini") { //Oyun versiyonu kontrolü
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
        }
        
    //Önceden yaratılmış profil var mı? Yoksa çık, varsa profil bilgilerini yüklemeye başla
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
    
    ControlString[ControlKeys.Right] = ini_read_string("Controls",ControlKeys.Right,"RIGHT ARROW");   
    
    ControlString[ControlKeys.Up] = ini_read_string("Controls",ControlKeys.Up,"UP ARROW");    
    
    ControlString[ControlKeys.Down] = ini_read_string("Controls",ControlKeys.Down,"DOWN ARROW");    
    
    ControlString[ControlKeys.Jump] = ini_read_string("Controls",ControlKeys.Jump,"SPACE");
    
    ControlString[ControlKeys.Dash] = ini_read_string("Controls",ControlKeys.Dash,"D");
    
    ControlString[ControlKeys.ManaPotion] = ini_read_string("Controls",ControlKeys.ManaPotion,"R");
    
    ControlString[ControlKeys.MagicalSight] = ini_read_string("Controls",ControlKeys.MagicalSight,"F");
    
    ControlString[ControlKeys.CameraUp] = ini_read_string("Controls",ControlKeys.CameraUp,"W");
    
    ControlString[ControlKeys.CameraDown] = ini_read_string("Controls",ControlKeys.CameraDown,"S");
    
    ControlString[ControlKeys.Interact] = ini_read_string("Controls",ControlKeys.Interact,"E");
    
    ControlString[ControlKeys.Journal] = ini_read_string("Controls",ControlKeys.Journal,"TAB");
    
    ControlString[ControlKeys.HUD] = ini_read_string("Controls",ControlKeys.HUD,"CTRL");
    
    ControlString[ControlKeys.Music] = ini_read_string("Controls",ControlKeys.Music,"M");
    
    ControlString[ControlKeys.Sounds] = ini_read_string("Controls",ControlKeys.Sounds,"N");
    
    if Status != "Back For Settings" {
        scr_ControlLoad(ControlKeys.Left,true);
        scr_ControlLoad(ControlKeys.Right,true);
        scr_ControlLoad(ControlKeys.Up,true);
        scr_ControlLoad(ControlKeys.Down,true);
        scr_ControlLoad(ControlKeys.Jump,true);
        scr_ControlLoad(ControlKeys.Dash,true);
        scr_ControlLoad(ControlKeys.ManaPotion,true);
        scr_ControlLoad(ControlKeys.MagicalSight,true);
        scr_ControlLoad(ControlKeys.CameraUp,true);    
        scr_ControlLoad(ControlKeys.CameraDown,true);
        scr_ControlLoad(ControlKeys.Interact,true);
        scr_ControlLoad(ControlKeys.Journal,true);
        scr_ControlLoad(ControlKeys.HUD,true);
        scr_ControlLoad(ControlKeys.Music,true);
        scr_ControlLoad(ControlKeys.Sounds,true);
    
        obj_Audio.MusicKey = Control[ControlKeys.Music];
        obj_Audio.SoundsKey = Control[ControlKeys.Sounds];
        }
    
    //Gameplay
    
    HUDCurrent = ini_read_real("Gameplay","HUD",ALWAYS_SHOW);
    DashPresetCurrent = ini_read_real("Gameplay","Dash Preset",DASHKEY);
    OnStartupCurrent = ini_read_real("Gameplay","On Startup",STARTUP_MENU);    
    DialogSpeedCurrent = ini_read_real("Gameplay","Dialog Speed",2);    
    LanguageCurrent = ini_read_real("Gameplay","Language",ENGLISH);    
    SpeedRunTimerCurrent = ini_read_real("Gameplay","Speed Run Timer",OFF);
    
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
    
    if Status != "Back For Settings" {
        global.MasterVolume = ini_read_real("Audio","Master",10);
        global.MusicVolume = ini_read_real("Audio","Music",10);
        global.SoundsVolume = ini_read_real("Audio","Sounds",10);
        if global.MasterVolume = 0 then global.MasterVolumeLast = 10;
        if global.MusicVolume = 0 then global.MusicVolumeLast = 10;
        if global.SoundsVolume = 0 then global.SoundsVolumeLast = 10;
        }
    
    //Variables
    
    ini_close();    
    Description = "";
    scr_ProfileStrings();
    return true;
}
