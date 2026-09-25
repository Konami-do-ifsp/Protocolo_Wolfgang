if (flash_timer > 0)
{
    flash_timer--;

    if ((flash_timer div 5) mod 2 == 0)
        image_blend = c_red;
    else
        image_blend = c_white;
}
else
{
    image_blend = c_white;
}