///System Objects

//argument0: Oyuna başladıysak "Create", Settings için geri döndüysek "Suspend", Settings ile işimiz bittiyse "Reactivate", Menüye tamamen döndüysek "Delete"

{
    switch(argument0) {
        case "Create": //Create Every System Object
            create_only_one(0,0,obj_System);
            create_only_one(0,0,obj_Background);
            create_only_one(0,0,obj_Camera);
            create_only_one(0,0,obj_Light);
            create_only_one(0,0,obj_HUD);
            create_only_one(0,0,obj_LightBugCreator);
            break;
        
        case "Suspend": //Objeleri askıya al
            scr_Clear();
            instance_deactivate_object(obj_HUD);
            instance_deactivate_object(obj_Camera);
            instance_deactivate_object(obj_Background);
            instance_deactivate_object(obj_System);
            instance_deactivate_object(obj_LightBugCreator);
            instance_deactivate_object(obj_CharacterLight);
            instance_deactivate_object(obj_Light);
            break;
            
        case "Reactivate": //Askıya alınmış objeleri aktive et
            instance_activate_object(obj_HUD);
            instance_activate_object(obj_Camera);
            instance_activate_object(obj_Background);
            instance_activate_object(obj_System);
            instance_activate_object(obj_LightBugCreator);
            instance_activate_object(obj_CharacterLight);
            instance_activate_object(obj_Light);
            break;
            
        case "Destroy": //Sistem objelerini yok et
            scr_Clear();
            destroy(obj_HUD);
            destroy(obj_Camera);
            destroy(obj_Background);
            destroy(obj_System);
            destroy(obj_LightBugCreator);
            destroy(obj_CharacterLight);
            destroy(obj_Light);
            break;
        }
}
