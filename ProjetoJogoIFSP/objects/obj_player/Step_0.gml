if (global.hitstop > 0) exit;     
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
				audio_play_sound(snd_sword_slash, 1, false);
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


hspd += kb_x;
vspd += kb_y;

kb_x = lerp(kb_x, 0, 0.2);
kb_y = lerp(kb_y, 0, 0.2);
if (abs(kb_x) < 0.1) kb_x = 0;
if (abs(kb_y) < 0.1) kb_y = 0;

var _colidindo = function(_check_x, _check_y) {
    for (var _i = 0; _i < array_length(alvos_colisao); _i++) {
        if (place_meeting(_check_x, _check_y, alvos_colisao[_i])) return true;
    }
    return false;
}


if (_colidindo(x + hspd, y) && _input_y == 0) {
    for (var i = 1; i <= 32; i++) { 
        if (!_colidindo(x + hspd, y - i)) { y -= 1; break; }
        if (!_colidindo(x + hspd, y + i)) { y += 1; break; }
    }
}

if (_colidindo(x + hspd, y)) {
    while (!_colidindo(x + sign(hspd), y)) {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;


if (_colidindo(x, y + vspd) && _input_x == 0) {
    for (var i = 1; i <= 32; i++) { 
        if (!_colidindo(x - i, y + vspd)) { x -= 1; break; }
        if (!_colidindo(x + i, y + vspd)) { x += 1; break; }
    }
}

if (_colidindo(x, y + vspd)) {
    while (!_colidindo(x, y + sign(vspd))) {
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

        
        p.x += irandom_range(-2, 2);
        p.y += irandom_range(-2, 2);

        dust_timer = 7; // quanto menor mais particula tem
    }
}
else
{
    dust_timer = 0;
}



