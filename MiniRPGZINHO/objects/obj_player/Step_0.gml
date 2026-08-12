    
if (hp <= 0 && !exploding)
{
    state = state_explode;
}
if(hp<=0){
	hp=0;
	can_attack = false;
	if(canPlayDeathSound){
		audio_play_sound(snd_explosion,1,false);
		alarm[1] = 40
		canPlayDeathSound = false;
	}
}	
state();
if (keyboard_check_pressed(ord("1"))){
    current_weapon = Weapon.FIREBALL;
}
if (keyboard_check_pressed(ord("2"))){
    current_weapon = Weapon.SWORD;
}

hp_anim = lerp(hp_anim, hp, 0.1);
var mx = mouse_x;
var my = mouse_y;
if(can_attack){
	var dir_mouse = point_direction(x, y, mx, my);
	switch(current_weapon){
		case Weapon.FIREBALL:
			if (mouse_check_button_pressed(mb_left))
			{
			    var b = instance_create_layer(x, y, "Instances", obj_bullet);
				audio_play_sound(snd_attack, 1, false);
			    b.dir = dir_mouse;
				can_attack = false;
				alarm[0] = 30;
				break;
			}
		 case Weapon.SWORD:
			if (mouse_check_button_pressed(mb_left))
			{
				var ang = point_direction(x, y, mouse_x, mouse_y);
				var dist = 12; 
			    var b = instance_create_layer(x + lengthdir_x(dist, ang),y + lengthdir_y(dist, ang),"Instances",obj_sword);
				audio_play_sound(snd_hit_player, 1, false);
			    b.dir = ang
				b.image_angle = ang
				can_attack = false;
				alarm[0] = 60;
			}
	}
}

if(keyboard_check(ord("R"))) room_restart();


var _input_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _input_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (_input_x != 0 || _input_y != 0) {
    var _direcao = point_direction(0, 0, _input_x, _input_y);
    hspd = lengthdir_x(spd, _direcao);
    vspd = lengthdir_y(spd, _direcao);
} else {
    hspd = 0;
    vspd = 0;
}

if ((place_meeting(x + hspd, y, obj_collision) || place_meeting(x + hspd, y, obj_collision_door)) && _input_y == 0) {
    for (var i = 1; i <= 8; i++) {
        if (!place_meeting(x + hspd, y - i, obj_collision) && !place_meeting(x + hspd, y - i, obj_collision_door)) { y -= 1; break; }
        if (!place_meeting(x + hspd, y + i, obj_collision) && !place_meeting(x + hspd, y + i, obj_collision_door)) { y += 1; break; }
    }
}

if (place_meeting(x + hspd, y, obj_collision) || place_meeting(x + hspd, y, obj_collision_door)) {
    while (!place_meeting(x + sign(hspd), y, obj_collision) && !place_meeting(x + sign(hspd), y, obj_collision_door)) {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

if ((place_meeting(x, y + vspd, obj_collision) || place_meeting(x, y + vspd, obj_collision_door)) && _input_x == 0) {
    for (var i = 1; i <= 8; i++) {
        if (!place_meeting(x - i, y + vspd, obj_collision) && !place_meeting(x - i, y + vspd, obj_collision_door)) { x -= 1; break; }
        if (!place_meeting(x + i, y + vspd, obj_collision) && !place_meeting(x + i, y + vspd, obj_collision_door)) { x += 1; break; }
    }
}

if (place_meeting(x, y + vspd, obj_collision) || place_meeting(x, y + vspd, obj_collision_door)) {
    while (!place_meeting(x, y + sign(vspd), obj_collision) && !place_meeting(x, y + sign(vspd), obj_collision_door)) {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;
if (flash_timer > 0)
{
    flash_timer--;

    if ((flash_timer div 3) mod 2 == 0)
        image_blend = c_red;
    else
        image_blend = c_white;
}
else
{
    image_blend = c_white;
}
if (invencible)
{
    inv_timer--;

    if (inv_timer <= 0)
    {
        invencible = false;
    }
}
if(_input_x == -1 || _input_x == 1 || _input_y == -1 || _input_y == 1){
	if(!audio_is_playing(snd_walking)){
		audio_play_sound(snd_walking,1,true);
	}
}
else{
	if(audio_is_playing(snd_walking)){
		audio_stop_sound(snd_walking);
	}
}

if (_input_x != 0 || _input_y != 0)
{
    dust_timer--;

    if (dust_timer <= 0)
    {
        var p = instance_create_layer(x, y +5, "Effects", obj_particles_wlk);

        // Opcional: deixa a partícula um pouco espalhada
        p.x += irandom_range(-2, 2);
        p.y += irandom_range(-2, 2);

        dust_timer = 7; // Quanto menor, mais partículas
    }
}
else
{
    dust_timer = 0;
}



