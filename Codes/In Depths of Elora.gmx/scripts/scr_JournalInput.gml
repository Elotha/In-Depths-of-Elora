///Journal Input

{
    if keyboard_check_pressed(Control[ControlKeys.Journal]) { //Journal açılsın ya da kapansın
        if Focus = "Character" {
            if MovementPermission && JumpPermission && !scr_IfDash() && BlockDown != noone && instance_number(obj_Journal) = 0 then instance_create(0,0,obj_Journal);
            if MagicalSight then scr_MagicalSightClose();
            MovementPermission = false;
            }
        }
}
