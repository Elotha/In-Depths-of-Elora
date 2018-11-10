///textbox_loadbox(fname, pointer)
//loads variables vital to the textbox's functions
var temp_fname, temp_pointer, temp_line, temp_text, file, loop_end;

temp_fname=   argument0;
temp_pointer= argument1;
temp_line=    textbox_find_pointer_line(temp_fname, temp_pointer);
temp_text=    "";


text_queue=ds_queue_create(); //queue for loading into the array
file=file_text_open_read(temp_fname); //reading text files
repeat(temp_line) {
  file_text_readln(file);
}
loop_end=0;
while (!(string_count("[E:",temp_text)>0 || file_text_eof(file))) { //keep reading lines until an [E] command is read or end of file is reached
  temp_text=file_text_read_string(file);
  ds_queue_enqueue(text_queue,temp_text);
  file_text_readln(file);
}
file_text_close(file);

total_boxes=ds_queue_size(text_queue)-1; //for checking array sizes
for (i=0; i<total_boxes+1; i++) { //inits the input text array for bug prevention
  input_text[i]=ds_queue_dequeue(text_queue);
}
ds_queue_destroy(text_queue); //free the data structure

cmd_data_queue=ds_queue_create();
cmd_pos_queue=ds_queue_create();
for (i=0; i<total_boxes+1; i++) { //remove CMDs from display text
  edited_text[i]=textbox_cmd_delete(input_text[i]);
}
textbox_cmd_load(input_text[current_text]); //parses the current text line for commands, then loads these into the respective queues
next_cmd_pos=ds_queue_head(cmd_pos_queue);
output_text=string_copy(edited_text[current_text],1,current_chr); //sets the final text to be outputted
