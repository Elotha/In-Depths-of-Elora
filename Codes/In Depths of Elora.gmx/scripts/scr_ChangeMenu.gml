///Change
//
//argument0 = array name
//argument1 = selection_number

{
    SelectedTotal = array_length_1d(argument0);
    ShowLast = "";
    ShowFirst = "";
    SelectedNumber = argument1;
    for(var i = 0; i < 8; i++) {
        Selected[i] = 0;
        }
    Selected[argument1] = 0.5;
    ButtonCurrent = SelectedNumber;
    Offset = 0;
    if SelectedTotal > 5 then ShowLast = "$";
}
