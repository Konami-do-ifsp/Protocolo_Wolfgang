if (!text_finished)
{
    char_index += text_speed;

    if (char_index >= string_length(full_text))
    {
        char_index = string_length(full_text);
        text_finished = true;
    }

    display_text = string_copy(full_text, 1, char_index);
}
else
{
    espera++;

    if (espera >= tempo_espera)
    {
        pagina++;
        if (pagina >= array_length(paginas))
        {
            room_goto(cenario1);
        }
        else
        {
            full_text = paginas[pagina];
            display_text = "";
            char_index = 0;
            text_finished = false;
            espera = 0;
        }
    }
}