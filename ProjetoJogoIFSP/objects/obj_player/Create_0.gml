 state = state_idle;
hspd = 0;
vspd = 0;
spdForever =1.2;
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
enum Weapon {
    FIREBALL,
	SWORD

}
quantity_heal = 0;
ja_toco_som_espada = false;
alvos_colisao = [obj_collision];
kb_x = 0;
kb_y = 0;