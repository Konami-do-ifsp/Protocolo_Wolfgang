// Movimento da espada
x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);

image_angle = dir;



var lista = ds_list_create();

instance_place_list(x, y, obj_enemy_parent, lista, false);



for (var i = 0; i < ds_list_size(lista); i++)
{
    var inimigo = lista[| i];


    if (instance_exists(inimigo) && inimigo.hit_timer <= 0)
    {

        var enemy_x = inimigo.x;
        var enemy_y = inimigo.y;

       
        inimigo.take_damage(damage, dir);


       
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


      
        with (obj_camera)
        {
            shake = 0.3;
            shake_time = 2;
            shake_fade = 1;
        }


        
        if (!ja_toco_espada)
        {
            audio_play_sound(snd_hit_player, 1, false);

            ja_toco_espada = true;

            alarm[0] = 30;
        }
    }
}


ds_list_destroy(lista);