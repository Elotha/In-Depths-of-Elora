///Load

{
    //Controls
    scr_ControlStrings();
    
   //Gameplay
    
    Gameplay[EnumGameplay.HUD] = "HUD: " + "<" + HUD[HUDCurrent] + ">";
    Gameplay[EnumGameplay.OnStartup] = "ON STARTUP: " + "<" + OnStartup[OnStartupCurrent] + ">";
    Gameplay[EnumGameplay.DashPreset] = "DASH PRESET: " + "<" + DashPreset[DashPresetCurrent] + ">";
    Gameplay[EnumGameplay.DialogSpeed] = "DIALOG SPEED: " + "<" + DialogSpeed[DialogSpeedCurrent] + ">";
    Gameplay[EnumGameplay.Language] = "LANGUAGE: " + "<" + Language[LanguageCurrent] + ">";
    Gameplay[EnumGameplay.SpeedRunTimer] = "SPEEDRUN TIMER: " + "<" + SpeedRunTimer[SpeedRunTimerCurrent] + ">";
    Gameplay[EnumGameplay.Back] = "BACK";
    
    //Graphics
    
    Graphics[EnumGraphics.VSync] = "V-SYNC: " + "<" + VSync[VSyncCurrent] + ">";
    Graphics[EnumGraphics.Fullscreen] = "FULLSCREEN: " + "<"  + Fullscreen[FullscreenCurrent] + ">";
    Graphics[EnumGraphics.Resolution] = "RESOLUTION: " + "<"  + Resolution[ResolutionCurrent] + ">";
    Graphics[EnumGraphics.Quality] = "GRAPHICS QUALITY: " + "<"  + GraphicsQuality[GraphicsQualityCurrent] + ">";
    Graphics[EnumGraphics.Back] = "BACK";
    
    //Audio
    
    Audio[EnumAudio.Master] = "MASTER VOLUME: " + "<" + string(global.MasterVolume) + "/10" + ">";
    Audio[EnumAudio.Music] = "MUSIC VOLUME: " + "<" + string(global.MusicVolume) + "/10" + ">";
    Audio[EnumAudio.Sounds] = "SOUND EFFECTS VOLUME: " + "<" + string(global.SoundsVolume) + "/10" + ">";
    Audio[EnumAudio.Back] = "BACK";
    
    if Status != "Back For Settings" then scr_ProfileNames();
}
