///Profile Names

{
    Profiles = -1;
    ini_open("Profiles.ini");
    Total = ini_read_real("Profiles","Total",0);
    if Total > 1 then Profiles[CURRENT_PROFILE] = "CURRENT PROFILE: " + "<" + string_upper(CurrentProfile) + ">"; 
    else if Total = 1 then Profiles[CURRENT_PROFILE] = "CURRENT PROFILE: " + string_upper(CurrentProfile);
    else if Total = 0 then Profiles[CURRENT_PROFILE] = "CURRENT PROFILE: ";
    for (var k = 0; k < Total; k++) {
        Profile[k] = ini_read_string("Profiles",k,"");
        }
    if Total = 0 then Profile[0] = "";
    if Total > 0 {
        DeleteProfile[0] = "YES, DELETE THIS PROFILE: " + string_upper(CurrentProfile);
        DeleteProfile[1] = "NO, CANCEL IT";
        }
    Profiles[CREATE_PROFILE] = "CREATE A NEW PROFILE";
    Profiles[DELETE_PROFILE] = "DELETE CURRENT PROFILE";
    Profiles[PROFILES_BACK] = "BACK";
    ini_close();
}
