///textbox_create(fname, pointer, can skip)
var temp_textbox=instance_create(0,0,obj_textbox);

with (temp_textbox) {
  file_name=              argument[0];
  start_pointer=          argument[1];
  textbox_skip_possible=  argument[2];
  event_user(0);
}

return temp_textbox;
