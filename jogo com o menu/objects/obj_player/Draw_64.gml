 var largura = 200;
var altura = 20;

var porcentagem = hp_anim / max_hp;


draw_set_color(c_red);
draw_rectangle(20, 20, 20 + largura, 20 + altura, false);


draw_set_color(c_lime);
draw_rectangle(
    20,
    20,
    20 + (largura * porcentagem),
    20 + altura,
    false
);




draw_set_color(c_white);

// Inventario
var txtPistol = "PISTOL";
var txtSword = "SWORD";
var txtHeal = "Cura: " + string(quantity_heal);

var x_ = display_get_gui_width() - 16;
var y_ = display_get_gui_height() - 16;

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

// PISTOL
if (current_weapon == Weapon.FIREBALL)
    draw_set_font(fnt_gui_big);
else
    draw_set_font(fnt_gui);

draw_text(x_, y_ - 70, txtPistol);

// SWORD
if (current_weapon == Weapon.SWORD)
    draw_set_font(fnt_gui_big);
else
    draw_set_font(fnt_gui);

draw_text(x_, y_ - 40, txtSword);

// HEAL
draw_set_font(fnt_gui);
draw_text(x_, y_, txtHeal);