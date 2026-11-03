if (keyboard_check_pressed(ord("W")))
{
    opcao--;
}

if (keyboard_check_pressed(ord("S")))
{
    opcao++;
}

opcao = clamp(opcao, 0, 1);

// Animação
if (opcao == 0)
{
    escala_reiniciar = lerp(escala_reiniciar, 1.2, 0.2);
}
else
{
    escala_reiniciar = lerp(escala_reiniciar, 1, 0.2);
}

if (opcao == 1)
{
    escala_sair = lerp(escala_sair, 1.2, 0.2);
}
else
{
    escala_sair = lerp(escala_sair, 1, 0.2);
}

// Confirmar
if (keyboard_check_pressed(vk_enter))
{
    switch (opcao)
    {
        case 0:
            room_goto(Room1);
        break;

        case 1:
            game_end();
        break;
    }
}