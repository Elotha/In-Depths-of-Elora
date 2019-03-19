///Change
//
//argument0 = array name
//argument1 = selection_number

{
    selected_total = array_length_1d(argument0);
    show_last = "";
    show_first = "";
    selected_number = argument1;
    for(var i = 0; i < 8; i++)
        {
        selected[i] = 0;
        }
    selected[argument1] = 0.5;
    button_current = selected_number;
    offset = 0;
    if selected_total > 5 then show_last = "=";
}
