draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Título
draw_set_font(fnt_menu);

draw_text(
    display_get_gui_width()/2,
    120,
    "GAME OVER"
);



// Reiniciar
if (opcao == 0)
{
    draw_text_transformed(
        display_get_gui_width()/2,
        300,
        "> REINICIAR <",
        escala_reiniciar,
        escala_reiniciar,
        0
    );
}
else
{
    draw_text_transformed(
        display_get_gui_width()/2,
        300,
        "REINICIAR",
        escala_reiniciar,
        escala_reiniciar,
        0
    );
}

if (opcao == 1)
{
    draw_text_transformed(
        display_get_gui_width()/2,
        360,
        "> SAIR <",
        escala_sair,
        escala_sair,
        0
    );
}
else
{
    draw_text_transformed(
        display_get_gui_width()/2,
        360,
        "SAIR",
        escala_sair,
        escala_sair,
        0
    );
}