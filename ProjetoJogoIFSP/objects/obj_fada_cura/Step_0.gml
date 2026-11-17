if (global.hitstop > 0) exit;

if (!saindo && (!instance_exists(alvo) || !alvo.curando)) saindo = true;

if (!saindo)
{
    x = lerp(x, alvo.x + off_x, 0.15);
    y = lerp(y, alvo.y + off_y + sin(current_time * 0.008) * 3, 0.15);
}
else
{
    y -= 1.5;
    image_alpha -= 0.05;
    if (image_alpha <= 0) instance_destroy();
}