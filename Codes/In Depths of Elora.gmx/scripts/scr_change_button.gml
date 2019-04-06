///Change the Button
//
//argument0: hangi yöne gidilecek?
//argument1: hangi array için?
//argument2: sonucu hangi arrayin içine yazıyoruz?
//argument3: sonuç stringinde ne yazıyor?
//argument4: ini section
//argument5: ini key

{
    ini_open(string_lower(current_profile) +"_config.ini");
    var str = string_copy(argument2,string_pos("<",argument2)+1,string_pos(">",argument2)-string_pos("<",argument2)-1);
    for(var i = 0; i < array_length_1d(argument1); i++)
        {
        if argument1[i] = str then break;
        }
    if argument0 = 1 //Sağa git
        {
        if i = array_length_1d(argument1)-1 //Eğer sonuncu ise
            {
            argument2 = argument3 + "<" + argument1[0] + ">";
            ini_write_real(argument4,argument5,0);
            }
        else //Sonuncu değilse
            {
            argument2 = argument3 + "<" + argument1[i+1] + ">";
            ini_write_real(argument4,argument5,i+1);
            }
        }
    if argument0 = -1 //Sola git
        {
        if i = 0 //Eğer ilki ise
            {
            argument2 = argument3 + "<" + argument1[array_length_1d(argument1)-1] + ">";
            ini_write_real(argument4,argument5,array_length_1d(argument1)-1);
            }
        else //İlki değilse
            {
            argument2 = argument3 + "<" + argument1[i-1] + ">";
            ini_write_real(argument4,argument5,i-1);
            }
        
        }
    ini_close();
    return argument2;
}
