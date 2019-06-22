///Sound Control

{
    exit;
    if sprite_index = spr_CharacterRun then scr_SoundEffect(17,snd_FootStep,RUN_STEP);
    else StepCount[RUN_STEP] = 0;
}
