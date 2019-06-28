///Defaults

{
    ini_open(CurrentProfile + "_Config.ini");
    
    ControlString[ControlKeys.Left] = "LEFT ARROW";
    Control[ControlKeys.Left] = vk_left;
    ini_write_string("Controls",ControlKeys.Left,ControlString[ControlKeys.Left]);
    
    ControlString[ControlKeys.Right] = "RIGHT ARROW";
    Control[ControlKeys.Right] = vk_right;
    ini_write_string("Controls",ControlKeys.Right,ControlString[ControlKeys.Right]);
    
    ControlString[ControlKeys.Up] = "UP ARROW";
    Control[ControlKeys.Up] = vk_up;
    ini_write_string("Controls",ControlKeys.Up,ControlString[ControlKeys.Up]);
    
    ControlString[ControlKeys.Down] = "DOWN ARROW";
    Control[ControlKeys.Down] = vk_down;
    ini_write_string("Controls",ControlKeys.Down,ControlString[ControlKeys.Down]);
    
    ControlString[ControlKeys.Jump] = "SPACE";
    Control[ControlKeys.Jump] = vk_space;
    ini_write_string("Controls",ControlKeys.Jump,ControlString[ControlKeys.Jump]);
    
    ControlString[ControlKeys.Dash] = "D";
    Control[ControlKeys.Dash] = ord('D');
    ini_write_string("Controls",ControlKeys.Dash,ControlString[ControlKeys.Dash]);
    
    ControlString[ControlKeys.MagicalSight] = "F";
    Control[ControlKeys.MagicalSight] = ord('F');
    ini_write_string("Controls",ControlKeys.MagicalSight,ControlString[ControlKeys.MagicalSight]);
    
    ControlString[ControlKeys.ManaPotion] = "R";
    Control[ControlKeys.ManaPotion] = ord('R');
    ini_write_string("Controls",ControlKeys.ManaPotion,ControlString[ControlKeys.ManaPotion]);
    
    ControlString[ControlKeys.CameraUp] = "W";
    Control[ControlKeys.CameraUp] = ord("W");
    ini_write_string("Controls",ControlKeys.CameraUp,ControlString[ControlKeys.CameraUp]);
    
    ControlString[ControlKeys.CameraDown] = "S";
    Control[ControlKeys.CameraDown] = ord("S");
    ini_write_string("Controls",ControlKeys.CameraDown,ControlString[ControlKeys.CameraDown]);
    
    ControlString[ControlKeys.Interact] = "E";
    Control[ControlKeys.Interact] = ord('A');
    ini_write_string("Controls",ControlKeys.Interact,ControlString[ControlKeys.Interact]);
    
    ControlString[ControlKeys.Journal] = "J";
    Control[ControlKeys.Journal] = ord('J');
    ini_write_string("Controls",ControlKeys.Journal,ControlString[ControlKeys.Journal]);
    
    ControlString[ControlKeys.HUD] = "LEFT CONTROL";
    Control[ControlKeys.HUD] = vk_lcontrol;
    ini_write_string("Controls",ControlKeys.HUD,ControlString[ControlKeys.HUD]);
    
    ControlString[ControlKeys.Music] = "M";
    Control[ControlKeys.Music] = ord('M');
    ini_write_string("Controls",ControlKeys.Music,ControlString[ControlKeys.Music]);
    
    ControlString[ControlKeys.Sounds] = "N";
    Control[ControlKeys.Sounds] = ord('N');
    ini_write_string("Controls",ControlKeys.Sounds,ControlString[ControlKeys.Sounds]);
    
    obj_Audio.MusicKey = Control[ControlKeys.Music];
    obj_Audio.SoundsKey = Control[ControlKeys.Sounds];
    
    ini_close();
}
