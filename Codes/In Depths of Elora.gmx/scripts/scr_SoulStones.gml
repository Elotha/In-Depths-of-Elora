///Soul Stones

//argument0: Magical Sight açıldı mı?

{
    if argument0 {
        with(obj_Monster) {
            visible = false;
            if object_index = obj_Palpus then continue;
            SoulStone = instance_create(x,y,obj_SoulStone);
            SoulStone.MonsterID = id;
            }
        }
    else {
        destroy(obj_SoulStone);
        with(obj_Monster) {
            visible = true;
            SoulStone = -1;
            }
        }
}
