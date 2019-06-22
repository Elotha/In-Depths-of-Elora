///Checkpoint

//argument0: yaşayacak mı doktor bey?

{
    ini_open("Temp.ini");
    var t = global.TempNumber;
    ini_write_real(t,"Existence",argument0);
    ini_write_real(t,"ID",id);
    ini_write_string(t,"Type",object_get_name(object_index));
    ini_write_real(t,"XStart",xstart);
    ini_write_real(t,"YStart",ystart);
    if object_index = obj_Beulian || object_index = obj_Damast || object_index = obj_Minyoo || object_index = obj_Palpus || object_index = obj_Zodax {
        ini_write_string(t,"Drop",Drop);
        ini_write_real(t,"ImageXSscale",InitialXScale);
        if object_index = obj_Zodax {
            ini_write_real(t,"TelX",TelX);
            ini_write_real(t,"TelY",TelY);
            ini_write_real(t,"TimesMax",TimesMax);
            }
        }
    ini_close();    
    global.TempNumber++;
}
