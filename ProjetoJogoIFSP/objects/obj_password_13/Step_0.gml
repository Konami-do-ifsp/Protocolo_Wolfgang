if (shake > 0) shake--;

switch (state)
{
    case "input":
        // Navegar entre os dígitos
        if (keyboard_check_pressed(vk_left))  selected = (selected + 3) mod 4;
        if (keyboard_check_pressed(vk_right)) selected = (selected + 1) mod 4;

        // Girar o dígito selecionado
        if (keyboard_check_pressed(vk_up))   digits[selected] = (digits[selected] + 1) mod 10;
        if (keyboard_check_pressed(vk_down)) digits[selected] = (digits[selected] + 9) mod 10;

        // Digitar direto pelo teclado
        for (var n = 0; n <= 9; n++)
        {
            if (keyboard_check_pressed(ord(string(n))))
            {
                digits[selected] = n;
                selected = min(selected + 1, 3);
            }
        }

        // Sair
        if (keyboard_check_pressed(vk_escape)) instance_destroy();

        // Confirmar
        if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
        {
            var _ok = true;
            for (var i = 0; i < 4; i++)
            {
                if (digits[i] != code_correct[i]) _ok = false;
            }

            if (_ok)
            {
                state = "success";
                timer = 60;
            }
            else
            {
                state = "wrong";
                timer = 40;
                shake = 12;
            }
        }
    break;

    case "wrong":
        timer--;
        if (timer <= 0)
        {
            digits = [0, 0, 0, 0];
            selected = 0;
            state = "input";
        }
    break;

    case "success":
    timer--;

    if (timer <= 0)
    {
        if (instance_exists(door))
        {
            // Guarda a posição e a profundidade da porta antiga
            var _x = door.x;
            var _y = door.y;
            var _depth = door.depth;

            // Destrói a porta fechada
            instance_destroy(door);

            // Cria a porta com animação no mesmo lugar
            instance_create_depth(
                _x,
                _y,
                _depth,
                obj_porta_abrindo
            );
        }

        // Marca a porta como desbloqueada
        global.object25_unlocked = true;

        // Fecha o painel de senha
        instance_destroy();
    }
break;
}