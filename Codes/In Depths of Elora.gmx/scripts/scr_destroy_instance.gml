#define scr_destroy_instance
///Destroy

{
    with(argument0) instance_destroy();
}



#define scr_destroy_except
///Destroy

{
    with(argument0) 
        {
        if id != argument1 then instance_destroy();
        }
}