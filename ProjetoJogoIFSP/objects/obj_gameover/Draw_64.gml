draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Título
draw_set_font(fnt_gui_big);

draw_text(
    display_get_gui_width() / 2,
    120,
    "GAME OVER"
);


// Reiniciar
if (opcao == 0)
{
    draw_set_font(fnt_gui_big);
    draw_text(
        display_get_gui_width() / 2,
        300,
        "> REINICIAR <"
    );
}
else
{
    draw_set_font(fnt_gui);
    draw_text(
        display_get_gui_width() / 2,
        300,
        "REINICIAR"
    );
}


// Sair
if (opcao == 1)
{
    draw_set_font(fnt_gui_big);
    draw_text(
        display_get_gui_width() / 2,
        360,
        "> SAIR <"
    );
}
else
{
    draw_set_font(fnt_gui);
    draw_text(
        display_get_gui_width() / 2,
        360,
        "SAIR"
    );
}