enum Weapon {
    ASPIRADOR,
    SWORD
}
interact_targets = [obj_npc_parent, Object25, obj_aspirador_preso, obj_computador];
if (!variable_global_exists("item_step")) global.item_step = 0;  
if (!variable_global_exists("item_order")) global.item_order = [cpu, ssd, RAm, Placa_mae];

x_shake = 0;
pickup_idx = 0;
global.item_order = [cpu, ssd, RAm, Placa_mae];
pickup_sprites    = [spr_pegar_cpu, spr_pegar_ssd, spr_pegar_ram, spr_completado_itens];

array_push(interact_targets, cpu, ssd, RAm, Placa_mae);
interact_range = 64; 
float_timer = 0;
current_weapon = Weapon.SWORD;
aspirador_frame = 2;

hspd = 0;
vspd = 0;
spdForever = 1.2;
spd = 5;
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
current_weapon = Weapon.ASPIRADOR;
quantity_heal = 0;
ja_toco_som_espada = false;
alvos_colisao = [obj_collision,obj_mateus,Object8, Object5, Object4, Object12, Object10, Object13, Object14, Object18, Object19, Object20, obj_aspirador_preso, Object9, Object25];
kb_x = 0;
kb_y = 0;
som_aspirador = -1;
pull_target_x = 0;
pull_target_y = 0;
pull_walk_spd = 3;     
pull_offset_x = 0;     
pull_offset_y = 0;
pull_phase = 0;
pull_timer = 0;
pull_flash = 0;
puxado = noone;
pull_give_frame = 6;   
pull_hold = 40;        
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