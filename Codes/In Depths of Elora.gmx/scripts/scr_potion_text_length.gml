///Potion Text Length

//argument0: string uzunluğu

{
    var k = 0;
    while length[k] != 0
        {
        k++;
        if k = array_length_1d(length) then break;
        }
    if k+1 = array_length_1d(length)
        {
        length[k+1] = 0;
        start_point[k+1] = 0;
        }
    if length[k+1] = 0
        {
        if k != 0 then start_point[k] = start_point[k-1]+length[k-1];
        length[k] = argument0;
        }
    else
        {
        if start_point[k+1]-start_point[k] >= argument0
            {
            length[k] = argument0;
            }
        else
            {
            k++;
            while length[k] != 0
                {
                k++;
                if k = array_length_1d(length) then break;
                }
            if k+1 = array_length_1d(length)
                {
                length[k+1] = 0;
                start_point[k+1] = 0;
                }
            if length[k+1] = 0
                {
                start_point[k] = start_point[k-1]+length[k-1];
                length[k] = argument0;
                }
            else
                {
                if start_point[k+1]-start_point[k] >= argument0
                    {
                    length[k] = argument0;
                    }
                else return -1;
                }
            }
        }
    return k;
}
