///Death

{
    //Öldük
    if Focus != "Death" {
        global.Focus = "Death";
        Focus = global.Focus;
        sprite_index = spr_CharacterDeath;
        image_index = 0;
        image_speed = 1/6;
        obj_HUD.Lives--;
        }
}
