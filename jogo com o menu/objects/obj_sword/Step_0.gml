// Movimento da espada
x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);

image_angle = dir;


// Lista para detectar inimigos
var lista = ds_list_create();

instance_place_list(x, y, obj_enemy_parent, lista, false);


// Percorre todos os inimigos atingidos
for (var i = 0; i < ds_list_size(lista); i++)
{
    var inimigo = lista[| i];

    // Garante que o inimigo ainda existe e pode tomar dano
    if (instance_exists(inimigo) && inimigo.hit_timer <= 0)
    {
        // 1. Guarda a posição do inimigo ANTES de dar o dano
        var enemy_x = inimigo.x;
        var enemy_y = inimigo.y;

        // 2. Aplica o dano (mesmo que ele seja destruído aqui, a posição já está salva)
        inimigo.take_damage(damage);


        // 3. Cria as partículas de sangue usando as coordenadas salvas
        for (var j = 0; j < 6; j++)
        {
            var b = instance_create_layer(
                enemy_x,
                enemy_y,
                "Instances",
                obj_blood
            );

            b.dir = dir + random_range(-30, 30);
        }


        // Screen shake
        with (obj_camera)
        {
            shake = 0.3;
            shake_time = 2;
            shake_fade = 1;
        }


        // Som do impacto
        if (!ja_toco_espada)
        {
            audio_play_sound(snd_hit_player, 1, false);

            ja_toco_espada = true;

            alarm[0] = 30;
        }
    }
}


// Destrói a lista para evitar vazamento de memória
ds_list_destroy(lista);