///Existence

//ini name
//object_index

{
    ini_open(argument0);
    if ini_read_real(string(xstart) + "," + string(ystart),"existence",true) = false then instance_destroy();
    ini_close();
}
