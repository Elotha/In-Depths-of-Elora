///Control Check

{
    global.wasd_check = true;
    for(var k = 0; k < array_length_1d(control); k++)
        {
        if control[k] = ord('W') || control[k] = ord('S') || control[k] = ord('A') || control[k] = ord('D')
            {
            global.wasd_check = false;
            break;
            }
        }
}
