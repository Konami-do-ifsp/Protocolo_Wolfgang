event_inherited();

hp = 60;
max_hp = 60;


t_windup        = 20;
t_air           = 34;
t_land          = 20;
t_cooldown      = 40;
t_windup_fast   = 12;   
t_cooldown_fast = 22;   


jump_range    = 200;
jump_height   = 40;
homing_speed  = 4;      
homing_until  = 0.55;   
z = 0;


body_damage = 1;
body_cd     = 0;
aoe_radius  = 48;
aoe_damage  = 2;        


state     = "idle";     
timer     = 0;
state_dur = 1;
fast      = false;
combo_left = 0;
aggro      = false;
aggro_range = 60;

start_x = x;  start_y = y;
target_x = x; target_y = y;
face = 1;
sx = 1;
sy = 1;
anim_p = 0;

hurt_player = function(_dmg, _dir)
{
    if (!instance_exists(obj_player)) return;

    with (obj_player)
    {
        if (invencible || hp <= 0 || exploding) return;

        hp -= _dmg;
        invencible = true;
        inv_timer = 60;
        flash_timer = 20;
        global.hitstop = 4;

        kb_x += lengthdir_x(4, _dir);
        kb_y += lengthdir_y(4, _dir);
    }
};

start_windup = function()
{
    state = "windup";
    timer = 0;
    state_dur = fast ? t_windup_fast : t_windup;

    
    var _d = point_direction(x, y, obj_player.x, obj_player.y);
    if (_d > 45 && _d <= 135)
        sprite_index = spr_cabecao_pulando_costa;
    else if (_d > 225 && _d <= 315)
        sprite_index = spr_cabecao_pulando_frente;
    else
    {
        sprite_index = spr_cabecao_pulando_side;
        face = (lengthdir_x(1, _d) >= 0) ? 1 : -1;
    }
    if (sprite_index != spr_cabecao_pulando_side) face = 1;

    
    var _dist = min(point_distance(x, y, obj_player.x, obj_player.y), jump_range);
    target_x = x + lengthdir_x(_dist, _d);
    target_y = y + lengthdir_y(_dist, _d);
};

start_jump = function()
{
    state = "jumping";
    timer = 0;
    state_dur = t_air;
    start_x = x;
    start_y = y;
};
hp_prev = hp;
hp_trail = hp;      
trail_timer = 0;
bar_alpha = 0;
boss_name = "CABECÃO";
land = function()
{
    state = "land";
    timer = 0;
    state_dur = t_land;
    x = target_x;
    y = target_y;
    z = 0;

    
    var _d = point_distance(x, y, obj_player.x, obj_player.y);
    if (_d <= aoe_radius)
    {
        var _dmg = ceil(aoe_damage * (1 - 0.5 * (_d / aoe_radius)));
        hurt_player(_dmg, point_direction(x, y, obj_player.x, obj_player.y));
    }

    
    if (layer_exists("Effects"))
    {
        repeat (6)
            instance_create_layer(x + irandom_range(-24, 24), y + irandom_range(-6, 6), "Effects", obj_particles_wlk);
    }
};
sem_fala = false;
intro_id = "cabecao_intro";
intro_feita = false;

if (!variable_global_exists("cabecao_normal_morto")) global.cabecao_normal_morto = false;
if (!variable_global_exists("cabecao_hard_morto")) global.cabecao_hard_morto = false;


if (object_index == obj_cabecao && global.cabecao_normal_morto)
{
    if (!global.cabecao_hard_morto)
    {
        var _spawn_x = x;
        var _spawn_y = y;

        if (instance_exists(obj_ponto_cabecao_hard))
        {
            _spawn_x = obj_ponto_cabecao_hard.x;
            _spawn_y = obj_ponto_cabecao_hard.y;
        }

        instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_cabecao_hard);
    }

    instance_destroy(id, false); 
}