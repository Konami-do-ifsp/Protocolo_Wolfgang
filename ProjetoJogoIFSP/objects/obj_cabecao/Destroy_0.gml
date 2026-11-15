event_inherited();

if (object_index == obj_cabecao)
{
    global.cabecao_normal_morto = true;

    var _spawn_x = x;
    var _spawn_y = y;

    if (instance_exists(obj_ponto_cabecao_hard))
    {
        _spawn_x = obj_ponto_cabecao_hard.x;
        _spawn_y = obj_ponto_cabecao_hard.y;
    }

    instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_cabecao_hard);
}
else if (object_index == obj_cabecao_hard)
{
    global.cabecao_hard_morto = true;
}