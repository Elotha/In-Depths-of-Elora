///Potion Text Length

//argument0: string uzunluğu

{
    var k = 0;
    while Length[k] != 0 {
        k++;
        if k = array_length_1d(Length) then break;
        }
    if k+1 = array_length_1d(Length) {
        Length[k+1] = 0;
        StartPoint[k+1] = 0;
        }
    if Length[k+1] = 0 {
        if k != 0 then StartPoint[k] = StartPoint[k-1]+Length[k-1];
        Length[k] = argument0;
        }
    else {
        if StartPoint[k+1]-StartPoint[k] >= argument0 then Length[k] = argument0;
        else {
            k++;
            while Length[k] != 0 {
                k++;
                if k = array_length_1d(Length) then break;
                }
            if k+1 = array_length_1d(Length) {
                Length[k+1] = 0;
                StartPoint[k+1] = 0;
                }
            if Length[k+1] = 0 {
                StartPoint[k] = StartPoint[k-1]+Length[k-1];
                Length[k] = argument0;
                }
            else {
                if StartPoint[k+1]-StartPoint[k] >= argument0 {
                    Length[k] = argument0;
                    }
                else return -1;
                }
            }
        }
    return k;
}
