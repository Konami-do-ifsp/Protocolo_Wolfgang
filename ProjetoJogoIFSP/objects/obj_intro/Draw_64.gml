draw_set_font(fnt_dialogo)
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text_ext(display_get_gui_width() / 2, display_get_gui_height() / 2, display_text, 24, display_get_gui_width() - 200);
draw_set_halign(fa_left);