///Checkpoint

//argument0: yaşayacak mı doktor bey?

{
    ini_open("temp.ini");
    var t = global.temp_number;
    ini_write_real(t,"existence",argument0);
    ini_write_real(t,"id",id);
    ini_write_string(t,"type",object_get_name(object_index));
    ini_write_real(t,"xstart",xstart);
    ini_write_real(t,"ystart",ystart);
    if object_index = obj_Beulian || object_index = obj_Damast || object_index = obj_Minyoo || object_index = obj_Palpus || object_index = obj_Zodax
        {
        ini_write_string(t,"drop",drop);
        ini_write_real(t,"image_xscale",initial_xscale);
        if object_index = obj_Zodax
            {
            ini_write_real(t,"tel_x",tel_x);
            ini_write_real(t,"tel_y",tel_y);
            ini_write_real(t,"times_max",times_max);
            }
        }
    ini_close();    
    global.temp_number++;
}
