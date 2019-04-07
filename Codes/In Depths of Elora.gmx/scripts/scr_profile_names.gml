///Profile Names

{
    profiles = -1;
    ini_open("profiles.ini");
    total = ini_read_real("Profiles","Total",0);
    if total > 1 then profiles[CURRENT_PROFILE] = "CURRENT PROFILE: " + "<" + current_profile + ">"; 
    else if total = 1 then profiles[CURRENT_PROFILE] = "CURRENT PROFILE: " + current_profile;
    else if total = 0 then profiles[CURRENT_PROFILE] = "CURRENT PROFILE: ";
    for (var k = 0; k < total; k++)
        {
        profile[k] = ini_read_string("Profiles",k,"");
        }
    if total = 0 then profile[0] = "";
    if total > 0
        {
        delete_profile[0] = "YES, DELETE THIS PROFILE: " + current_profile;
        delete_profile[1] = "NO, CANCEL IT";
        }
    profiles[CREATE_PROFILE] = "CREATE A NEW PROFILE";
    profiles[DELETE_PROFILE] = "DELETE CURRENT PROFILE";
    profiles[PROFILES_BACK] = "BACK";
    ini_close();
}
