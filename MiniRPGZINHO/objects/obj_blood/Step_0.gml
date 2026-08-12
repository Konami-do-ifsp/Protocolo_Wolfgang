x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);

spd *= 0.95;

y += grav;

life--;

if (life <= 0)
{
    instance_destroy();
}