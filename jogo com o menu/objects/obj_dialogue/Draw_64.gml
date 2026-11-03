if (!active)
    exit;

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var box_h = gui_h * 0.25;
var box_y = gui_h - box_h;
var box_x = 0;
var box_w = gui_w;

var margin = box_h * 0.08;

// fundo da caixa
draw_set_alpha(0.85);
draw_set_color(c_black);
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);
draw_set_alpha(1);

// borda
draw_set_color(c_white);
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, true);

// placeholder da foto (quadrado)
var portrait_size = box_h - margin * 2;
var portrait_x = box_x + margin;
var portrait_y = box_y + margin;

draw_set_color(c_gray);
draw_rectangle(portrait_x, portrait_y, portrait_x + portrait_size, portrait_y + portrait_size, false);
draw_set_color(c_white);
draw_rectangle(portrait_x, portrait_y, portrait_x + portrait_size, portrait_y + portrait_size, true);

// área de texto
var text_x = portrait_x + portrait_size + margin;
var text_y = portrait_y;
var text_w = (box_x + box_w) - margin - text_x;

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

// nome do NPC
draw_text(text_x, text_y, npc_name);

// texto do diálogo com quebra automática
var line_h = string_height("A") * 1.2;
var text_y_body = text_y + string_height("A") + margin * 0.5;

draw_text_ext(text_x, text_y_body, display_text, line_h, text_w);

// indicador de continuar (só quando a frase terminou de aparecer)
if (text_finished)
{
    draw_set_halign(fa_right);
    draw_set_valign(fa_bottom);
    draw_text(box_x + box_w - margin, box_y + box_h - margin, "▼");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);