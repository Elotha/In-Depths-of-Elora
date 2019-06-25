///Close Journal

{
    with(obj_Journal) {
        if global.Focus = "Journal" && JournalDir != -1 && RollDir = 0 {
            JournalDir = -1;
            }
        }
}
