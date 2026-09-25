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
	var len = point_distance(0, 0, h, v);


  

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

function state_explode()
{
    
    if (!exploding)
    {
        exploding = true;
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