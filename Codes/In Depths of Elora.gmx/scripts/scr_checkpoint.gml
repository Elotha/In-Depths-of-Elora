///Checkpoint

{
    ini_open("temp.ini");
    if !ini_section_exists("temp")
        {
        ini_write_real("temp","temp",true);
        file_copy("monsters.ini","monsters_temp.ini");
        file_copy("score_stones.ini","score_stones_temp.ini");
        file_copy("life_stones.ini","life_stones_temp.ini");
        file_copy("keys.ini","keys_temp.ini");
        }
    ini_close();
    ini_open(argument0 + "_temp.ini");
    ini_write_real(string(xstart) + "," + string(ystart),"existence",argument1);
    ini_close();
    
    if argument2
        {
        ini_open(argument0 + ".ini");
        ini_write_real(string(xstart) + "," + string(ystart),"existence",argument1);
        ini_close();
        }
    
}
