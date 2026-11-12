if (tempo > 0) { tempo--; exit; }

if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_escape) || mouse_check_button_pressed(mb_left))
{
    instance_destroy();
}