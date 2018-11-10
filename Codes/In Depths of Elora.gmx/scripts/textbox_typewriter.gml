///textbox_typewriter()
//activates typewriter effect
var temp_current_chr_str;

if (current_chr<string_length(edited_text[current_text])) {
  if (pause_time_to>0) { //for text pauses to function
    if (pause_time_waited==pause_time_to) { //increases the waiting time if it has not yet reached the goal
      pause_time_waited=0; //inits the pause timers
      pause_time_to=0;
    } else {
      pause_time_waited+=1; //raise the timer so it can stop
    }
  } else {
    if (waiting_time mod text_draw_speed==0) { //only progresses the text according to the text speed
      if (current_chr==next_cmd_pos && ds_queue_size(cmd_pos_queue)>0) {
        ds_queue_dequeue(cmd_pos_queue);
        textbox_cmd_execute(ds_queue_dequeue(cmd_data_queue));
        next_cmd_pos=ds_queue_head(cmd_pos_queue);
      } else {
        current_chr+=1; //advance the text by one character for the typewriter effect
        output_text=string_copy(edited_text[current_text],1,current_chr); //sets the final text to be outputted
        temp_current_chr_str=string_char_at(output_text,current_chr); //to save CPU calling the check a few times
        line_chr[current_line]+=1; //for any equations involving how many characters are in a specific line
        line_text[current_line]+=temp_current_chr_str;//string_char_at(output_text,current_chr);
        if (temp_current_chr_str=="#") { //checks for a newline, and changes current_line thusly
          current_line+=1;
        }
        if (drawing_color==1) {
          current_color_chr_end[current_colors-1]+=1;
          color_text[current_colors-1]=string_copy(output_text,current_color_chr_start[current_colors-1],current_color_chr_end[current_colors-1]);
        }
        waiting_time=1; //resets time for waiting
        if (!textbox_skip) {
          textbox_voice_play(text_voice,text_draw_speed);
        }
      }
    } else {
      waiting_time+=1; //for the previous modulo calculation and modifying text speed
    }
  }
  //this next block of code executes any commands that may lie after the main text
  while (current_chr==string_length(edited_text[current_text]) && ds_queue_size(cmd_pos_queue)>0) {
    ds_queue_dequeue(cmd_pos_queue);
    textbox_cmd_execute(ds_queue_dequeue(cmd_data_queue));
    next_cmd_pos=ds_queue_head(cmd_pos_queue);
  }
} else { //if the text is finished drawing, we still want to do a couple of things
  if (textbox_arrow_draw==0 && (textbox_question_enabled==0 && textbox_vnquestion_enabled==0)) {
    textbox_arrow_draw=1; //sets the arrow so that it will be drawn, but not when there's a question
  }
}
