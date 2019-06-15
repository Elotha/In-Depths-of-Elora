///Magical Sight

{
    //Büyü görüşü modu
    if keyboard_check_pressed(ord('F')) && movement_permission && !invincibility //Açma Kapama
        {
        if !magical_sight && magical_sight_time > 10 //Kapalıysa
            {
            magical_sight = true;
            image_blend = c_aqua;
            with(obj_Environment)
                {
                if object_index = obj_Plant || object_index = obj_MagicalPlant then event_user(0);
                else image_blend = c_aqua;
                }
            with(obj_Monster) image_blend = c_aqua;
            var tiles = tile_get_ids();
            for(var i = 0; i < array_length_1d(tiles); i++)
                {
                var tt = tile_get_background(tiles[i]);
                if tt = ts_Platforms then tile_set_background(tiles[i],ts_PlatformsBlue);
                else if tt = ts_Liquid then tile_set_background(tiles[i],ts_LiquidBlue);
                }
            }
        else scr_magical_sight_close();
        }
        
    if magical_sight //Açıksa zamanı azalt
        {
        if --magical_sight_time = 0 then scr_magical_sight_close();
        }
}
