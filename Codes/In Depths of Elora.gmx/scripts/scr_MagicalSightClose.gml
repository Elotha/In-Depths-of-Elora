///Close Magical Sight

{
    scr_MagicalInteractionComeOut();
    MagicalSight = false;
    image_blend = c_white;
    alarm[4] = MagicalSightCooldown;
    with(obj_Environment)  {
        if object_index = obj_Plant || object_index = obj_MagicalPlant then event_user(0);
        else image_blend = c_white;
        }
    with(obj_Geyser) image_blend = c_white;
    with(obj_Checkpoint) image_blend = c_white;
    with(obj_BlockTiming) image_blend = c_white;
    with(obj_BlockTiming2) image_blend = c_white;
    with(obj_BlockTimingGray) visible = true;
    with(obj_BlockTimingGray2) visible = true;
    with(obj_BlockTimingBlue) visible = false;
    with(obj_BlockTimingBlue2) visible = false;
    with(obj_PlaceholderGray) instance_change(obj_BlockGray,false);
    tile_layer_show(401);
    with(obj_BlockBlue) instance_change(obj_PlaceholderBlue,false);
    tile_layer_hide(402);
    with(obj_ZodaxBush) image_blend = c_white;
    with(obj_KeyMonster) {
        if sprite_index = spr_KeyMonsterBlue then visible = false;
        if sprite_index = spr_KeyMonsterGray then visible = true;
        }
    with(obj_KeyBlue) visible = false;
    with(obj_KeyGray) visible = true;
    with(obj_DoorGray) visible = true;
    with(obj_DoorBlue) visible = false;
    
    var Tiles = tile_get_ids();
    for(var i = 0; i < array_length_1d(Tiles); i++)  {
        var tt = tile_get_background(Tiles[i]);
        if tt = ts_PlatformsBlue then tile_set_background(Tiles[i],ts_Platforms);
        else if tt = ts_LiquidBlue then tile_set_background(Tiles[i],ts_Liquid);
        }
        
    if SoulPiece {
        destroy(SoulPieceID);
        SoulPiece = false;
        }
}
