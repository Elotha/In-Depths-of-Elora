///Close Magical Sight

{
    MagicalSight = false;
    image_blend = c_white;
    alarm[4] = MagicalSightCooldown;
    with(obj_Environment)  {
        if object_index = obj_Plant || object_index = obj_MagicalPlant then event_user(0);
        else image_blend = c_white;
        }
    with(obj_Monster) image_blend = c_white;
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
}
