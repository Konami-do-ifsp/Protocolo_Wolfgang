 if (!active)
    exit;


if (!text_finished)
{
    char_index += text_speed;

    if (char_index >= string_length(full_text))
    {
        char_index = string_length(full_text);
        text_finished = true;
    }

    display_text = string_copy(full_text, 1, char_index);
}


var _advance_pressed = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);

if (wait_release)
{
    if (!keyboard_check(ord("E")))
    {
        wait_release = false;
    }
    exit;
}

if (_advance_pressed)
{
    if (!text_finished)
    {
        char_index = string_length(full_text);
        display_text = full_text;
        text_finished = true;
    }
    else
    {
        advance();
    }
}