///Magical Jump

{
    if !magical_sight then return 0;
    var magical_instance, count;
    count = 0;
    magical_instance[0] = collision_rectangle(x-12,y,x+12,y+64,obj_Monster,true,true);
    magical_instance[1] = collision_rectangle(x-12,y,x+12,y+64,obj_Checkpoint,true,true);
    magical_instance[2] = collision_rectangle(x-12,y,x+12,y+64,obj_SpikeFlower,true,true);
    magical_instance[3] = collision_rectangle(x-12,y,x+12,y+64,obj_ZodaxSign,true,true);
    magical_instance[4] = collision_rectangle(x-12,y,x+12,y+64,obj_Plant,true,true);
    magical_instance[5] = collision_rectangle(x-12,y,x+12,y+64,obj_MagicalPlant,true,true);
    
    for(var i = 0; i < array_length_1d(magical_instance); i++)
        {
        if magical_instance[i] != noone then count++;
        }
    return count;
}
