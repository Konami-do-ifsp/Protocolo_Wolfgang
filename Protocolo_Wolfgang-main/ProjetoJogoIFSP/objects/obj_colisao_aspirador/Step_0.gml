if (!instance_exists(owner) || !owner.attacking) {
    instance_destroy();
    exit;
}

if (!iniciado) {
    iniciado = true;
    off_x = lengthdir_x(dist, dir);
    off_y = lengthdir_y(dist, dir) + ((owner.dir == "side") ? 10 : 0);
}

x = owner.x + off_x;
y = owner.y + off_y;
image_angle = dir;

if (dano_timer > 0) dano_timer--;
var _aplicar_dano = (dano_timer <= 0);

var lista = ds_list_create();
instance_place_list(x, y, obj_enemy_parent, lista, false);

for (var i = 0; i < ds_list_size(lista); i++) {
    var inimigo = lista[| i];
    if (!instance_exists(inimigo)) continue;

    var _ang = point_direction(inimigo.x, inimigo.y, owner.x, owner.y);
    var _d = point_distance(inimigo.x, inimigo.y, owner.x, owner.y);

    if (_d > distancia_minima) {
        var _px = inimigo.x + lengthdir_x(puxar_spd, _ang);
        var _py = inimigo.y + lengthdir_y(puxar_spd, _ang);

        with (inimigo) {
            if (!place_meeting(_px, y, obj_collision)) x = _px;
            if (!place_meeting(x, _py, obj_collision)) y = _py;
        }
    }

    if (_aplicar_dano && instance_exists(inimigo) && inimigo.hit_timer <= 0) {
        inimigo.take_damage(dano, _ang);
    }
}

if (_aplicar_dano && ds_list_size(lista) > 0) {
    dano_timer = dano_intervalo;
}

ds_list_destroy(lista);

for (var k = 0; k < array_length(alvos_destruir); k++) {
    var _l = ds_list_create();
    instance_place_list(x, y, alvos_destruir[k], _l, false);

    for (var j = 0; j < ds_list_size(_l); j++) {
        var _inst = _l[| j];
        if (instance_exists(_inst)) instance_destroy(_inst);
    }

    ds_list_destroy(_l);
}