///textbox_question_pointer(pointer)
//gets the textbox specified by the pointer
var pointer, temp_fname, temp_text_pointer;
//temp_text_pointer is how many lines to skip

pointer=argument0;

switch(pointer) {
  //YN question examples
  case 1: temp_fname="text_engine_test_final.txt"; temp_text_pointer=2; break;
  case 2: temp_fname="question_example.txt"; temp_text_pointer=2; break;
  case 3: temp_fname="text_engine_test_final.txt"; temp_text_pointer=3; break;
  case 4: temp_fname="question_example.txt"; temp_text_pointer=3; break;
  
  //Question box example
  case 5: temp_fname="text_engine_test_final.txt"; temp_text_pointer=4; break;
  case 6: temp_fname="text_engine_test_final.txt"; temp_text_pointer=5; break;
  case 7: temp_fname="text_engine_test_final.txt"; temp_text_pointer=6; break;
  case 8: temp_fname="text_engine_test_final.txt"; temp_text_pointer=7; break;
  case 9: temp_fname="text_engine_test_final.txt"; temp_text_pointer=8; break;
  case 10: temp_fname="question_example.txt"; temp_text_pointer=5; break;
  default: return (0);
}

textbox_loadbox(temp_fname, temp_text_pointer);

return (1);
