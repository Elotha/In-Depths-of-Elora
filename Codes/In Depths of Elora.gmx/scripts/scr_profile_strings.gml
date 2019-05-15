///Load

{
    //Controls
    scr_control_strings();
    
   //Gameplay
    
    gameplay[HUD] = "HUD: " + "<" + hud[hud_current] + ">";
    gameplay[ONSTARTUP] = "ON STARTUP: " + "<" + on_startup[on_startup_current] + ">";
    gameplay[DIALOGSPEED] = "DIALOG SPEED: " + "<" + dialog_speed[dialog_speed_current] + ">";
    gameplay[LANGUAGE] = "LANGUAGE: " + "<" + language[language_current] + ">";
    gameplay[SPEEDRUN] = "SPEEDRUN TIMER: " + "<" + speedrun_timer[speedrun_timer_current] + ">";
    gameplay[GAMEP_BACK] = "BACK";
    
    //Graphics
    
    graphics[V_SYNC] = "V-SYNC: " + "<" + v_sync[v_sync_current] + ">";
    graphics[FULLSCREEN] = "FULLSCREEN: " + "<"  + fullscreen[fullscreen_current] + ">";
    graphics[RESOLUTION] = "RESOLUTION: " + "<"  + resolution[resolution_current] + ">";
    graphics[GRAP_QUALITY] = "GRAPHICS QUALITY: " + "<"  + graphics_quality[graphics_quality_current] + ">";
    graphics[GRAP_BACK] = "BACK";
    
    //Audio
    
    audio[MASTER_VOLUME] = "MASTER VOLUME: " + "<" + string(global.master_volume) + "/10" + ">";
    audio[MUSIC_VOLUME] = "MUSIC VOLUME: " + "<" + string(global.music_volume) + "/10" + ">";
    audio[SOUNDS_VOLUME] = "SOUND EFFECTS VOLUME: " + "<" + string(global.sounds_volume) + "/10" + ">";
    audio[AUDIO_BACK] = "BACK";
    
    scr_profile_names();
}
