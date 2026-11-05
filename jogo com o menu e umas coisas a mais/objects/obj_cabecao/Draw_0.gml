// ---------- aviso do pouso ----------
if (state == "windup")
{
    // anel segue o player e pulsa
    var _pw = timer / state_dur;
    draw_set_color(c_orange);
    draw_set_alpha(0.25 + 0.25 * _pw);
    draw_circle(target_x, target_y, aoe_radius, true);
    draw_set_alpha(0.1 + 0.15 * _pw);
    draw_circle(target_x, target_y, aoe_radius, false);
}
else if (state == "jumping")
{
    var _pj = timer / state_dur;
    var _locked = (_pj >= homing_until);

    // preenchimento cresce até o impacto
    draw_set_color(_locked ? c_red : c_orange);
    draw_set_alpha(0.15 + 0.35 * _pj);
    draw_circle(target_x, target_y, aoe_radius, false);

    // anel externo fecha e chega em aoe_radius exatamente no pouso
    draw_set_alpha(0.8);
    draw_circle(target_x, target_y, aoe_radius * (1 + (1 - _pj) * 0.8), true);
}
draw_set_alpha(1);
draw_set_color(c_white);

// ---------- sombra (encolhe e some conforme sobe) ----------
var _s = 1 - 0.5 * (z / jump_height);
draw_set_alpha(0.3 * _s);
draw_set_color(c_black);
draw_ellipse(x - 16 * _s, y - 4 * _s, x + 16 * _s, y + 4 * _s, false);
draw_set_alpha(1);
draw_set_color(c_white);

// ---------- sprite com squash & stretch ----------
draw_sprite_ext(sprite_index, image_index, x, y - z, face * sx, sy, 0, image_blend, image_alpha);

// debug
// draw_circle(x, y, aggro_range, true);