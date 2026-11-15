if (global.hitstop > 0) exit;

if (flash_timer > 0)
{
    flash_timer--;

    if ((flash_timer div 3) mod 2 == 0)
        image_blend = c_red;
    else
        image_blend = c_white;
}
else
{
    image_blend = c_white;
}

if (stun > 0) stun--;
if (squash > 0) squash = max(0, squash - 0.1);

moving = (point_distance(0, 0, mv_x, mv_y) > 0.3);
walk_t += moving ? 0.35 : 0.12;