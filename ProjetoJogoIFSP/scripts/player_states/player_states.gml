function animation_end()
{
    var _spd = sprite_get_speed(sprite_index);
    if (sprite_get_speed_type(sprite_index) != spritespeed_framespergameframe) {
        _spd = _spd / game_get_speed(gamespeed_fps);
    }
    return (image_index + _spd * image_speed >= image_number);
}

function get_facing_angle()
{
    if (dir == "back")  return 90;
    if (dir == "front") return 270;
    return (image_xscale >= 0) ? 0 : 180;
}

function state_idle()
{
    var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

    if (h != 0 || v != 0)
    {
        state = state_walk;
        return;
    }

    if (dir == "front") sprite_index = spr_player_idle_front;
    if (dir == "back")  sprite_index = spr_player_idle_back;
    if (dir == "side")  sprite_index = spr_player_idle_side;
}

function state_walk()
{
    var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

    if (abs(v) > abs(h))
    {
        if (v > 0) dir = "front";
        else if (v < 0) dir = "back";
    }
    else if (h != 0)
    {
        dir = "side";
        image_xscale = sign(h);
    }

    if (dir == "front") sprite_index = spr_player_walk_front;
    if (dir == "back")  sprite_index = spr_player_walk_back;
    if (dir == "side")  sprite_index = spr_player_walk_side;

    if (h == 0 && v == 0)
    {
        state = state_idle;
        return;
    }
}

function start_attack()
{
    sword_ang = get_facing_angle();

    if (dir == "front") sprite_index = spr_batendo_front;
    if (dir == "back")  sprite_index = spr_batendo_back;
    if (dir == "side")  sprite_index = spr_batendo_side;

    image_index = 0;
    image_speed = 1;
    sword_criada = false;
    attacking = true;
    state = state_attack;
}

function state_attack()
{
    if (current_weapon == Weapon.SWORD && !sword_criada && image_index >= sword_frame) {
        sword_criada = true;

        var _dist = 24;
        var _off_y = (dir == "side") ? 10 : 0;

        var s = instance_create_layer(
            x + lengthdir_x(_dist, sword_ang),
            y + lengthdir_y(_dist, sword_ang) + _off_y,
            "Instances",
            obj_sword
        );
        s.dir = sword_ang;
        s.image_angle = sword_ang;
        s.owner = id;
        s.dist = _dist;
        audio_play_sound(snd_sword_slash, 1, false);
    }

    if (animation_end()) {
        attacking = false;
        state = state_idle;
    }
}

function state_explode()
{
    if (!exploding)
    {
        exploding = true;
        attacking = false;
        sprite_index = spr_player_explode;
        image_index = 0;
        image_speed = 1;
        spd = 0;
    }

    if (image_index >= image_number - 1)
    {
        image_index = image_number - 1;
        image_alpha = 0;
        image_speed = 0;
    }
}