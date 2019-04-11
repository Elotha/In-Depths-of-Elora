///Existence

{
    ini_open("temp.ini");
    var k = 0;
    while ini_section_exists(k) k++;
    for(var i = 0; i < k; i++)
        {
        if ini_read_real(i,"existence",true) = false then destroy(ini_read_real(i,"id",0));
        else
            {
            var xx = ini_read_real(i,"xstart",-100);
            var yy = ini_read_real(i,"ystart",-100);
            var type = asset_get_index(ini_read_string(i,"type",""));
            var obj = instance_create(xx,yy,type);
            if type = obj_Beulian || type = obj_Damast || type = obj_Minyoo || type = obj_Palpus || type = obj_Zodax
                {
                obj.drop = ini_read_string(i,"drop","1");
                obj.image_xscale = ini_read_real(i,"image_xscale",1);
                if type = obj_Zodax
                    {
                    obj.tel_x = ini_read_real(i,"tel_x",0);
                    obj.tel_y = ini_read_real(i,"tel_y",0);
                    obj.times_max = ini_read_real(i,"times_max",2);
                    }
                }
            }
        }
    ini_close();
    file_delete("temp.ini");
    with(obj_Key) if key_monster then key_monster = false;
    global.temp_number = 0;
    with(obj_Monster)
        {
        x = xstart;
        y = ystart;
        }
}
