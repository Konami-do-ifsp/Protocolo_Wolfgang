// --- 1. MOVIMENTO DA BALA (Isso é o que faz ela andar!) ---
x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);

image_angle = dir; // Faz a imagem/sprite girar para a direção certa


// --- 2. COLISÃO COM INIMIGOS ---
var hit_enemy = instance_place(x, y, obj_enemy_parent);

if (hit_enemy != noone)
{
    var enemy_x = hit_enemy.x;
    var enemy_y = hit_enemy.y;

    // Chama a função de dano do parent
    hit_enemy.take_damage(damage, dir);

    // Partículas de Sangue
    for (var j = 0; j < 6; j++)
    {
        var b = instance_create_layer(enemy_x, enemy_y, "Instances", obj_blood);
        b.dir = dir + random_range(-30, 30);
    }

    // Camera Shake
    with (obj_camera)
    {
        shake = 0.3;
        shake_time = 2;
        shake_fade = 1;
    }

    audio_play_sound(snd_hit_player, 1, false);                
    instance_destroy();
}
// --- 3. COLISÃO COM PAREDE ---
else if (place_meeting(x, y, obj_collision))
{
    instance_destroy();
}