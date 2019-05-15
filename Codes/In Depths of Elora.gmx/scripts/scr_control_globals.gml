///Global Controls

//argument0: control -> global ya da tam tersi

{
    if argument0
        {
        for(var i = 0; i < array_length_1d(control); i++)
            {
            global.control[i] = control[i];
            }
        }
    else
        {
        for(var i = 0; i < array_length_1d(global.control); i++)
            {
            control[i] = global.control[i];
            }        
        }
}
