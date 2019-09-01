///Magical Jump

{
    if !MagicalSight then return 0;
    var MagicalInstance, Count;
    Count = 0;
    MagicalInstance[0] = collision_rectangle(x-12,y,x+12,y+64,obj_Monster,true,true);
    MagicalInstance[1] = collision_rectangle(x-12,y,x+12,y+64,obj_Checkpoint,true,true);
    MagicalInstance[2] = collision_rectangle(x-12,y,x+12,y+64,obj_SpikeFlower,true,true);
    MagicalInstance[3] = collision_rectangle(x-12,y,x+12,y+64,obj_ZodaxBush,true,true);
    MagicalInstance[4] = collision_rectangle(x-12,y,x+12,y+64,obj_Plant,true,true);
    MagicalInstance[5] = collision_rectangle(x-12,y,x+12,y+64,obj_MagicalPlant,true,true);
    
    for(var i = 0; i < array_length_1d(MagicalInstance); i++) {
        if MagicalInstance[i] != noone then Count++;
        }
    return Count;
}
