///Profile Names

{
    Profiles = -1;
    ini_open("Profiles.ini");
    Total = ini_read_real("Profiles","Total",0);
    if Total > 1 then Profiles[EnumProfiles.Current] = "CURRENT PROFILE: " + "<" + string_upper(CurrentProfile) + ">"; 
    else if Total = 1 then Profiles[EnumProfiles.Current] = "CURRENT PROFILE: " + string_upper(CurrentProfile);
    else if Total = 0 then Profiles[EnumProfiles.Current] = "CURRENT PROFILE: ";
    for (var k = 0; k < Total; k++) {
        Profile[k] = ini_read_string("Profiles",k,"");
        }
    if Total = 0 then Profile[0] = "";
    if Total > 0 {
        DeleteProfile[0] = "YES, DELETE THIS PROFILE: " + string_upper(CurrentProfile);
        DeleteProfile[1] = "NO, CANCEL IT";
        }
    Profiles[EnumProfiles.Create] = "CREATE A NEW PROFILE";
    Profiles[EnumProfiles.Delete] = "DELETE CURRENT PROFILE";
    Profiles[EnumProfiles.Back] = "BACK";
    ini_close();
}
