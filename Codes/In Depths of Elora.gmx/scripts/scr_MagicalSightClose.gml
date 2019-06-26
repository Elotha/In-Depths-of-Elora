///Close Magical Sight

{
    //Büyü görüşü modunda bir canavarın özelliğini kullanıyorsak
    if MagicalInteraction != -1 {
        mask_index = spr_CharacterMask;
        depth = CHARACTER;
        image_yscale = 1;
        var BlockCheck = instance_place(x,y,obj_Block); //Bir bloğun içine sıkıştık mı?
        if BlockCheck != noone {
            if !object_is_ancestor(BlockCheck,obj_PlatformThinParent) { //İnce platformsa boşver
                var CollUp = collision_rectangle(x-9,y-16,x+9,y-18,obj_Block,false,true);
                var CollDown = collision_rectangle(x-9,y+29,x+9,y+31,obj_Block,false,true);
                if CollUp != noone && CollDown = noone { //Yukarıdan sıkıştık
                    move_outside_solid(270,64);
                    }
                if CollUp = noone && CollDown != noone { //Aşağıdan sıkıştık
                    move_outside_solid(90,64);
                    }
                }
            }
        MagicalInteraction = -1;
        if Focus = "Character" {
            MovementPermission = true;
            JumpPermission = true;
            }
        }
        
    MagicalSight = false;
    image_blend = c_white;
    alarm[4] = MagicalSightCooldown;
    with(obj_Environment)  {
        if object_index = obj_Plant || object_index = obj_MagicalPlant then event_user(0);
        else image_blend = c_white;
        }
    with(obj_Geyser) image_blend = c_white;
    with(obj_Checkpoint) image_blend = c_white;
    with(obj_PlatformTiming) image_blend = c_white;
    with(obj_PlatformTiming2) image_blend = c_white;
    with(obj_ZodaxSign) image_blend = c_white;
    var Tiles = tile_get_ids();
    for(var i = 0; i < array_length_1d(Tiles); i++)  {
        var tt = tile_get_background(Tiles[i]);
        if tt = ts_PlatformsBlue then tile_set_background(Tiles[i],ts_Platforms);
        else if tt = ts_LiquidBlue then tile_set_background(Tiles[i],ts_Liquid);
        }
    scr_SoulStones(false);
}
