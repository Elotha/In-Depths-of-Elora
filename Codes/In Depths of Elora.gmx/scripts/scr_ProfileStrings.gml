///Load

{
    //Controls
    scr_ControlStrings();
    
   //Gameplay
    
    Gameplay[HUD_GP] = "HUD: " + "<" + HUD[HUDCurrent] + ">";
    Gameplay[ONSTARTUP] = "ON STARTUP: " + "<" + OnStartup[OnStartupCurrent] + ">";
    Gameplay[DIALOGSPEED] = "DIALOG SPEED: " + "<" + DialogSpeed[DialogSpeedCurrent] + ">";
    Gameplay[LANGUAGE] = "LANGUAGE: " + "<" + Language[LanguageCurrent] + ">";
    Gameplay[SPEEDRUN] = "SPEEDRUN TIMER: " + "<" + SpeedrunTimer[SpeedrunTimerCurrent] + ">";
    Gameplay[GAMEP_BACK] = "BACK";
    
    //Graphics
    
    Graphics[V_SYNC] = "V-SYNC: " + "<" + VSync[VSyncCurrent] + ">";
    Graphics[FULLSCREEN] = "FULLSCREEN: " + "<"  + Fullscreen[FullscreenCurrent] + ">";
    Graphics[RESOLUTION] = "RESOLUTION: " + "<"  + Resolution[ResolutionCurrent] + ">";
    Graphics[GRAP_QUALITY] = "GRAPHICS QUALITY: " + "<"  + GraphicsQuality[GraphicsQualityCurrent] + ">";
    Graphics[GRAP_BACK] = "BACK";
    
    //Audio
    
    Audio[MASTER_VOLUME] = "MASTER VOLUME: " + "<" + string(global.MasterVolume) + "/10" + ">";
    Audio[MUSIC_VOLUME] = "MUSIC VOLUME: " + "<" + string(global.MusicVolume) + "/10" + ">";
    Audio[SOUNDS_VOLUME] = "SOUND EFFECTS VOLUME: " + "<" + string(global.SoundsVolume) + "/10" + ">";
    Audio[AUDIO_BACK] = "BACK";
    
    scr_ProfileNames();
}
