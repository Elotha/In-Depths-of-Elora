///Horizontal Inputs

{
    //İnputlar
    if MovementPermission && Focus = "Character" {
        var LeftPress, RightPress;
        LeftPress = keyboard_check(Control[ControlKeys.Left]);
        RightPress = keyboard_check(Control[ControlKeys.Right]);
        InputDir = RightPress - LeftPress;
        }
    else InputDir = 0;
}
