///Controls Load

{
    switch(str) //Ini dosyasından okunan karakter
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
            
        case "CTRL":
            control[argument0] = vk_control;
            break;
            
        case "ALT":
            control[argument0] = vk_alt;
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
            control[argument0] = argument1;
            
        }
        
    ini_open(current_profile + "_config.ini");
    switch(keyboard_lastkey) //Değiştirilen karakter
        {
        case vk_left:
            ini_write_string("Controls",argument0,"LEFT ARROW");
            break;
            
        case vk_right:
            ini_write_string("Controls",argument0,"RIGHT ARROW");
            break;
            
        case vk_up:
            ini_write_string("Controls",argument0,"UP ARROW");
            break;
            
        case vk_down:
            ini_write_string("Controls",argument0,"DOWN ARROW");
            break;
            
        case vk_control:
            ini_write_string("Controls",argument0,"CTRL");
            break;
            
        case vk_alt:
            ini_write_string("Controls",argument0,"ALT");
            break;
            
        case vk_shift:
            ini_write_string("Controls",argument0,"SHIFT");
            break;
            
        case vk_tab:
            ini_write_string("Controls",argument0,"TAB");
            break;
            
        case vk_space:
            ini_write_string("Controls",argument0,"SPACE");
            break;
            
        case vk_backspace:
            ini_write_string("Controls",argument0,"BACKSPACE");
            break;
            
        case vk_numpad0:
            ini_write_string("Controls",argument0,"NUMPAD0");
            break;
            
        case vk_numpad1:
            ini_write_string("Controls",argument0,"NUMPAD1");
            break;
            
        case vk_numpad2:
            ini_write_string("Controls",argument0,"NUMPAD2");
            break;
            
        case vk_numpad3:
            ini_write_string("Controls",argument0,"NUMPAD3");
            break;
            
        case vk_numpad4:
            ini_write_string("Controls",argument0,"NUMPAD4");
            break;
            
        case vk_numpad5:
            ini_write_string("Controls",argument0,"NUMPAD5");
            break;
            
        case vk_numpad6:
            ini_write_string("Controls",argument0,"NUMPAD6");
            break;
            
        case vk_numpad7:
            ini_write_string("Controls",argument0,"NUMPAD7");
            break;
            
        case vk_numpad8:
            ini_write_string("Controls",argument0,"NUMPAD8");
            break;
            
        case vk_numpad9:
            ini_write_string("Controls",argument0,"NUMPAD9");
            break;
            
        default:
            control[argument0] = keyboard_lastkey;
            
        }
}

/*enter, escape, F's, pause/break, delete, insert, home, end, page up, page down, caps lock
                      
