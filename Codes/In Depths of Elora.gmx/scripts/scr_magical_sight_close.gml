///Close Magical Sight

{
    magical_sight = false;
    image_blend = c_white;
    alarm[4] = magical_sight_cooldown;
    with(obj_Environment)
        {
        if object_index = obj_Plant || object_index = obj_MagicalPlant then event_user(0);
        else image_blend = c_white;
        }
    with(obj_Monster) image_blend = c_white;
    var tiles = tile_get_ids();
    for(var i = 0; i < array_length_1d(tiles); i++)
        {
        var tt = tile_get_background(tiles[i]);
        if tt = ts_PlatformsBlue then tile_set_background(tiles[i],ts_Platforms);
        else if tt = ts_LiquidBlue then tile_set_background(tiles[i],ts_Liquid);
        }
}
