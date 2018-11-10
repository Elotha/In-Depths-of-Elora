///Death Alpha

{
    if image_alpha > 0
        {
        image_alpha -= 0.05;
        alarm[0] = 2;
        }
    else instance_destroy();
}
