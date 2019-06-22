///Global Controls

//argument0: Control -> global ya da tam tersi

{
    if argument0 {
        for(var i = 0; i < array_length_1d(Control); i++) {
            global.Control[i] = Control[i];
            }
        }
    else {
        for(var i = 0; i < array_length_1d(global.Control); i++) {
            Control[i] = global.Control[i];
            }        
        }
}
