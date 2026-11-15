enum Weapon {
    ASPIRADOR,
    SWORD
}
inv_sel = 0;
inv_off = 0;
inv_last_w = -1;
interact_targets = [obj_npc_parent,obj_pc_quebrado,obj_luk_final,obj_bilhete_chao_itens, Object25, obj_bilhete_chao_itens, obj_aspirador_preso,obj_local_construcao, obj_bau_parent, obj_porta_dungeon1, cpu, ssd, RAm, Placa_mae];
if (!variable_global_exists("item_step")) global.item_step = 0;  
if (!variable_global_exists("item_order")) global.item_order = [cpu, ssd, RAm, Placa_mae];

x_shake = 0;
pickup_idx = 0;

pickup_sprites    = [spr_pegar_cpu, spr_pegar_ssd, spr_pegar_ram, spr_completado_itens];
bag_px = 4;

interact_range = 40; 
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
alvos_colisao = [obj_luk_final,obj_porta_dungeon_turing,obj_pc_quebrado,obj_capsula,Object34,obj_npc_parent,obj_alan,Object36,Object35,Object26, Object37, obj_bau_parent, Mesa_do_lucas,obj_collision,obj_porta_dungeon1,obj_mateus,Object8,Object11, Object5, Object4, Object12, Object10, Object13, Object14, Object18, Object19, Object20, obj_aspirador_preso, Object9, Object25];
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

if (!variable_global_exists("bag")) global.bag = [];
bag_sel = 0;
bag_off = 0;
bag_last_n = array_length(global.bag);

bag_big = 80;
bag_small = 40;
bag_gap = 90;
bag_y = 70;
bag_fill = 0.8;
bag_name_on = true;

bag_slot_spr = -1;
bag_slot_sel_spr = -1;
bag_arrow_spr = -1;

if (!variable_global_exists("dmg_martelo")) global.dmg_martelo = 3;
if (!variable_global_exists("dmg_aspirador")) global.dmg_aspirador = 1;
if (!instance_exists(obj_icone_interacao)) instance_create_depth(0, 0, -10000, obj_icone_interacao);
if (!variable_global_exists("leu_bilhete")) global.leu_bilhete = false;
bilhete_cd = 0;


global.ultima_sala = room;