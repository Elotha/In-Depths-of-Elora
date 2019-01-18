///Sound Control

{
    exit;
    if sprite_index = spr_CharacterRun then scr_sound_effect(17,snd_FootStep,RUN_STEP);
    else step_count[RUN_STEP] = 0;
}
