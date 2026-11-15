switch (fase)
{
    case 1:
        if (!obj_dialogue.active) fase = 2;
    break;

    case 2:
        flash += 0.04;
        if (flash >= 1)
        {
            flash = 1;
            image_alpha = 0;
            fase = 3;
        }
    break;

    case 3:
        flash -= 0.04;
        if (flash <= 0)
        {
            flash = 0;
            obj_dialogue.start_lines(get_dialogue("fairy_acompanha"), "fairy");
            fase = 4;
        }
    break;

    case 4:
        if (!obj_dialogue.active) instance_destroy();
    break;
}