///Change
//
//argument0 = array name
//argument1 = selection_number

{
    selected_total = array_length_1d(argument0);
    selected_number = argument1;
    for(var i = 1; i < 8; i++)
        {
        selected[i] = 0;
        }
    selected[argument1] = 0.5;
    button_current = selected_number;
}
