///textbox_find_pointer_line(fname, pointer)
//Finds the position of the separate text boxes in the specified file
var temp_fname =        argument[0],
    temp_pointer =      argument[1],
    temp_text =         "",
    pointer_found =     0,
    lines_read =        0,
    pointers_read =     0,
    file;
    
if (temp_pointer == 0) {
  return (0);
  exit;
}

file = file_text_open_read(temp_fname);
  while (!pointer_found) {
    if (pointers_read == temp_pointer) { //kind of kludgy? I don't care. It works perfectly
      pointer_found = 1;
      break;
    }
    temp_text = file_text_read_string(file);
    file_text_readln(file);
    lines_read++;
    if (string_count("[E:", temp_text) > 0) { //how to tell if a pointer is passed
      pointers_read++;
    }
    
    if (file_text_eof(file)) { //emergency infinite loop break
        file_text_close(file);
        show_error("Error locating pointer!",1);
    }
  }
file_text_close(file);

return (lines_read);
