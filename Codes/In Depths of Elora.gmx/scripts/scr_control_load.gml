///Controls Load
//
//argument0: control[argument0] içindeki constant
//argument1: iniden okuyorsa true, iniye yazıyorsa false

{
    if argument1
        {
        switch(control_string[argument0]) //Ini dosyasından okunan karakter
            {
            case "LEFT ARROW":
                control[argument0] = vk_left;
                break;
                
            case "RIGHT ARROW":
                control[argument0] = vk_right;
                break;
                
            case "UP ARROW":
                control[argument0] = vk_up;
                break;
                
            case "DOWN ARROW":
                control[argument0] = vk_down;
                break;
                
            case "LEFT CONTROL":
                control[argument0] = vk_lcontrol;
                break;
                
            case "LEFT ALT":
                control[argument0] = vk_alt;
                break;
                
            case "RIGHT CONTROL":
                control[argument0] = vk_rcontrol;
                break;
                
            case "RIGHT ALT":
                control[argument0] = vk_ralt;
                break;
                
            case "SHIFT":
                control[argument0] = vk_shift;
                break;
                
            case "TAB":
                control[argument0] = vk_tab;
                break;
                
            case "SPACE":
                control[argument0] = vk_space;
                break;
                
            case "BACKSPACE":
                control[argument0] = vk_backspace;
                break;
                
            case "NUMPAD0":
                control[argument0] = vk_numpad0;
                break;
                
            case "NUMPAD1":
                control[argument0] = vk_numpad1;
                break;
                
            case "NUMPAD2":
                control[argument0] = vk_numpad2;
                break;
                
            case "NUMPAD3":
                control[argument0] = vk_numpad3;
                break;
                
            case "NUMPAD4":
                control[argument0] = vk_numpad4;
                break;
                
            case "NUMPAD5":
                control[argument0] = vk_numpad5;
                break;
                
            case "NUMPAD6":
                control[argument0] = vk_numpad6;
                break;
                
            case "NUMPAD7":
                control[argument0] = vk_numpad7;
                break;
                
            case "NUMPAD8":
                control[argument0] = vk_numpad8;
                break;
                
            case "NUMPAD9":
                control[argument0] = vk_numpad9;
                break;
                
            default:
                control[argument0] = ord(control_string[argument0]);
            }
        }
    else //Yeni karakter giriliyor
        {
        switch(keyboard_key) //Değiştirilen karakter
            {
            case vk_left:
                control_string[argument0] = "LEFT ARROW";
                break;
                
            case vk_right:
                control_string[argument0] = "RIGHT ARROW";
                break;
                
            case vk_up:
                control_string[argument0] = "UP ARROW";
                break;
                
            case vk_down:
                control_string[argument0] = "DOWN ARROW";
                break;
                
            case vk_lcontrol:
                control_string[argument0] = "LEFT CTRL";
                break;
                
            case vk_lalt:
                control_string[argument0] = "LEFT ALT";
                break;
                
            case vk_rcontrol:
                control_string[argument0] = "RIGHT CTRL";
                break;
                
            case vk_ralt:
                control_string[argument0] = "RIGHT ALT";
                break;
                
            case vk_shift:
                control_string[argument0] = "SHIFT";
                break;
                
            case vk_tab:
                control_string[argument0] = "TAB";
                break;
                
            case vk_space:
                control_string[argument0] = "SPACE";
                break;
                
            case vk_backspace:
                control_string[argument0] = "BACKSPACE";
                break;
                
            case vk_numpad0:
                control_string[argument0] = "NUMPAD9";
                break;
                
            case vk_numpad1:
                control_string[argument0] = "NUMPAD1";
                break;
                
            case vk_numpad2:
                control_string[argument0] = "NUMPAD2";
                break;
                
            case vk_numpad3:
                control_string[argument0] = "NUMPAD3";
                break;
                
            case vk_numpad4:
                control_string[argument0] = "NUMPAD4";
                break;
                
            case vk_numpad5:
                control_string[argument0] = "NUMPAD5";
                break;
                
            case vk_numpad6:
                control_string[argument0] = "NUMPAD6";
                break;
                
            case vk_numpad7:
                control_string[argument0] = "NUMPAD7";
                break;
                
            case vk_numpad8:
                control_string[argument0] = "NUMPAD8";
                break;
                
            case vk_numpad9:
                control_string[argument0] = "NUMPAD9";
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
                description = "Invalid character!";
                alarm[0] = 120;
                return false;
                exit;
                
            default:
                if string_count(string_upper(keyboard_lastchar),font_string[0]) != 0 then
                control_string[argument0] = string_upper(keyboard_lastchar);
                else 
                    {
                    description = "Invalid character!";
                    alarm[0] = 120;
                    return false;
                    exit;
                    }
                
            }
        control_check = false;
        ini_open(current_profile + "_config.ini");
        for(var i = 0; i < controlkeys.cont_default; i++) //Aynı olan tuş var mı, kontrol et
            {
            if ini_read_string("Controls",i,"") = control_string[argument0]
                {
                if i = argument0 then continue;
                ini_write_string("Controls",i,"");
                control_string[i] = "";
                control[i] = -1;
                control_check = true;
                break;
                }
            }
        ini_write_string("Controls",argument0,control_string[argument0]); 
        ini_close();
        //Strings
        scr_control_strings();
        
        control[argument0] = keyboard_key;
        
        return true;
    }
}
                      
