var _flutuar = sin(pulso * 0.8) * 3 * aura;

draw_set_alpha(0.35 * aura);
draw_set_color(c_black);
draw_ellipse(x - 30, y - 6, x + 30, y + 6, false);
draw_set_alpha(1);
draw_set_color(c_white);

if (aura > 0)
{
    gpu_set_blendmode(bm_add);

    var _tam1 = 1.08 + sin(pulso) * 0.04;
    draw_sprite_ext(sprite_index, image_index, x, y + _flutuar, image_xscale * _tam1, image_yscale * _tam1, 0, c_red, 0.35 * aura);

    var _tam2 = 1.18 + sin(pulso * 1.3) * 0.05;
    draw_sprite_ext(sprite_index, image_index, x, y + _flutuar, image_xscale * _tam2, image_yscale * _tam2, 0, make_color_rgb(120, 0, 40), 0.2 * aura);

    gpu_set_blendmode(bm_normal);
}

draw_sprite_ext(sprite_index, image_index, x, y + _flutuar, image_xscale, image_yscale, 0, image_blend, image_alpha);