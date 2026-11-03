enum Weapon {
    FIREBALL,
    SWORD
}

hspd = 0;
vspd = 0;
spdForever = 1.2;
spd = 2;
max_hp = 10;
hp = max_hp;
dir = "front";
exploding = false;
can_attack = true;
hp_draw = hp;
hp_anim = hp;
hp_old = max_hp;
flash_timer = 0;
invencible = false;
inv_timer = 0;
dust_timer = 0;
canPlayDeathSound = true;
current_weapon = Weapon.FIREBALL;
quantity_heal = 0;
ja_toco_som_espada = false;
alvos_colisao = [obj_collision];
kb_x = 0;
kb_y = 0;

slide_max = 16;

attacking = false;
sword_ang = 0;
sword_criada = false;
sword_frame = 2;

colidindo = function(_x, _y) {
    for (var i = 0; i < array_length(alvos_colisao); i++) {
        if (place_meeting(_x, _y, alvos_colisao[i])) return true;
    }
    return false;
}

state = state_idle;