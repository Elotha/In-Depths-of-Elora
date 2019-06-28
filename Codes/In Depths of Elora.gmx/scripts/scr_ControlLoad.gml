///Controls Load

//argument0: Control[argument0] içindeki constant
//argument1: iniden okuyorsa true, iniye yazıyorsa false

{
    if argument1 {
        switch(ControlString[argument0]) { //Ini dosyasından okunan karakter
            case "LEFT ARROW":
                Control[argument0] = vk_left;
                break;
                
            case "RIGHT ARROW":
                Control[argument0] = vk_right;
                break;
                
            case "UP ARROW":
                Control[argument0] = vk_up;
                break;
                
            case "DOWN ARROW":
                Control[argument0] = vk_down;
                break;
                
            case "LEFT CONTROL":
                Control[argument0] = vk_lcontrol;
                break;
                
            case "LEFT ALT":
                Control[argument0] = vk_alt;
                break;
                
            case "RIGHT CONTROL":
                Control[argument0] = vk_rcontrol;
                break;
                
            case "RIGHT ALT":
                Control[argument0] = vk_ralt;
                break;
                
            case "SHIFT":
                Control[argument0] = vk_shift;
                break;
                
            case "TAB":
                Control[argument0] = vk_tab;
                break;
                
            case "SPACE":
                Control[argument0] = vk_space;
                break;
                
            case "BACKSPACE":
                Control[argument0] = vk_backspace;
                break;
                
            case "NUMPAD0":
                Control[argument0] = vk_numpad0;
                break;
                
            case "NUMPAD1":
                Control[argument0] = vk_numpad1;
                break;
                
            case "NUMPAD2":
                Control[argument0] = vk_numpad2;
                break;
                
            case "NUMPAD3":
                Control[argument0] = vk_numpad3;
                break;
                
            case "NUMPAD4":
                Control[argument0] = vk_numpad4;
                break;
                
            case "NUMPAD5":
                Control[argument0] = vk_numpad5;
                break;
                
            case "NUMPAD6":
                Control[argument0] = vk_numpad6;
                break;
                
            case "NUMPAD7":
                Control[argument0] = vk_numpad7;
                break;
                
            case "NUMPAD8":
                Control[argument0] = vk_numpad8;
                break;
                
            case "NUMPAD9":
                Control[argument0] = vk_numpad9;
                break;
                
            default:
                Control[argument0] = ord(ControlString[argument0]);
            }
        }
    else { //Yeni karakter giriliyor
        switch(keyboard_key) { //Değiştirilen karakter
            case vk_left:
                ControlString[argument0] = "LEFT ARROW";
                break;
                
            case vk_right:
                ControlString[argument0] = "RIGHT ARROW";
                break;
                
            case vk_up:
                ControlString[argument0] = "UP ARROW";
                break;
                
            case vk_down:
                ControlString[argument0] = "DOWN ARROW";
                break;
                
            case vk_lcontrol:
                ControlString[argument0] = "LEFT CTRL";
                break;
                
            case vk_lalt:
                ControlString[argument0] = "LEFT ALT";
                break;
                
            case vk_rcontrol:
                ControlString[argument0] = "RIGHT CTRL";
                break;
                
            case vk_ralt:
                ControlString[argument0] = "RIGHT ALT";
                break;
                
            case vk_shift:
                ControlString[argument0] = "SHIFT";
                break;
                
            case vk_tab:
                ControlString[argument0] = "TAB";
                break;
                
            case vk_space:
                ControlString[argument0] = "SPACE";
                break;
                
            case vk_backspace:
                ControlString[argument0] = "BACKSPACE";
                break;
                
            case vk_numpad0:
                ControlString[argument0] = "NUMPAD9";
                break;
                
            case vk_numpad1:
                ControlString[argument0] = "NUMPAD1";
                break;
                
            case vk_numpad2:
                ControlString[argument0] = "NUMPAD2";
                break;
                
            case vk_numpad3:
                ControlString[argument0] = "NUMPAD3";
                break;
                
            case vk_numpad4:
                ControlString[argument0] = "NUMPAD4";
                break;
                
            case vk_numpad5:
                ControlString[argument0] = "NUMPAD5";
                break;
                
            case vk_numpad6:
                ControlString[argument0] = "NUMPAD6";
                break;
                
            case vk_numpad7:
                ControlString[argument0] = "NUMPAD7";
                break;
                
            case vk_numpad8:
                ControlString[argument0] = "NUMPAD8";
                break;
                
            case vk_numpad9:
                ControlString[argument0] = "NUMPAD9";
                break;
                
            case vk_enter:
            case vk_escape:
            case vk_pause:
            case vk_delete:
            case vk_insert:
            case vk_home:
            case vk_end:
            case vk_pageup:
            case vk_pagedown:
            case vk_f1:
            case vk_f2:
            case vk_f3:
            case vk_f4:
            case vk_f5:
            case vk_f6:
            case vk_f7:
            case vk_f8:
            case vk_f9:
            case vk_f10:
            case vk_f11:
            case vk_f12:
                Description = "Invalid character!";
                alarm[0] = 120;
                return false;
                exit;
                
            default:
                if string_count(string_upper(keyboard_lastchar),FontString[0]) != 0 then
                ControlString[argument0] = string_upper(keyboard_lastchar);
                else {
                    Description = "Invalid character!";
                    alarm[0] = 120;
                    return false;
                    exit;
                    }
                
            }
        ControlCheck = false;
        ini_open(CurrentProfile + "_Config.ini");
        for(var i = 0; i < ControlKeys.Defaults; i++) { //Aynı olan tuş var mı, kontrol et
            if ini_read_string("Controls",i,"") = ControlString[argument0] {
                if i = argument0 then continue;
                ini_write_string("Controls",i,"");
                ControlString[i] = "";
                Control[i] = -1;
                ControlCheck = true;
                break;
                }
            }
        ini_write_string("Controls",argument0,ControlString[argument0]); 
        ini_close();
        //Strings
        scr_ControlStrings();
        
        Control[argument0] = keyboard_key;
        
        return true;
    }
}
                      
