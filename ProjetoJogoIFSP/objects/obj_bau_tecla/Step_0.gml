var _sem_inimigos = !instance_exists(obj_bat)
    && !instance_exists(obj_tvzinha)
    && !instance_exists(obj_cabecao)
    && !instance_exists(obj_celular);


if (!abrindo && !_sem_inimigos) exit;

event_inherited();