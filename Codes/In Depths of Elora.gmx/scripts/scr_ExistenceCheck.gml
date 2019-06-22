///Existence

{
    ini_open("Temp.ini");
    var k = 0;
    while ini_section_exists(k) k++;
    for(var i = 0; i < k; i++) {
        if ini_read_real(i,"Existence",true) = false then destroy(ini_read_real(i,"ID",0));
        else {
            var XStart = ini_read_real(i,"XStart",-100);
            var YStart = ini_read_real(i,"YStart",-100);
            var Type = asset_get_index(ini_read_string(i,"Type",""));
            var Obj = instance_create(XStart,YStart,Type);
            if Type = obj_Beulian || Type = obj_Damast || Type = obj_Minyoo || Type = obj_Palpus || Type = obj_Zodax {
                Obj.Drop = ini_read_string(i,"Drop","1");
                Obj.image_xscale = ini_read_real(i,"ImageXScale",1);
                if Type = obj_Zodax {
                    Obj.TelX = ini_read_real(i,"TelX",0);
                    Obj.TelY = ini_read_real(i,"TelY",0);
                    Obj.TimesMax = ini_read_real(i,"TimesMax",2);
                    }
                }
            }
        }
    ini_close();
    file_delete("Temp.ini");
    with(obj_Key) if KeyMonster then KeyMonster = false;
    global.TempNumber = 0;
    with(obj_Monster) {
        x = xstart;
        y = ystart;
        }
}
